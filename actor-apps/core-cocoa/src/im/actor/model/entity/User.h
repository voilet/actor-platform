//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/User.java
//

#ifndef _AMUser_H_
#define _AMUser_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/engine/KeyValueItem.h"
#include "im/actor/model/entity/WrapperEntity.h"

@class AMAvatar;
@class AMPeer;
@class AMSexEnum;
@class APAvatar;
@class APUser;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

@interface AMUser : AMWrapperEntity < DKKeyValueItem >

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithAPUser:(APUser *)wrappedUser;

- (AMUser *)editAboutWithNSString:(NSString *)about;

- (AMUser *)editAvatarWithAPAvatar:(APAvatar *)avatar;

- (AMUser *)editLocalNameWithNSString:(NSString *)localName;

- (AMUser *)editNameWithNSString:(NSString *)name;

- (AMUser *)editNickWithNSString:(NSString *)nick;

- (NSString *)getAbout;

- (jlong)getAccessHash;

- (AMAvatar *)getAvatar;

- (jlong)getEngineId;

- (NSString *)getLocalName;

- (NSString *)getName;

- (NSString *)getNick;

- (id<JavaUtilList>)getRecords;

- (NSString *)getServerName;

- (AMSexEnum *)getSex;

- (jint)getUid;

- (jboolean)isBot;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (AMPeer *)peer;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

#pragma mark Protected

- (void)applyWrappedWithBSBserObject:(APUser *)wrapped;

- (APUser *)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(AMUser)

FOUNDATION_EXPORT void AMUser_initWithAPUser_(AMUser *self, APUser *wrappedUser);

FOUNDATION_EXPORT AMUser *new_AMUser_initWithAPUser_(APUser *wrappedUser) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMUser_initWithByteArray_(AMUser *self, IOSByteArray *data);

FOUNDATION_EXPORT AMUser *new_AMUser_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMUser)

typedef AMUser ImActorModelEntityUser;

#endif // _AMUser_H_
