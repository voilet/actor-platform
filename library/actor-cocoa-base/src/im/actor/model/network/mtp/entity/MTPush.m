//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/MTPush.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/MTPush.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/MTPush.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "java/io/IOException.h"

@interface MTMTPush () {
 @public
  IOSByteArray *payload_;
}

@end

J2OBJC_FIELD_SETTER(MTMTPush, payload_, IOSByteArray *)


#line 8
@implementation MTMTPush


#line 14
- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTMTPush_initWithBSDataInput_(self, stream);
  return self;
}


#line 18
- (IOSByteArray *)getPayload {
  return payload_;
}


#line 23
- (jbyte)getHeader {
  return MTMTPush_HEADER;
}


#line 28
- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeProtoBytesWithByteArray:payload_ withInt:0 withInt:((IOSByteArray *) nil_chk(payload_))->size_];
}


#line 33
- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  payload_ = [((BSDataInput *) nil_chk(bs)) readProtoBytes];
}


#line 38
- (NSString *)description {
  return @"UpdateBox";
}

@end


#line 14
void MTMTPush_initWithBSDataInput_(MTMTPush *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}


#line 14
MTMTPush *new_MTMTPush_initWithBSDataInput_(BSDataInput *stream) {
  MTMTPush *self = [MTMTPush alloc];
  MTMTPush_initWithBSDataInput_(self, stream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTMTPush)