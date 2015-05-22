//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ContactType.java
//

#ifndef _ImActorModelApiContactType_H_
#define _ImActorModelApiContactType_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, ImActorModelApiContactType) {
  ImActorModelApiContactType_PHONE = 0,
  ImActorModelApiContactType_EMAIL = 1,
  ImActorModelApiContactType_UNSUPPORTED_VALUE = 2,
};

@interface ImActorModelApiContactTypeEnum : JavaLangEnum < NSCopying >

#pragma mark Public

- (jint)getValue;

+ (ImActorModelApiContactTypeEnum *)parseWithInt:(jint)value;

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ImActorModelApiContactTypeEnum_values();

+ (ImActorModelApiContactTypeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT ImActorModelApiContactTypeEnum *ImActorModelApiContactTypeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ImActorModelApiContactTypeEnum)

FOUNDATION_EXPORT ImActorModelApiContactTypeEnum *ImActorModelApiContactTypeEnum_values_[];

#define ImActorModelApiContactTypeEnum_PHONE ImActorModelApiContactTypeEnum_values_[ImActorModelApiContactType_PHONE]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiContactTypeEnum, PHONE)

#define ImActorModelApiContactTypeEnum_EMAIL ImActorModelApiContactTypeEnum_values_[ImActorModelApiContactType_EMAIL]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiContactTypeEnum, EMAIL)

#define ImActorModelApiContactTypeEnum_UNSUPPORTED_VALUE ImActorModelApiContactTypeEnum_values_[ImActorModelApiContactType_UNSUPPORTED_VALUE]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiContactTypeEnum, UNSUPPORTED_VALUE)

FOUNDATION_EXPORT ImActorModelApiContactTypeEnum *ImActorModelApiContactTypeEnum_parseWithInt_(jint value);

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiContactTypeEnum)

#endif // _ImActorModelApiContactType_H_