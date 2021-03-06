//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateUserNameChanged.java
//

#ifndef _APUpdateUserNameChanged_H_
#define _APUpdateUserNameChanged_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APUpdateUserNameChanged_HEADER 32

@interface APUpdateUserNameChanged : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid
               withNSString:(NSString *)name;

+ (APUpdateUserNameChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getName;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateUserNameChanged)

J2OBJC_STATIC_FIELD_GETTER(APUpdateUserNameChanged, HEADER, jint)

FOUNDATION_EXPORT APUpdateUserNameChanged *APUpdateUserNameChanged_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateUserNameChanged_initWithInt_withNSString_(APUpdateUserNameChanged *self, jint uid, NSString *name);

FOUNDATION_EXPORT APUpdateUserNameChanged *new_APUpdateUserNameChanged_initWithInt_withNSString_(jint uid, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateUserNameChanged_init(APUpdateUserNameChanged *self);

FOUNDATION_EXPORT APUpdateUserNameChanged *new_APUpdateUserNameChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateUserNameChanged)

typedef APUpdateUserNameChanged ImActorModelApiUpdatesUpdateUserNameChanged;

#endif // _APUpdateUserNameChanged_H_
