//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/ContentDescription.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/ContentDescription.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/ContentDescription.h"
#include "im/actor/model/entity/ContentType.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/PhotoContent.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/model/entity/content/ServiceGroupCreated.h"
#include "im/actor/model/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/model/entity/content/ServiceGroupUserAdded.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/model/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/model/entity/content/ServiceUserRegistered.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "java/io/IOException.h"

@interface AMContentDescription () {
 @public
  AMContentTypeEnum *contentType_;
  NSString *text_;
  jint relatedUser_;
  jboolean isSilent__;
  jboolean isEncrypted_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(AMContentDescription, contentType_, AMContentTypeEnum *)
J2OBJC_FIELD_SETTER(AMContentDescription, text_, NSString *)


#line 25
@implementation AMContentDescription

+ (AMContentDescription *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMContentDescription_fromBytesWithByteArray_(data);
}

+ (AMContentDescription *)fromContentWithAMAbsContent:(AMAbsContent *)msg {
  return AMContentDescription_fromContentWithAMAbsContent_(msg);
}


#line 74
- (instancetype)initAMContentDescriptionWithAMContentTypeEnum:(AMContentTypeEnum *)contentType
                                                 withNSString:(NSString *)text
                                                      withInt:(jint)relatedUser
                                                  withBoolean:(jboolean)isSilent {
  if (self = [super init]) {
    
#line 76
    self->contentType_ = contentType;
    
#line 77
    self->text_ = text;
    
#line 78
    self->relatedUser_ = relatedUser;
    
#line 79
    self->isSilent__ = isSilent;
    
#line 80
    self->isEncrypted_ = NO;
  }
  return self;
}

- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType
                             withNSString:(NSString *)text
                                  withInt:(jint)relatedUser
                              withBoolean:(jboolean)isSilent {
  return [self initAMContentDescriptionWithAMContentTypeEnum:
#line 74
contentType withNSString:text withInt:relatedUser withBoolean:
#line 75
isSilent];
}


#line 83
- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType
                             withNSString:(NSString *)text {
  return
#line 84
  [self initAMContentDescriptionWithAMContentTypeEnum:contentType withNSString:text withInt:0 withBoolean:NO];
}


#line 87
- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType {
  return
#line 88
  [self initAMContentDescriptionWithAMContentTypeEnum:contentType withNSString:@"" withInt:0 withBoolean:NO];
}


#line 91
- (instancetype)init {
  return [super init];
}

- (AMContentTypeEnum *)getContentType {
  
#line 96
  return contentType_;
}


#line 99
- (NSString *)getText {
  
#line 100
  return text_;
}


#line 103
- (jint)getRelatedUser {
  
#line 104
  return relatedUser_;
}


#line 107
- (jboolean)isSilent {
  
#line 108
  return isSilent__;
}


#line 112
- (void)parseWithBSBserValues:(BSBserValues *)values {
  contentType_ = AMContentTypeEnum_fromValueWithInt_([((BSBserValues *) nil_chk(values)) getIntWithInt:1]);
  text_ = [values getStringWithInt:2];
  relatedUser_ = [values getIntWithInt:3];
  isSilent__ = [values getBoolWithInt:4];
  isEncrypted_ = [values getBoolWithInt:5];
}


#line 121
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 122
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:[((AMContentTypeEnum *) nil_chk(contentType_)) getValue]];
  [writer writeStringWithInt:2 withNSString:text_];
  [writer writeIntWithInt:3 withInt:relatedUser_];
  [writer writeBoolWithInt:4 withBoolean:isSilent__];
  [writer writeBoolWithInt:5 withBoolean:isEncrypted_];
}

- (void)copyAllFieldsTo:(AMContentDescription *)other {
  [super copyAllFieldsTo:other];
  other->contentType_ = contentType_;
  other->text_ = text_;
  other->relatedUser_ = relatedUser_;
  other->isSilent__ = isSilent__;
  other->isEncrypted_ = isEncrypted_;
}

@end

AMContentDescription *AMContentDescription_fromBytesWithByteArray_(IOSByteArray *data) {
  AMContentDescription_init();
  
#line 28
  return ((AMContentDescription *) BSBser_parseWithBSBserObject_withByteArray_([[AMContentDescription alloc] init], data));
}

AMContentDescription *AMContentDescription_fromContentWithAMAbsContent_(AMAbsContent *msg) {
  AMContentDescription_init();
  
#line 32
  if ([msg isKindOfClass:[AMTextContent class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_TEXT() withNSString:
#line 34
    [((AMTextContent *) nil_chk(((AMTextContent *) check_class_cast(msg, [AMTextContent class])))) getText]];
  }
  else
#line 35
  if ([msg isKindOfClass:[AMPhotoContent class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_DOCUMENT_PHOTO()];
  }
  else
#line 37
  if ([msg isKindOfClass:[AMVideoContent class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_DOCUMENT_VIDEO()];
  }
  else
#line 39
  if ([msg isKindOfClass:[AMDocumentContent class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_DOCUMENT()];
  }
  else
#line 41
  if ([msg isKindOfClass:[AMServiceUserRegistered class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_REGISTERED()];
  }
  else
#line 43
  if ([msg isKindOfClass:[AMServiceGroupAvatarChanged class]]) {
    if ([((AMServiceGroupAvatarChanged *) nil_chk(((AMServiceGroupAvatarChanged *) check_class_cast(msg, [AMServiceGroupAvatarChanged class])))) getNewAvatar] == nil) {
      return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_AVATAR_REMOVED()];
    }
    else {
      
#line 47
      return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_AVATAR()];
    }
  }
  else
#line 49
  if ([msg isKindOfClass:[AMServiceGroupTitleChanged class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_TITLE() withNSString:
#line 51
    [((AMServiceGroupTitleChanged *) nil_chk(((AMServiceGroupTitleChanged *) check_class_cast(msg, [AMServiceGroupTitleChanged class])))) getNewTitle]];
  }
  else
#line 52
  if ([msg isKindOfClass:[AMServiceGroupCreated class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_CREATED()];
  }
  else
#line 54
  if ([msg isKindOfClass:[AMServiceGroupUserAdded class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_ADD() withNSString:@"" withInt:
#line 56
    [((AMServiceGroupUserAdded *) nil_chk(((AMServiceGroupUserAdded *) check_class_cast(msg, [AMServiceGroupUserAdded class])))) getAddedUid] withBoolean:NO];
  }
  else
#line 57
  if ([msg isKindOfClass:[AMServiceGroupUserKicked class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_KICK() withNSString:@"" withInt:
#line 59
    [((AMServiceGroupUserKicked *) nil_chk(((AMServiceGroupUserKicked *) check_class_cast(msg, [AMServiceGroupUserKicked class])))) getKickedUid] withBoolean:NO];
  }
  else
#line 60
  if ([msg isKindOfClass:[AMServiceGroupUserLeave class]]) {
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_SERVICE_LEAVE() withNSString:@"" withInt:
#line 62
    0 withBoolean:YES];
  }
  else {
    
#line 64
    return [[AMContentDescription alloc] initWithAMContentTypeEnum:AMContentTypeEnum_get_UNKNOWN_CONTENT()];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMContentDescription)