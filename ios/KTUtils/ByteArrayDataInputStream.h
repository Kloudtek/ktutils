//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: _java/com/kloudtek/util/io/ByteArrayDataInputStream.java
//
//  Created by yinkaf on 6/11/14.
//

#ifndef _KTUtilByteArrayDataInputStream_H_
#define _KTUtilByteArrayDataInputStream_H_

@class IOSByteArray;

#import "JreEmulation.h"
#include "DataInputStream.h"

@interface KTUtilByteArrayDataInputStream : KTUtilDataInputStream {
}

- (id)initWithByteArray:(IOSByteArray *)buf;

- (id)initWithByteArray:(IOSByteArray *)buf
                withInt:(int)offset
                withInt:(int)length;

@end

__attribute__((always_inline)) inline void KTUtilByteArrayDataInputStream_init() {}

typedef KTUtilByteArrayDataInputStream ComKloudtekUtilIoByteArrayDataInputStream;

#endif // _KTUtilByteArrayDataInputStream_H_
