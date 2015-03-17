//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/jvm/JavaThreadingProvider.java
//

#ifndef _AMJavaThreadingProvider_H_
#define _AMJavaThreadingProvider_H_

@class AMAtomicIntegerCompat;
@class AMAtomicLongCompat;
@class AMThreadLocalCompat;
@class DKActorDispatcher;
@class DKActorSystem;
@class DKThreadPriorityEnum;

#include "J2ObjC_header.h"
#include "im/actor/model/ThreadingProvider.h"

@interface AMJavaThreadingProvider : NSObject < AMThreadingProvider > {
}

- (instancetype)init;

- (jlong)getActorTime;

- (jlong)getCurrentTime;

- (jint)getCoresCount;

- (AMAtomicIntegerCompat *)createAtomicIntWithInt:(jint)value;

- (AMAtomicLongCompat *)createAtomicLongWithLong:(jlong)value;

- (AMThreadLocalCompat *)createThreadLocal;

- (DKActorDispatcher *)createDispatcherWithNSString:(NSString *)name
                                            withInt:(jint)threadsCount
                           withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                  withDKActorSystem:(DKActorSystem *)actorSystem;

- (DKActorDispatcher *)createDefaultDispatcherWithNSString:(NSString *)name
                                  withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                         withDKActorSystem:(DKActorSystem *)actorSystem;

@end

J2OBJC_EMPTY_STATIC_INIT(AMJavaThreadingProvider)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMJavaThreadingProvider ImActorModelJvmJavaThreadingProvider;

J2OBJC_TYPE_LITERAL_HEADER(AMJavaThreadingProvider)

#endif // _AMJavaThreadingProvider_H_