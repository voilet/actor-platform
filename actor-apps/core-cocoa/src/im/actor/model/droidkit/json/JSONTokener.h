//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/json/JSONTokener.java
//

#ifndef _ImActorModelDroidkitJsonJSONTokener_H_
#define _ImActorModelDroidkitJsonJSONTokener_H_

#include "J2ObjC_header.h"

@class BSDataInput;
@class ImActorModelDroidkitJsonJSONException;

@interface ImActorModelDroidkitJsonJSONTokener : NSObject

#pragma mark Public

- (instancetype)initWithBSDataInput:(BSDataInput *)reader;

- (instancetype)initWithNSString:(NSString *)s;

- (void)back;

+ (jint)dehexcharWithChar:(jchar)c;

- (jboolean)end;

- (jboolean)more;

- (jchar)next;

- (jchar)nextWithChar:(jchar)c;

- (NSString *)nextWithInt:(jint)n;

- (jchar)nextClean;

- (NSString *)nextStringWithChar:(jchar)quote;

- (NSString *)nextToWithChar:(jchar)delimiter;

- (NSString *)nextToWithNSString:(NSString *)delimiters;

- (id)nextValue;

- (ImActorModelDroidkitJsonJSONException *)syntaxErrorWithNSString:(NSString *)message;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelDroidkitJsonJSONTokener)

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONTokener_initWithBSDataInput_(ImActorModelDroidkitJsonJSONTokener *self, BSDataInput *reader);

FOUNDATION_EXPORT ImActorModelDroidkitJsonJSONTokener *new_ImActorModelDroidkitJsonJSONTokener_initWithBSDataInput_(BSDataInput *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONTokener_initWithNSString_(ImActorModelDroidkitJsonJSONTokener *self, NSString *s);

FOUNDATION_EXPORT ImActorModelDroidkitJsonJSONTokener *new_ImActorModelDroidkitJsonJSONTokener_initWithNSString_(NSString *s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jint ImActorModelDroidkitJsonJSONTokener_dehexcharWithChar_(jchar c);

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelDroidkitJsonJSONTokener)

#endif // _ImActorModelDroidkitJsonJSONTokener_H_
