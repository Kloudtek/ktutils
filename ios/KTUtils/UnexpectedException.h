//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/kloudtek/util/UnexpectedException.java
//
//  Created by yannick on 06/01/14.
//

#ifndef _KTUtilsUnexpectedException_H_
#define _KTUtilsUnexpectedException_H_

@class JavaLangThrowable;

#import "JreEmulation.h"
#include "java/lang/RuntimeException.h"

@interface KTUtilsUnexpectedException : JavaLangRuntimeException {
}

- (id)init;
- (id)initWithNSString:(NSString *)message;
- (id)initWithNSString:(NSString *)message
 withJavaLangThrowable:(JavaLangThrowable *)cause;
- (id)initWithJavaLangThrowable:(JavaLangThrowable *)cause;
@end

typedef KTUtilsUnexpectedException ComKloudtekUtilUnexpectedException;

#endif // _KTUtilsUnexpectedException_H_
