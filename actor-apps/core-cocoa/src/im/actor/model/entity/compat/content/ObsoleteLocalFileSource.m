//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/compat/content/ObsoleteLocalFileSource.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/compat/content/ObsoleteFileSource.h"
#include "im/actor/model/entity/compat/content/ObsoleteLocalFileSource.h"
#include "java/io/IOException.h"
#include "java/lang/UnsupportedOperationException.h"

@interface ImActorModelEntityCompatContentObsoleteLocalFileSource () {
 @public
  NSString *fileName_;
  NSString *fileDescriptor_;
  jint size_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelEntityCompatContentObsoleteLocalFileSource, fileName_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelEntityCompatContentObsoleteLocalFileSource, fileDescriptor_, NSString *)

@implementation ImActorModelEntityCompatContentObsoleteLocalFileSource

- (instancetype)initWithBSBserValues:(BSBserValues *)values {
  ImActorModelEntityCompatContentObsoleteLocalFileSource_initWithBSBserValues_(self, values);
  return self;
}

- (NSString *)getFileName {
  return fileName_;
}

- (NSString *)getFileDescriptor {
  return fileDescriptor_;
}

- (jint)getSize {
  return size_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  fileName_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:2];
  size_ = [values getIntWithInt:3];
  fileDescriptor_ = [values getStringWithInt:4];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  @throw new_JavaLangUnsupportedOperationException_init();
}

@end

void ImActorModelEntityCompatContentObsoleteLocalFileSource_initWithBSBserValues_(ImActorModelEntityCompatContentObsoleteLocalFileSource *self, BSBserValues *values) {
  (void) ImActorModelEntityCompatContentObsoleteFileSource_init(self);
  [self parseWithBSBserValues:values];
}

ImActorModelEntityCompatContentObsoleteLocalFileSource *new_ImActorModelEntityCompatContentObsoleteLocalFileSource_initWithBSBserValues_(BSBserValues *values) {
  ImActorModelEntityCompatContentObsoleteLocalFileSource *self = [ImActorModelEntityCompatContentObsoleteLocalFileSource alloc];
  ImActorModelEntityCompatContentObsoleteLocalFileSource_initWithBSBserValues_(self, values);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityCompatContentObsoleteLocalFileSource)
