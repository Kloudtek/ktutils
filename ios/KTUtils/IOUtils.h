//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: _java/com/kloudtek/util/io/IOUtils.java
//
//  Created by yinkaf on 6/11/14.
//

#ifndef _KTUtilIOUtils_H_
#define _KTUtilIOUtils_H_

@class IOSByteArray;
@class JavaIoFile;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaIoReader;
@class JavaIoWriter;
@class JavaUtilLoggingLogger;
@protocol JavaIoCloseable;

#import "JreEmulation.h"

#define KTUtilIOUtils_DEF_BUFF_SIZE 10240
#define KTUtilIOUtils_DEF_CHAR_BUFF_SIZE 200

@interface KTUtilIOUtils : NSObject {
}

+ (IOSByteArray *)toByteArrayWithJavaIoInputStream:(JavaIoInputStream *)inputStream;

+ (IOSByteArray *)toByteArrayWithJavaIoFile:(JavaIoFile *)file;

+ (long long int)copy__WithJavaIoInputStream:(JavaIoInputStream *)inputStream
                      withJavaIoOutputStream:(JavaIoOutputStream *)outputStream OBJC_METHOD_FAMILY_NONE;

+ (long long int)copy__WithJavaIoInputStream:(JavaIoInputStream *)inputStream
                      withJavaIoOutputStream:(JavaIoOutputStream *)outputStream
                                     withInt:(int)bufSize OBJC_METHOD_FAMILY_NONE;

+ (long long int)copy__WithJavaIoReader:(JavaIoReader *)reader
                       withJavaIoWriter:(JavaIoWriter *)writer OBJC_METHOD_FAMILY_NONE;

+ (long long int)copy__WithJavaIoReader:(JavaIoReader *)reader
                       withJavaIoWriter:(JavaIoWriter *)writer
                                withInt:(int)bufSize OBJC_METHOD_FAMILY_NONE;

+ (long long int)byteArrayToLongWithByteArray:(IOSByteArray *)data;

+ (IOSByteArray *)longToByteArrayWithLong:(long long int)value;

+ (short int)byteArrayToShortWithByteArray:(IOSByteArray *)bytes;

+ (IOSByteArray *)shortToByteArrayWithShort:(short int)value;

+ (NSString *)toStringWithJavaIoFile:(JavaIoFile *)file;

+ (void)closeWithJavaIoCloseable:(id<JavaIoCloseable>)closeable;

+ (void)writeWithJavaIoFile:(JavaIoFile *)file
              withByteArray:(IOSByteArray *)data;

- (id)init;

@end

FOUNDATION_EXPORT BOOL KTUtilIOUtils_initialized;
J2OBJC_STATIC_INIT(KTUtilIOUtils)

FOUNDATION_EXPORT JavaUtilLoggingLogger *KTUtilIOUtils_logger_;
J2OBJC_STATIC_FIELD_GETTER(KTUtilIOUtils, logger_, JavaUtilLoggingLogger *)

J2OBJC_STATIC_FIELD_GETTER(KTUtilIOUtils, DEF_BUFF_SIZE, int)

J2OBJC_STATIC_FIELD_GETTER(KTUtilIOUtils, DEF_CHAR_BUFF_SIZE, int)

typedef KTUtilIOUtils ComKloudtekUtilIoIOUtils;

#endif // _KTUtilIOUtils_H_
