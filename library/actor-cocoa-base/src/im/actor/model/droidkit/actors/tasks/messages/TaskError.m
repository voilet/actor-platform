//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/tasks/messages/TaskError.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/tasks/messages/TaskError.h"
#include "java/lang/Throwable.h"

@interface ImActorModelDroidkitActorsTasksMessagesTaskError () {
 @public
  jint requestId_;
  JavaLangThrowable *throwable_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsTasksMessagesTaskError, throwable_, JavaLangThrowable *)

@implementation ImActorModelDroidkitActorsTasksMessagesTaskError

- (instancetype)initWithInt:(jint)requestId
      withJavaLangThrowable:(JavaLangThrowable *)throwable {
  if (self = [super init]) {
    self->requestId_ = requestId;
    self->throwable_ = throwable;
  }
  return self;
}

- (jint)getRequestId {
  return requestId_;
}

- (JavaLangThrowable *)getThrowable {
  return throwable_;
}

- (NSString *)description {
  return JreStrcat("$I$@C", @"TaskError{requestId=", requestId_, @", throwable=", throwable_, '}');
}

- (void)copyAllFieldsTo:(ImActorModelDroidkitActorsTasksMessagesTaskError *)other {
  [super copyAllFieldsTo:other];
  other->requestId_ = requestId_;
  other->throwable_ = throwable_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsTasksMessagesTaskError)