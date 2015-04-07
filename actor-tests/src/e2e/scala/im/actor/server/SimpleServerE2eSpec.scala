package im.actor.server

import java.net.InetSocketAddress

import akka.stream.ActorFlowMaterializer
import akka.testkit._
import org.specs2.matcher.ThrownExpectations
import org.specs2.specification.core.Fragments

import im.actor.api.rpc.{ RpcOk, RpcResult, Request }
import im.actor.api.rpc.auth.RequestSendAuthCode
import im.actor.api.rpc.codecs.RequestCodec
import im.actor.server.api.frontend.{ Tcp => TcpFrontend }
import im.actor.server.api.rpc.{ RpcResultCodec, RpcApiService }
import im.actor.server.api.rpc.RpcApiService.AttachService
import im.actor.server.api.rpc.service.auth.AuthServiceImpl
import im.actor.server.db.DbInit
import im.actor.server.mtproto.codecs.protocol._
import im.actor.server.mtproto.protocol._
import im.actor.server.mtproto.transport.{ MTPackage, ProtoPackage, TransportPackage }
import im.actor.server.session.Session
import im.actor.util.testing._

class SimpleServerE2eSpec extends ActorSpecification with DbInit with ThrownExpectations {
  def is =
    s2"""
    Server should
      connect and Handshake $e1
      respond to RPC request $e2
      """.stripMargin

  val serverConfig = system.settings.config
  val sqlConfig = serverConfig.getConfig("persist.sql")
  val ds = initDs(sqlConfig)

  implicit val db = initDb(ds)
  implicit val flowMaterializer = ActorFlowMaterializer()

  val rpcApiService = system.actorOf(RpcApiService.props())
  val sessionRegion = Session.startRegion(Some(Session.props(rpcApiService)))

  val authService = new AuthServiceImpl(sessionRegion)
  rpcApiService ! AttachService(authService)


  TcpFrontend.start(serverConfig)

  val remote = new InetSocketAddress("localhost", 8080)

  def e1() = {
    val client = MTProtoClient()
    client.connectAndHandshake(remote)
    client.close()
  }

  def e2() = {
    implicit val client = MTProtoClient()

    client.connectAndHandshake(remote)

    val authId = 1L
    val sessionId = 2L
    val phoneNumber = 75550000000L

    val messageId = 3L

    val requestBytes = RequestCodec.encode(Request(RequestSendAuthCode(phoneNumber, 1, "apiKey"))).require
    val mbBytes = MessageBoxCodec.encode(MessageBox(messageId, RpcRequestBox(requestBytes))).require
    val mtPackage = MTPackage(authId, sessionId, mbBytes)

    client.send(ProtoPackage(mtPackage))

    expectNewSession(sessionId, messageId)
    expectMessageAck(messageId)

    val result = receiveRpcResult(messageId)
    result must beAnInstanceOf[RpcOk]

    client.close()
  }

  private def expectMessageAck(messageId: Long)(implicit client: MTProtoClient): MessageAck = {
    val mb = receiveMessageBox()
    mb.body must beAnInstanceOf[MessageAck]

    val expectedAck = MessageAck(Vector(messageId))

    val ack = mb.body.asInstanceOf[MessageAck]
    ack must be_==(expectedAck)

    ack
  }

  private def receiveRpcResult(messageId: Long)(implicit client: MTProtoClient): RpcResult = {
    val mb = receiveMessageBox()
    mb.body must beAnInstanceOf[RpcResponseBox]

    val rspBox = mb.body.asInstanceOf[RpcResponseBox]
    rspBox.messageId must be_==(messageId)

    RpcResultCodec.decode(rspBox.bodyBytes).require.value
  }

  private def receiveMessageBox()(implicit client: MTProtoClient): MessageBox = {
    val mtp = receiveMTPackage()

    MessageBoxCodec.decode(mtp.messageBytes).require.value
  }

  private def receiveMTPackage()(implicit client: MTProtoClient): MTPackage = {
    def receive(waitMax: Long, waited: Long): Option[TransportPackage] = {
      val waitStep = 200L

      client.receiveTransportPackage() match {
        case s @ Some(_) => s
        case None =>
          if (waited >= waitMax) {
            None
          } else {
            Thread.sleep(waitStep)
            receive(waitMax, waited + waitStep)
          }
      }
    }

    val body = receive(5000, 0) match {
      case Some(TransportPackage(_, body)) => body
      case None => throw new Exception("Transport package not received")
    }

    body must beAnInstanceOf[MTPackage]
    body.asInstanceOf[MTPackage]
  }

  private def expectNewSession(sessionId: Long, messageId: Long)(implicit client: MTProtoClient): Unit = {
    val mtp = receiveMTPackage()

    val expectedNewSession = NewSession(sessionId, messageId)

    val mb = MessageBoxCodec.decode(mtp.messageBytes).require.value
    mb.body must beAnInstanceOf[NewSession]
    mb.body must be_==(expectedNewSession)
  }

  override def map(fragments: => Fragments) =
    super.map(fragments) ^ step(shutdownSystem) ^ step(closeDb())

  private def shutdownSystem(): Unit =
    TestKit.shutdownActorSystem(system)

  private def closeDb(): Unit =
    ds.close()
}