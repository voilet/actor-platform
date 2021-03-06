//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/internal/LocalFastThumb.java
//

#ifndef _ImActorModelEntityContentInternalLocalFastThumb_H_
#define _ImActorModelEntityContentInternalLocalFastThumb_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class AMFastThumb;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface ImActorModelEntityContentInternalLocalFastThumb : BSBserObject

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithAMFastThumb:(AMFastThumb *)fastThumb;

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h
              withByteArray:(IOSByteArray *)image;

- (jint)getH;

- (IOSByteArray *)getImage;

- (jint)getW;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelEntityContentInternalLocalFastThumb)

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalFastThumb_initWithAMFastThumb_(ImActorModelEntityContentInternalLocalFastThumb *self, AMFastThumb *fastThumb);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalFastThumb *new_ImActorModelEntityContentInternalLocalFastThumb_initWithAMFastThumb_(AMFastThumb *fastThumb) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalFastThumb_initWithInt_withInt_withByteArray_(ImActorModelEntityContentInternalLocalFastThumb *self, jint w, jint h, IOSByteArray *image);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalFastThumb *new_ImActorModelEntityContentInternalLocalFastThumb_initWithInt_withInt_withByteArray_(jint w, jint h, IOSByteArray *image) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalFastThumb_initWithByteArray_(ImActorModelEntityContentInternalLocalFastThumb *self, IOSByteArray *data);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalFastThumb *new_ImActorModelEntityContentInternalLocalFastThumb_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntityContentInternalLocalFastThumb)

#endif // _ImActorModelEntityContentInternalLocalFastThumb_H_
