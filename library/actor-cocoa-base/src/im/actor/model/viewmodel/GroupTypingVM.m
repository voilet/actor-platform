//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/GroupTypingVM.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/GroupTypingVM.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/viewmodel/GroupTypingVM.h"

@interface AMGroupTypingVM () {
 @public
  jint gid_;
  AMValueModel *active_;
}
@end

J2OBJC_FIELD_SETTER(AMGroupTypingVM, active_, AMValueModel *)


#line 8
@implementation AMGroupTypingVM


#line 18
- (instancetype)initWithInt:(jint)gid {
  if (self = [super init]) {
    
#line 19
    self->gid_ = gid;
    
#line 20
    self->active_ = [[AMValueModel alloc] initWithNSString:JreStrcat("$I$", @"groups.", gid, @".typing") withId:[IOSIntArray newArrayWithLength:0]];
  }
  return self;
}


#line 28
- (jint)getGid {
  
#line 29
  return gid_;
}


#line 37
- (AMValueModel *)getActive {
  
#line 38
  return active_;
}

- (void)copyAllFieldsTo:(AMGroupTypingVM *)other {
  [super copyAllFieldsTo:other];
  other->gid_ = gid_;
  other->active_ = active_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroupTypingVM)