//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/updates/internal/MessagesHistoryLoaded.java
//

#ifndef _ImActorModelModulesUpdatesInternalMessagesHistoryLoaded_H_
#define _ImActorModelModulesUpdatesInternalMessagesHistoryLoaded_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/updates/internal/InternalUpdate.h"

@class AMPeer;
@class APResponseLoadHistory;

@interface ImActorModelModulesUpdatesInternalMessagesHistoryLoaded : ImActorModelModulesUpdatesInternalInternalUpdate

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
     withAPResponseLoadHistory:(APResponseLoadHistory *)loadHistory;

- (APResponseLoadHistory *)getLoadHistory;

- (AMPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesInternalMessagesHistoryLoaded)

FOUNDATION_EXPORT void ImActorModelModulesUpdatesInternalMessagesHistoryLoaded_initWithAMPeer_withAPResponseLoadHistory_(ImActorModelModulesUpdatesInternalMessagesHistoryLoaded *self, AMPeer *peer, APResponseLoadHistory *loadHistory);

FOUNDATION_EXPORT ImActorModelModulesUpdatesInternalMessagesHistoryLoaded *new_ImActorModelModulesUpdatesInternalMessagesHistoryLoaded_initWithAMPeer_withAPResponseLoadHistory_(AMPeer *peer, APResponseLoadHistory *loadHistory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesInternalMessagesHistoryLoaded)

#endif // _ImActorModelModulesUpdatesInternalMessagesHistoryLoaded_H_
