//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/MTRpcResponse.java
//

#ifndef _MTMTRpcResponse_H_
#define _MTMTRpcResponse_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

@class BSDataInput;
@class BSDataOutput;
@class IOSByteArray;

#define MTMTRpcResponse_HEADER 4

@interface MTMTRpcResponse : MTProtoStruct

#pragma mark Public

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (jlong)getMessageId;

- (IOSByteArray *)getPayload;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTMTRpcResponse)

J2OBJC_STATIC_FIELD_GETTER(MTMTRpcResponse, HEADER, jbyte)

FOUNDATION_EXPORT void MTMTRpcResponse_initWithBSDataInput_(MTMTRpcResponse *self, BSDataInput *stream);

FOUNDATION_EXPORT MTMTRpcResponse *new_MTMTRpcResponse_initWithBSDataInput_(BSDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTMTRpcResponse)

typedef MTMTRpcResponse ImActorModelNetworkMtpEntityMTRpcResponse;

#endif // _MTMTRpcResponse_H_