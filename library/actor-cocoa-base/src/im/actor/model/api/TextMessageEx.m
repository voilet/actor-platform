//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/TextMessageEx.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/TextMessageEx.h"
#include "im/actor/model/api/TextMessageExUnsupported.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "java/io/IOException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation ImActorModelApiTextMessageEx

+ (ImActorModelApiTextMessageEx *)fromBytesWithInt:(jint)key
                                     withByteArray:(IOSByteArray *)content {
  return ImActorModelApiTextMessageEx_fromBytesWithInt_withByteArray_(key, content);
}

- (IOSByteArray *)buildContainer {
  BSDataOutput *res = [[BSDataOutput alloc] init];
  BSBserWriter *writer = [[BSBserWriter alloc] initWithBSDataOutput:res];
  [writer writeIntWithInt:1 withInt:[self getHeader]];
  [writer writeBytesWithInt:2 withByteArray:[self toByteArray]];
  return [res toByteArray];
}

- (instancetype)init {
  return [super init];
}

@end

ImActorModelApiTextMessageEx *ImActorModelApiTextMessageEx_fromBytesWithInt_withByteArray_(jint key, IOSByteArray *content) {
  ImActorModelApiTextMessageEx_init();
  switch (key) {
    default:
    return [[ImActorModelApiTextMessageExUnsupported alloc] initWithInt:key withByteArray:content];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiTextMessageEx)