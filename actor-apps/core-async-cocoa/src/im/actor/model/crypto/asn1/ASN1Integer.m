//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core-crypto/src/main/java/im/actor/model/crypto/asn1/ASN1Integer.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/asn1/ASN1Integer.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "java/io/IOException.h"
#include "java/math/BigInteger.h"

@interface BCASN1Integer () {
 @public
  IOSByteArray *data_;
}

@end

J2OBJC_FIELD_SETTER(BCASN1Integer, data_, IOSByteArray *)

@implementation BCASN1Integer

+ (BCASN1Integer *)readIntegerWithBSDataInput:(BSDataInput *)dataInput {
  return BCASN1Integer_readIntegerWithBSDataInput_(dataInput);
}

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  BCASN1Integer_initWithByteArray_(self, data);
  return self;
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)data {
  BCASN1Integer_initWithJavaMathBigInteger_(self, data);
  return self;
}

- (instancetype)init {
  BCASN1Integer_init(self);
  return self;
}

- (instancetype)initWithInt:(jint)val {
  BCASN1Integer_initWithInt_(self, val);
  return self;
}

- (IOSByteArray *)getData {
  return data_;
}

- (JavaMathBigInteger *)asBigInteger {
  return new_JavaMathBigInteger_initWithByteArray_(data_);
}

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput {
  [((BSDataOutput *) nil_chk(dataOutput)) writeByteWithInt:BCASN1Primitive_TAG_INTEGER];
  [dataOutput writeASN1LengthWithInt:((IOSByteArray *) nil_chk(data_))->size_];
  [dataOutput writeBytesWithByteArray:data_ withInt:0 withInt:data_->size_];
}

@end

BCASN1Integer *BCASN1Integer_readIntegerWithBSDataInput_(BSDataInput *dataInput) {
  BCASN1Integer_initialize();
  return new_BCASN1Integer_initWithByteArray_([dataInput readBytesWithInt:[((BSDataInput *) nil_chk(dataInput)) getRemaining]]);
}

void BCASN1Integer_initWithByteArray_(BCASN1Integer *self, IOSByteArray *data) {
  (void) BCASN1Primitive_init(self);
  self->data_ = data;
}

BCASN1Integer *new_BCASN1Integer_initWithByteArray_(IOSByteArray *data) {
  BCASN1Integer *self = [BCASN1Integer alloc];
  BCASN1Integer_initWithByteArray_(self, data);
  return self;
}

void BCASN1Integer_initWithJavaMathBigInteger_(BCASN1Integer *self, JavaMathBigInteger *data) {
  (void) BCASN1Primitive_init(self);
  self->data_ = [((JavaMathBigInteger *) nil_chk(data)) toByteArray];
}

BCASN1Integer *new_BCASN1Integer_initWithJavaMathBigInteger_(JavaMathBigInteger *data) {
  BCASN1Integer *self = [BCASN1Integer alloc];
  BCASN1Integer_initWithJavaMathBigInteger_(self, data);
  return self;
}

void BCASN1Integer_init(BCASN1Integer *self) {
  (void) BCASN1Primitive_init(self);
  self->data_ = [((JavaMathBigInteger *) nil_chk(JavaMathBigInteger_get_ZERO_())) toByteArray];
}

BCASN1Integer *new_BCASN1Integer_init() {
  BCASN1Integer *self = [BCASN1Integer alloc];
  BCASN1Integer_init(self);
  return self;
}

void BCASN1Integer_initWithInt_(BCASN1Integer *self, jint val) {
  (void) BCASN1Primitive_init(self);
  self->data_ = [new_JavaMathBigInteger_initWithNSString_(JreStrcat("I", val)) toByteArray];
}

BCASN1Integer *new_BCASN1Integer_initWithInt_(jint val) {
  BCASN1Integer *self = [BCASN1Integer alloc];
  BCASN1Integer_initWithInt_(self, val);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BCASN1Integer)