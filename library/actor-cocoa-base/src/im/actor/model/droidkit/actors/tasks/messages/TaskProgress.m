//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/tasks/messages/TaskProgress.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/tasks/messages/TaskProgress.h"

@interface ImActorModelDroidkitActorsTasksMessagesTaskProgress () {
 @public
  jint requestId_;
  id progress_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsTasksMessagesTaskProgress, progress_, id)

@implementation ImActorModelDroidkitActorsTasksMessagesTaskProgress

- (instancetype)initWithInt:(jint)requestId
                     withId:(id)progress {
  if (self = [super init]) {
    self->requestId_ = requestId;
    self->progress_ = progress;
  }
  return self;
}

- (jint)getRequestId {
  return requestId_;
}

- (id)getProgress {
  return progress_;
}

- (NSString *)description {
  return JreStrcat("$IC", @"TaskProgress{requestId=", requestId_, '}');
}

- (void)copyAllFieldsTo:(ImActorModelDroidkitActorsTasksMessagesTaskProgress *)other {
  [super copyAllFieldsTo:other];
  other->requestId_ = requestId_;
  other->progress_ = progress_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsTasksMessagesTaskProgress)