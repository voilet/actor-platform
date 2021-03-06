//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/typing/TypingActor.java
//

#ifndef _ImActorModelModulesTypingTypingActor_H_
#define _ImActorModelModulesTypingTypingActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class APTypingTypeEnum;
@class DKActorRef;
@class ImActorModelModulesModules;

@interface ImActorModelModulesTypingTypingActor : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

+ (DKActorRef *)getWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor)

FOUNDATION_EXPORT DKActorRef *ImActorModelModulesTypingTypingActor_getWithImActorModelModulesModules_(ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT void ImActorModelModulesTypingTypingActor_initWithImActorModelModulesModules_(ImActorModelModulesTypingTypingActor *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesTypingTypingActor *new_ImActorModelModulesTypingTypingActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor)

@interface ImActorModelModulesTypingTypingActor_StopTyping : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)uid;

- (jboolean)isEqual:(id)o;

- (jint)getUid;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_StopTyping)

FOUNDATION_EXPORT void ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(ImActorModelModulesTypingTypingActor_StopTyping *self, jint uid);

FOUNDATION_EXPORT ImActorModelModulesTypingTypingActor_StopTyping *new_ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(jint uid) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_StopTyping)

@interface ImActorModelModulesTypingTypingActor_StopGroupTyping : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)uid;

- (jboolean)isEqual:(id)o;

- (jint)getGid;

- (jint)getUid;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_StopGroupTyping)

FOUNDATION_EXPORT void ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_(ImActorModelModulesTypingTypingActor_StopGroupTyping *self, jint gid, jint uid);

FOUNDATION_EXPORT ImActorModelModulesTypingTypingActor_StopGroupTyping *new_ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_(jint gid, jint uid) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_StopGroupTyping)

@interface ImActorModelModulesTypingTypingActor_PrivateTyping : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)uid
       withAPTypingTypeEnum:(APTypingTypeEnum *)type;

- (jboolean)isEqual:(id)o;

- (APTypingTypeEnum *)getType;

- (jint)getUid;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_PrivateTyping)

FOUNDATION_EXPORT void ImActorModelModulesTypingTypingActor_PrivateTyping_initWithInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor_PrivateTyping *self, jint uid, APTypingTypeEnum *type);

FOUNDATION_EXPORT ImActorModelModulesTypingTypingActor_PrivateTyping *new_ImActorModelModulesTypingTypingActor_PrivateTyping_initWithInt_withAPTypingTypeEnum_(jint uid, APTypingTypeEnum *type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_PrivateTyping)

@interface ImActorModelModulesTypingTypingActor_GroupTyping : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)uid
       withAPTypingTypeEnum:(APTypingTypeEnum *)type;

- (jboolean)isEqual:(id)o;

- (jint)getGid;

- (APTypingTypeEnum *)getType;

- (jint)getUid;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_GroupTyping)

FOUNDATION_EXPORT void ImActorModelModulesTypingTypingActor_GroupTyping_initWithInt_withInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor_GroupTyping *self, jint gid, jint uid, APTypingTypeEnum *type);

FOUNDATION_EXPORT ImActorModelModulesTypingTypingActor_GroupTyping *new_ImActorModelModulesTypingTypingActor_GroupTyping_initWithInt_withInt_withAPTypingTypeEnum_(jint gid, jint uid, APTypingTypeEnum *type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_GroupTyping)

#endif // _ImActorModelModulesTypingTypingActor_H_
