//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/kloudtek/util/io/ByteArrayDataOutputStream.java
//
//  Created by yinkaf on 22/04/14.
//

#ifndef _KTUtilByteArrayDataOutputStream_H_
#define _KTUtilByteArrayDataOutputStream_H_

@class IOSByteArray;

#import "JreEmulation.h"
#include "DataOutputStream.h"

@interface KTUtilByteArrayDataOutputStream : KTUtilDataOutputStream {
}

- (id)init;
- (id)initWithInt:(int)size;
- (IOSByteArray *)toByteArray;
@end

typedef KTUtilByteArrayDataOutputStream ComKloudtekUtilIoByteArrayDataOutputStream;

#endif // _KTUtilByteArrayDataOutputStream_H_
