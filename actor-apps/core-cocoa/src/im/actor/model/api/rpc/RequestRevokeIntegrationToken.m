//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestRevokeIntegrationToken.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestRevokeIntegrationToken.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestRevokeIntegrationToken () {
 @public
  APOutPeer *groupPeer_;
}

@end

J2OBJC_FIELD_SETTER(APRequestRevokeIntegrationToken, groupPeer_, APOutPeer *)

@implementation APRequestRevokeIntegrationToken

+ (APRequestRevokeIntegrationToken *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestRevokeIntegrationToken_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPOutPeer:(APOutPeer *)groupPeer {
  APRequestRevokeIntegrationToken_initWithAPOutPeer_(self, groupPeer);
  return self;
}

- (instancetype)init {
  APRequestRevokeIntegrationToken_init(self);
  return self;
}

- (APOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APOutPeer_init()];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
}

- (NSString *)description {
  NSString *res = @"rpc RevokeIntegrationToken{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestRevokeIntegrationToken_HEADER;
}

@end

APRequestRevokeIntegrationToken *APRequestRevokeIntegrationToken_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestRevokeIntegrationToken_initialize();
  return ((APRequestRevokeIntegrationToken *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestRevokeIntegrationToken_init(), data));
}

void APRequestRevokeIntegrationToken_initWithAPOutPeer_(APRequestRevokeIntegrationToken *self, APOutPeer *groupPeer) {
  (void) APRequest_init(self);
  self->groupPeer_ = groupPeer;
}

APRequestRevokeIntegrationToken *new_APRequestRevokeIntegrationToken_initWithAPOutPeer_(APOutPeer *groupPeer) {
  APRequestRevokeIntegrationToken *self = [APRequestRevokeIntegrationToken alloc];
  APRequestRevokeIntegrationToken_initWithAPOutPeer_(self, groupPeer);
  return self;
}

void APRequestRevokeIntegrationToken_init(APRequestRevokeIntegrationToken *self) {
  (void) APRequest_init(self);
}

APRequestRevokeIntegrationToken *new_APRequestRevokeIntegrationToken_init() {
  APRequestRevokeIntegrationToken *self = [APRequestRevokeIntegrationToken alloc];
  APRequestRevokeIntegrationToken_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestRevokeIntegrationToken)
