//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/PhoneToImport.java
//

#ifndef _ImActorModelApiPhoneToImport_H_
#define _ImActorModelApiPhoneToImport_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelApiPhoneToImport : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)name;

- (NSString *)getName;

- (jlong)getPhoneNumber;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiPhoneToImport)

FOUNDATION_EXPORT void ImActorModelApiPhoneToImport_initWithLong_withNSString_(ImActorModelApiPhoneToImport *self, jlong phoneNumber, NSString *name);

FOUNDATION_EXPORT ImActorModelApiPhoneToImport *new_ImActorModelApiPhoneToImport_initWithLong_withNSString_(jlong phoneNumber, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiPhoneToImport_init(ImActorModelApiPhoneToImport *self);

FOUNDATION_EXPORT ImActorModelApiPhoneToImport *new_ImActorModelApiPhoneToImport_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiPhoneToImport)

#endif // _ImActorModelApiPhoneToImport_H_