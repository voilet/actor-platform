//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/viewmodel/UserPhone.java
//

#ifndef _AMUserPhone_H_
#define _AMUserPhone_H_

#include "J2ObjC_header.h"

@interface AMUserPhone : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)phone
                withNSString:(NSString *)title;

- (jboolean)isEqual:(id)o;

- (jlong)getPhone;

- (NSString *)getTitle;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(AMUserPhone)

FOUNDATION_EXPORT void AMUserPhone_initWithLong_withNSString_(AMUserPhone *self, jlong phone, NSString *title);

FOUNDATION_EXPORT AMUserPhone *new_AMUserPhone_initWithLong_withNSString_(jlong phone, NSString *title) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMUserPhone)

typedef AMUserPhone ImActorModelViewmodelUserPhone;

#endif // _AMUserPhone_H_
