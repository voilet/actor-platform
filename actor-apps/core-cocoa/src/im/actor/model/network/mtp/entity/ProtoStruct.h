//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/ProtoStruct.java
//

#ifndef _MTProtoStruct_H_
#define _MTProtoStruct_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoObject.h"

@class BSDataInput;
@class BSDataOutput;

@interface MTProtoStruct : MTProtoObject

#pragma mark Public

- (MTProtoObject *)readObjectWithBSDataInput:(BSDataInput *)bs;

- (void)writeObjectWithBSDataOutput:(BSDataOutput *)bs;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (jbyte)getHeader;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTProtoStruct)

FOUNDATION_EXPORT void MTProtoStruct_initWithBSDataInput_(MTProtoStruct *self, BSDataInput *stream);

FOUNDATION_EXPORT void MTProtoStruct_init(MTProtoStruct *self);

J2OBJC_TYPE_LITERAL_HEADER(MTProtoStruct)

typedef MTProtoStruct ImActorModelNetworkMtpEntityProtoStruct;

#endif // _MTProtoStruct_H_
