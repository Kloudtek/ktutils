//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/kloudtek/util/StringUtils.java
//
//  Created by yannick on 06/01/14.
//

#ifndef _KTUtilsStringUtils_H_
#define _KTUtilsStringUtils_H_

@class IOSByteArray;

#import "JreEmulation.h"

@interface KTUtilsStringUtils : NSObject {
}

+ (BOOL)isEmptyWithNSString:(NSString *)txt;
+ (BOOL)isNotEmptyWithNSString:(NSString *)txt;
+ (NSString *)urlEncodeWithNSString:(NSString *)txt;
+ (NSString *)urlDecodeWithNSString:(NSString *)txt;
+ (NSString *)capitalizeWithNSString:(NSString *)txt;
+ (NSString *)base64EncodeWithByteArray:(IOSByteArray *)data;
+ (IOSByteArray *)base64DecodeWithNSString:(NSString *)data;
+ (NSString *)base64EncodeWithByteArray:(IOSByteArray *)data
                            withBoolean:(BOOL)urlSafe;
+ (IOSByteArray *)base64DecodeWithNSString:(NSString *)data
                               withBoolean:(BOOL)urlSafe;
+ (NSString *)base32EncodeWithByteArray:(IOSByteArray *)data;
+ (IOSByteArray *)base32DecodeWithNSString:(NSString *)data;
+ (NSString *)base32EncodeWithByteArray:(IOSByteArray *)data
                            withBoolean:(BOOL)urlSafe;
+ (IOSByteArray *)base32DecodeWithNSString:(NSString *)data
                               withBoolean:(BOOL)urlSafe;
+ (IOSByteArray *)toUTF8WithNSString:(NSString *)str;
+ (NSString *)fromUTF8WithByteArray:(IOSByteArray *)utf8Chars;
- (id)init;
@end

typedef KTUtilsStringUtils ComKloudtekUtilStringUtils;

#endif // _KTUtilsStringUtils_H_
