//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSubscribeFromOnline.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSubscribeFromOnline.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestSubscribeFromOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcRequestSubscribeFromOnline () {
 @public
  id<JavaUtilList> users_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSubscribeFromOnline, users_, id<JavaUtilList>)


#line 20
@implementation ImActorModelApiRpcRequestSubscribeFromOnline


#line 23
+ (ImActorModelApiRpcRequestSubscribeFromOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSubscribeFromOnline_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users {
  ImActorModelApiRpcRequestSubscribeFromOnline_initWithJavaUtilList_(self, users);
  return self;
}


#line 33
- (instancetype)init {
  ImActorModelApiRpcRequestSubscribeFromOnline_init(self);
  return self;
}


#line 37
- (id<JavaUtilList>)getUsers {
  return self->users_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_users addWithId:new_ImActorModelApiUserOutPeer_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_users];
}


#line 51
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
}


#line 56
- (NSString *)description {
  NSString *res = @"rpc SubscribeFromOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"users=", [((id<JavaUtilList>) nil_chk(self->users_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 64
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSubscribeFromOnline_HEADER;
}

@end


#line 23
ImActorModelApiRpcRequestSubscribeFromOnline *ImActorModelApiRpcRequestSubscribeFromOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSubscribeFromOnline_initialize();
  
#line 24
  return ((ImActorModelApiRpcRequestSubscribeFromOnline *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestSubscribeFromOnline_init(), data));
}


#line 29
void ImActorModelApiRpcRequestSubscribeFromOnline_initWithJavaUtilList_(ImActorModelApiRpcRequestSubscribeFromOnline *self, id<JavaUtilList> users) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 30
  self->users_ = users;
}


#line 29
ImActorModelApiRpcRequestSubscribeFromOnline *new_ImActorModelApiRpcRequestSubscribeFromOnline_initWithJavaUtilList_(id<JavaUtilList> users) {
  ImActorModelApiRpcRequestSubscribeFromOnline *self = [ImActorModelApiRpcRequestSubscribeFromOnline alloc];
  ImActorModelApiRpcRequestSubscribeFromOnline_initWithJavaUtilList_(self, users);
  return self;
}


#line 33
void ImActorModelApiRpcRequestSubscribeFromOnline_init(ImActorModelApiRpcRequestSubscribeFromOnline *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 33
ImActorModelApiRpcRequestSubscribeFromOnline *new_ImActorModelApiRpcRequestSubscribeFromOnline_init() {
  ImActorModelApiRpcRequestSubscribeFromOnline *self = [ImActorModelApiRpcRequestSubscribeFromOnline alloc];
  ImActorModelApiRpcRequestSubscribeFromOnline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSubscribeFromOnline)