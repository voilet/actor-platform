//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/mvvm/ChangeDescription.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/ChangeDescription.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface AMChangeDescription () {
 @public
  AMChangeDescription_OperationTypeEnum *operationType_;
  jint index_;
  jint destIndex_;
  jint length_;
  JavaUtilArrayList *item_;
}

- (instancetype)initWithAMChangeDescription_OperationTypeEnum:(AMChangeDescription_OperationTypeEnum *)operationType
                                                      withInt:(jint)index
                                                      withInt:(jint)destIndex
                                                      withInt:(jint)length
                                        withJavaUtilArrayList:(JavaUtilArrayList *)item;

@end

J2OBJC_FIELD_SETTER(AMChangeDescription, operationType_, AMChangeDescription_OperationTypeEnum *)
J2OBJC_FIELD_SETTER(AMChangeDescription, item_, JavaUtilArrayList *)

__attribute__((unused)) static void AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription *self, AMChangeDescription_OperationTypeEnum *operationType, jint index, jint destIndex, jint length, JavaUtilArrayList *item);

__attribute__((unused)) static AMChangeDescription *new_AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription_OperationTypeEnum *operationType, jint index, jint destIndex, jint length, JavaUtilArrayList *item) NS_RETURNS_RETAINED;

__attribute__((unused)) static void AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(AMChangeDescription_OperationTypeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static AMChangeDescription_OperationTypeEnum *new_AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation AMChangeDescription

+ (AMChangeDescription *)mergeAddWithAMChangeDescription:(AMChangeDescription *)a
                                 withAMChangeDescription:(AMChangeDescription *)b {
  return AMChangeDescription_mergeAddWithAMChangeDescription_withAMChangeDescription_(a, b);
}

+ (AMChangeDescription *)addWithInt:(jint)index
                             withId:(id)item {
  return AMChangeDescription_addWithInt_withId_(index, item);
}

+ (AMChangeDescription *)addWithInt:(jint)index
                   withJavaUtilList:(id<JavaUtilList>)items {
  return AMChangeDescription_addWithInt_withJavaUtilList_(index, items);
}

+ (AMChangeDescription *)removeWithInt:(jint)index {
  return AMChangeDescription_removeWithInt_(index);
}

+ (AMChangeDescription *)removeWithInt:(jint)index
                               withInt:(jint)length {
  return AMChangeDescription_removeWithInt_withInt_(index, length);
}

+ (AMChangeDescription *)updateWithInt:(jint)index
                                withId:(id)item {
  return AMChangeDescription_updateWithInt_withId_(index, item);
}

+ (AMChangeDescription *)updateWithInt:(jint)index
                      withJavaUtilList:(id<JavaUtilList>)items {
  return AMChangeDescription_updateWithInt_withJavaUtilList_(index, items);
}

+ (AMChangeDescription *)moveWithInt:(jint)index
                             withInt:(jint)destIndex {
  return AMChangeDescription_moveWithInt_withInt_(index, destIndex);
}

- (instancetype)initWithAMChangeDescription_OperationTypeEnum:(AMChangeDescription_OperationTypeEnum *)operationType
                                                      withInt:(jint)index
                                                      withInt:(jint)destIndex
                                                      withInt:(jint)length
                                        withJavaUtilArrayList:(JavaUtilArrayList *)item {
  AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(self, operationType, index, destIndex, length, item);
  return self;
}

- (AMChangeDescription_OperationTypeEnum *)getOperationType {
  return operationType_;
}

- (jint)getIndex {
  return index_;
}

- (jint)getDestIndex {
  return destIndex_;
}

- (jint)getLength {
  return length_;
}

- (JavaUtilArrayList *)getItems {
  return item_;
}

- (AMChangeDescription *)cast {
  return (AMChangeDescription *) check_class_cast(self, [AMChangeDescription class]);
}

@end

AMChangeDescription *AMChangeDescription_mergeAddWithAMChangeDescription_withAMChangeDescription_(AMChangeDescription *a, AMChangeDescription *b) {
  AMChangeDescription_initialize();
  JavaUtilArrayList *items = new_JavaUtilArrayList_init();
  [items addAllWithJavaUtilCollection:[((AMChangeDescription *) nil_chk(a)) getItems]];
  [items addAllWithJavaUtilCollection:[((AMChangeDescription *) nil_chk(b)) getItems]];
  return new_AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription_OperationTypeEnum_get_ADD(), [a getIndex], 0, [items size], items);
}

AMChangeDescription *AMChangeDescription_addWithInt_withId_(jint index, id item) {
  AMChangeDescription_initialize();
  JavaUtilArrayList *items = new_JavaUtilArrayList_init();
  [items addWithId:item];
  return AMChangeDescription_addWithInt_withJavaUtilList_(index, items);
}

AMChangeDescription *AMChangeDescription_addWithInt_withJavaUtilList_(jint index, id<JavaUtilList> items) {
  AMChangeDescription_initialize();
  return new_AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription_OperationTypeEnum_get_ADD(), index, 0, [((id<JavaUtilList>) nil_chk(items)) size], new_JavaUtilArrayList_initWithJavaUtilCollection_(items));
}

AMChangeDescription *AMChangeDescription_removeWithInt_(jint index) {
  AMChangeDescription_initialize();
  return AMChangeDescription_removeWithInt_withInt_(index, 1);
}

AMChangeDescription *AMChangeDescription_removeWithInt_withInt_(jint index, jint length) {
  AMChangeDescription_initialize();
  return new_AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription_OperationTypeEnum_get_REMOVE(), index, 0, length, nil);
}

AMChangeDescription *AMChangeDescription_updateWithInt_withId_(jint index, id item) {
  AMChangeDescription_initialize();
  JavaUtilArrayList *items = new_JavaUtilArrayList_init();
  [items addWithId:item];
  return AMChangeDescription_updateWithInt_withJavaUtilList_(index, items);
}

AMChangeDescription *AMChangeDescription_updateWithInt_withJavaUtilList_(jint index, id<JavaUtilList> items) {
  AMChangeDescription_initialize();
  return new_AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription_OperationTypeEnum_get_UPDATE(), index, 0, [((id<JavaUtilList>) nil_chk(items)) size], new_JavaUtilArrayList_initWithJavaUtilCollection_(items));
}

AMChangeDescription *AMChangeDescription_moveWithInt_withInt_(jint index, jint destIndex) {
  AMChangeDescription_initialize();
  return new_AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription_OperationTypeEnum_get_MOVE(), index, destIndex, 1, nil);
}

void AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription *self, AMChangeDescription_OperationTypeEnum *operationType, jint index, jint destIndex, jint length, JavaUtilArrayList *item) {
  (void) NSObject_init(self);
  self->operationType_ = operationType;
  self->index_ = index;
  self->destIndex_ = destIndex;
  self->length_ = length;
  self->item_ = item;
}

AMChangeDescription *new_AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(AMChangeDescription_OperationTypeEnum *operationType, jint index, jint destIndex, jint length, JavaUtilArrayList *item) {
  AMChangeDescription *self = [AMChangeDescription alloc];
  AMChangeDescription_initWithAMChangeDescription_OperationTypeEnum_withInt_withInt_withInt_withJavaUtilArrayList_(self, operationType, index, destIndex, length, item);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMChangeDescription)

J2OBJC_INITIALIZED_DEFN(AMChangeDescription_OperationTypeEnum)

AMChangeDescription_OperationTypeEnum *AMChangeDescription_OperationTypeEnum_values_[4];

@implementation AMChangeDescription_OperationTypeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *AMChangeDescription_OperationTypeEnum_values() {
  AMChangeDescription_OperationTypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:AMChangeDescription_OperationTypeEnum_values_ count:4 type:AMChangeDescription_OperationTypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return AMChangeDescription_OperationTypeEnum_values();
}

+ (AMChangeDescription_OperationTypeEnum *)valueOfWithNSString:(NSString *)name {
  return AMChangeDescription_OperationTypeEnum_valueOfWithNSString_(name);
}

AMChangeDescription_OperationTypeEnum *AMChangeDescription_OperationTypeEnum_valueOfWithNSString_(NSString *name) {
  AMChangeDescription_OperationTypeEnum_initialize();
  for (int i = 0; i < 4; i++) {
    AMChangeDescription_OperationTypeEnum *e = AMChangeDescription_OperationTypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMChangeDescription_OperationTypeEnum class]) {
    AMChangeDescription_OperationTypeEnum_ADD = new_AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(@"ADD", 0);
    AMChangeDescription_OperationTypeEnum_REMOVE = new_AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(@"REMOVE", 1);
    AMChangeDescription_OperationTypeEnum_UPDATE = new_AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(@"UPDATE", 2);
    AMChangeDescription_OperationTypeEnum_MOVE = new_AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(@"MOVE", 3);
    J2OBJC_SET_INITIALIZED(AMChangeDescription_OperationTypeEnum)
  }
}

@end

void AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(AMChangeDescription_OperationTypeEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

AMChangeDescription_OperationTypeEnum *new_AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  AMChangeDescription_OperationTypeEnum *self = [AMChangeDescription_OperationTypeEnum alloc];
  AMChangeDescription_OperationTypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMChangeDescription_OperationTypeEnum)
