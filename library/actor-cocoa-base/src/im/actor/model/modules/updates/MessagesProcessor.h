//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/MessagesProcessor.java
//

#ifndef _ImActorModelModulesUpdatesMessagesProcessor_H_
#define _ImActorModelModulesUpdatesMessagesProcessor_H_

@class AMAbsContent;
@class AMPeer;
@class IOSByteArray;
@class ImActorModelApiMessage;
@class ImActorModelApiPeer;
@class ImActorModelApiRpcResponseLoadDialogs;
@class ImActorModelApiRpcResponseLoadHistory;
@class ImActorModelModulesModules;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@interface ImActorModelModulesUpdatesMessagesProcessor : ImActorModelModulesBaseModule {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onDialogsLoadedWithImActorModelApiRpcResponseLoadDialogs:(ImActorModelApiRpcResponseLoadDialogs *)dialogsResponse;

- (void)onMessagesLoadedWithAMPeer:(AMPeer *)peer
withImActorModelApiRpcResponseLoadHistory:(ImActorModelApiRpcResponseLoadHistory *)historyResponse;

- (void)onMessageWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                 withInt:(jint)senderUid
                                withLong:(jlong)date
                                withLong:(jlong)rid
              withImActorModelApiMessage:(ImActorModelApiMessage *)content;

- (void)onEncryptedMessageWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                          withInt:(jint)senderUid
                                         withLong:(jlong)date
                                         withLong:(jlong)keyHash
                                    withByteArray:(IOSByteArray *)aesEncryptedKey
                                    withByteArray:(IOSByteArray *)message;

+ (jint)readIntWithByteArray:(IOSByteArray *)bytes
                     withInt:(jint)offset;

+ (IOSByteArray *)substringWithByteArray:(IOSByteArray *)src
                                 withInt:(jint)start
                                 withInt:(jint)len;

- (void)onMessageReadWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                    withLong:(jlong)startDate
                                    withLong:(jlong)readDate;

- (void)onMessageEncryptedReadWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                             withLong:(jlong)rid
                                             withLong:(jlong)readDate;

- (void)onMessageReceivedWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                        withLong:(jlong)startDate
                                        withLong:(jlong)receivedDate;

- (void)onMessageEncryptedReceivedWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                                 withLong:(jlong)rid
                                                 withLong:(jlong)receivedDate;

- (void)onMessageReadByMeWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                        withLong:(jlong)startDate;

- (void)onMessageEncryptedReadByMeWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                                 withLong:(jlong)rid;

- (void)onMessageDeleteWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                              withJavaUtilList:(id<JavaUtilList>)rids;

- (void)onMessageSentWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                    withLong:(jlong)rid
                                    withLong:(jlong)date;

- (void)onChatClearWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer;

- (void)onChatDeleteWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer;

- (void)onUserRegisteredWithInt:(jint)uid
                       withLong:(jlong)date;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesMessagesProcessor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jint ImActorModelModulesUpdatesMessagesProcessor_readIntWithByteArray_withInt_(IOSByteArray *bytes, jint offset);

FOUNDATION_EXPORT IOSByteArray *ImActorModelModulesUpdatesMessagesProcessor_substringWithByteArray_withInt_withInt_(IOSByteArray *src, jint start, jint len);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesMessagesProcessor)

#endif // _ImActorModelModulesUpdatesMessagesProcessor_H_