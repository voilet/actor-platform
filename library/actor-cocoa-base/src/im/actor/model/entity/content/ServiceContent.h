//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceContent.java
//

#ifndef _AMServiceContent_H_
#define _AMServiceContent_H_

#include "J2ObjC_header.h"
#include "im/actor/model/entity/content/AbsContent.h"

@class ImActorModelEntityContentInternalContentRemoteContainer;

@interface AMServiceContent : AMAbsContent

#pragma mark Public

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentContainer;

- (NSString *)getCompatText;

@end

J2OBJC_EMPTY_STATIC_INIT(AMServiceContent)

FOUNDATION_EXPORT void AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMServiceContent *self, ImActorModelEntityContentInternalContentRemoteContainer *contentContainer);

FOUNDATION_EXPORT AMServiceContent *new_AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMServiceContent)

typedef AMServiceContent ImActorModelEntityContentServiceContent;

#endif // _AMServiceContent_H_
