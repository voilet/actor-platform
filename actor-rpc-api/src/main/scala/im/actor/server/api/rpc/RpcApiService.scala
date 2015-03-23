package im.actor.server.api.rpc

import scala.concurrent._
import scalaz._

import akka.actor._
import akka.pattern.pipe
import scodec.bits._
import slick.driver.PostgresDriver.api._

import im.actor.api.rpc._
import im.actor.api.rpc.codecs._

object RpcApiService {

  @SerialVersionUID(1L)
  case class HandleRpcRequest(messageId: Long, requestBytes: BitVector, clientData: ClientData)

  @SerialVersionUID(1L)
  case class RpcResponse(messageId: Long, responseBytes: BitVector)

  @SerialVersionUID(1L)
  case class AttachService(service: Service)

  def props()(implicit db: Database) = Props(classOf[RpcApiService], db)
}

class RpcApiService(implicit db: Database) extends Actor with ActorLogging {

  import RpcApiService._

  private type Chain = PartialFunction[RpcRequest, ClientData => Future[RpcError \/ RpcOk]]

  implicit private val ec: ExecutionContext = context.dispatcher

  def receive = initialized(Set.empty)

  def initialized(services: Set[Service]): Receive = {
    val chain: Chain =
      if (services.isEmpty) {
        PartialFunction.empty
      } else {
        services.map(_.handleRequestPartial).reduce { (a, b) =>
          a.orElse(b)
        }
      }

    {
      case AttachService(service) =>
        context.become(initialized(services + service), discardOld = true)
      case HandleRpcRequest(messageId, requestBytes, clientData) =>
        RequestCodec.decode(requestBytes).require map {
          case Request(rpcRequest) =>
            val result =
              if (chain.isDefinedAt(rpcRequest)) {
                chain(rpcRequest)(clientData)
              } else {
                log.error("Unsupported request {}", rpcRequest)
                Future.successful(Error(CommonErrors.UnsupportedRequest))
              }

            result
              .map(_.fold(err => err, ok => ok))
              .map(result => RpcResponse(messageId, RpcResultCodec.encode(result).require))
              .pipeTo(sender())
          case _ =>
            Future.successful(CommonErrors.UnsupportedRequest)
        }
    }
  }
}