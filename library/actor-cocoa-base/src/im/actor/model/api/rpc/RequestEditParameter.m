//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditParameter.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestEditParameter.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestEditParameter () {
 @public
  NSString *key_;
  NSString *value_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestEditParameter, key_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestEditParameter, value_, NSString *)

@implementation ImActorModelApiRpcRequestEditParameter

+ (ImActorModelApiRpcRequestEditParameter *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestEditParameter_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value {
  ImActorModelApiRpcRequestEditParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}

- (instancetype)init {
  ImActorModelApiRpcRequestEditParameter_init(self);
  return self;
}

- (NSString *)getKey {
  return self->key_;
}

- (NSString *)getValue {
  return self->value_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->key_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->value_ = [values getStringWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->key_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->key_];
  if (self->value_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->value_];
}

- (NSString *)description {
  NSString *res = @"rpc EditParameter{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"key=", self->key_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", value=", self->value_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestEditParameter_HEADER;
}

@end

ImActorModelApiRpcRequestEditParameter *ImActorModelApiRpcRequestEditParameter_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestEditParameter_initialize();
  return ((ImActorModelApiRpcRequestEditParameter *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestEditParameter_init(), data));
}

void ImActorModelApiRpcRequestEditParameter_initWithNSString_withNSString_(ImActorModelApiRpcRequestEditParameter *self, NSString *key, NSString *value) {
  (void) ImActorModelNetworkParserRequest_init(self);
  self->key_ = key;
  self->value_ = value;
}

ImActorModelApiRpcRequestEditParameter *new_ImActorModelApiRpcRequestEditParameter_initWithNSString_withNSString_(NSString *key, NSString *value) {
  ImActorModelApiRpcRequestEditParameter *self = [ImActorModelApiRpcRequestEditParameter alloc];
  ImActorModelApiRpcRequestEditParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}

void ImActorModelApiRpcRequestEditParameter_init(ImActorModelApiRpcRequestEditParameter *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}

ImActorModelApiRpcRequestEditParameter *new_ImActorModelApiRpcRequestEditParameter_init() {
  ImActorModelApiRpcRequestEditParameter *self = [ImActorModelApiRpcRequestEditParameter alloc];
  ImActorModelApiRpcRequestEditParameter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestEditParameter)