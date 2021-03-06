//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestMakeUserAdmin.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestMakeUserAdmin.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestMakeUserAdmin () {
 @public
  APGroupOutPeer *groupPeer_;
  APUserOutPeer *userPeer_;
}

@end

J2OBJC_FIELD_SETTER(APRequestMakeUserAdmin, groupPeer_, APGroupOutPeer *)
J2OBJC_FIELD_SETTER(APRequestMakeUserAdmin, userPeer_, APUserOutPeer *)

@implementation APRequestMakeUserAdmin

+ (APRequestMakeUserAdmin *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestMakeUserAdmin_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer
                     withAPUserOutPeer:(APUserOutPeer *)userPeer {
  APRequestMakeUserAdmin_initWithAPGroupOutPeer_withAPUserOutPeer_(self, groupPeer, userPeer);
  return self;
}

- (instancetype)init {
  APRequestMakeUserAdmin_init(self);
  return self;
}

- (APGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (APUserOutPeer *)getUserPeer {
  return self->userPeer_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APGroupOutPeer_init()];
  self->userPeer_ = [values getObjWithInt:2 withBSBserObject:new_APUserOutPeer_init()];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
  if (self->userPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeObjectWithInt:2 withBSBserObject:self->userPeer_];
}

- (NSString *)description {
  NSString *res = @"rpc MakeUserAdmin{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", userPeer=", self->userPeer_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestMakeUserAdmin_HEADER;
}

@end

APRequestMakeUserAdmin *APRequestMakeUserAdmin_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestMakeUserAdmin_initialize();
  return ((APRequestMakeUserAdmin *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestMakeUserAdmin_init(), data));
}

void APRequestMakeUserAdmin_initWithAPGroupOutPeer_withAPUserOutPeer_(APRequestMakeUserAdmin *self, APGroupOutPeer *groupPeer, APUserOutPeer *userPeer) {
  (void) APRequest_init(self);
  self->groupPeer_ = groupPeer;
  self->userPeer_ = userPeer;
}

APRequestMakeUserAdmin *new_APRequestMakeUserAdmin_initWithAPGroupOutPeer_withAPUserOutPeer_(APGroupOutPeer *groupPeer, APUserOutPeer *userPeer) {
  APRequestMakeUserAdmin *self = [APRequestMakeUserAdmin alloc];
  APRequestMakeUserAdmin_initWithAPGroupOutPeer_withAPUserOutPeer_(self, groupPeer, userPeer);
  return self;
}

void APRequestMakeUserAdmin_init(APRequestMakeUserAdmin *self) {
  (void) APRequest_init(self);
}

APRequestMakeUserAdmin *new_APRequestMakeUserAdmin_init() {
  APRequestMakeUserAdmin *self = [APRequestMakeUserAdmin alloc];
  APRequestMakeUserAdmin_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestMakeUserAdmin)
