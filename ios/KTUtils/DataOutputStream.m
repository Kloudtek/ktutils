//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/kloudtek/util/io/DataOutputStream.java
//
//  Created by yinkaf on 22/04/14.
//

#include "DataOutputStream.h"
#include "IOSByteArray.h"
#include "IOSClass.h"
#include "java/io/DataOutput.h"
#include "java/io/DataOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"

@implementation KTUtilDataOutputStream

- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  return [super initWithJavaIoOutputStream:outArg];
}

- (void)writeStringWithNSString:(NSString *)str {
  [KTUtilDataOutputStream writeStringWithJavaIoDataOutput:self withNSString:str];
}

- (void)writeDataWithByteArray:(IOSByteArray *)data {
  [KTUtilDataOutputStream writeDataWithJavaIoDataOutput:self withByteArray:data];
}

+ (void)writeStringWithJavaIoDataOutput:(id<JavaIoDataOutput>)outArg
                           withNSString:(NSString *)str {
  [((id<JavaIoDataOutput>) nil_chk(outArg)) writeBooleanWithBoolean:str != nil];
  if (str != nil) {
    [outArg writeUTFWithNSString:str];
  }
}

+ (void)writeDataWithJavaIoDataOutput:(id<JavaIoDataOutput>)outArg
                        withByteArray:(IOSByteArray *)data {
  int len = data != nil ? (int) [data count] : -1;
  [((id<JavaIoDataOutput>) nil_chk(outArg)) writeIntWithInt:len];
  if (len > -1) {
    [outArg writeWithByteArray:data];
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoOutputStream:", "DataOutputStream", NULL, 0x1, NULL },
    { "writeStringWithNSString:", "writeString", "V", 0x1, "Ljava.io.IOException;" },
    { "writeDataWithByteArray:", "writeData", "V", 0x1, "Ljava.io.IOException;" },
    { "writeStringWithJavaIoDataOutput:withNSString:", "writeString", "V", 0x9, "Ljava.io.IOException;" },
    { "writeDataWithJavaIoDataOutput:withByteArray:", "writeData", "V", 0x9, "Ljava.io.IOException;" },
  };
  static J2ObjcClassInfo _KTUtilDataOutputStream = { "DataOutputStream", "com.kloudtek.util.io", NULL, 0x1, 5, methods, 0, NULL, 0, NULL};
  return &_KTUtilDataOutputStream;
}

@end
