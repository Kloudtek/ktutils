//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: _java/com/kloudtek/util/UnexpectedException.java
//
//  Created by yinkaf on 6/11/14.
//

#ifndef _KTUtilUnexpectedException_H_
#define _KTUtilUnexpectedException_H_

@class JavaLangThrowable;

#import "JreEmulation.h"
#include "java/lang/RuntimeException.h"

@interface KTUtilUnexpectedException : JavaLangRuntimeException {
}

- (id)init;

- (id)initWithNSString:(NSString *)message;

- (id)initWithNSString:(NSString *)message
 withJavaLangThrowable:(JavaLangThrowable *)cause;

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

@end

__attribute__((always_inline)) inline void KTUtilUnexpectedException_init() {}

typedef KTUtilUnexpectedException ComKloudtekUtilUnexpectedException;

#endif // _KTUtilUnexpectedException_H_
