//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/kloudtek/util/StringUtils.java
//
//  Created by yannick on 06/01/14.
//

#include "Base32.h"
#include "Base64.h"
#include "IOSByteArray.h"
#include "StringUtils.h"
#include "UnexpectedException.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/Character.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "URLDecoder.h"
#include "java/net/URLEncoder.h"

@implementation KTUtilsStringUtils

+ (BOOL)isEmptyWithNSString:(NSString *)txt {
  return txt == nil || [((NSString *) nil_chk([txt trim])) isEmpty];
}

+ (BOOL)isNotEmptyWithNSString:(NSString *)txt {
  return ![KTUtilsStringUtils isEmptyWithNSString:txt];
}

+ (NSString *)urlEncodeWithNSString:(NSString *)txt {
  @try {
    return [JavaNetURLEncoder encodeWithNSString:txt withNSString:@"UTF-8"];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithJavaLangThrowable:e];
  }
}

+ (NSString *)urlDecodeWithNSString:(NSString *)txt {
  @try {
    return [JavaNetURLDecoder decodeWithNSString:txt withNSString:@"UTF-8"];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithJavaLangThrowable:e];
  }
}

+ (NSString *)capitalizeWithNSString:(NSString *)txt {
  int len;
  if (txt == nil || (len = [txt length]) == 0) {
    return txt;
  }
  JavaLangStringBuilder *tmp = [[JavaLangStringBuilder alloc] initWithInt:len];
  (void) [tmp appendWithChar:[JavaLangCharacter toTitleCaseWithChar:[((NSString *) nil_chk(txt)) charAtWithInt:0]]];
  (void) [tmp appendWithNSString:[txt substring:1]];
  return [tmp description];
}

+ (NSString *)base64EncodeWithByteArray:(IOSByteArray *)data {
  return [((KTUtilsBase64 *) [[KTUtilsBase64 alloc] init]) encodeToStringWithByteArray:data];
}

+ (IOSByteArray *)base64DecodeWithNSString:(NSString *)data {
  return [((KTUtilsBase64 *) [[KTUtilsBase64 alloc] init]) decodeWithNSString:data];
}

+ (NSString *)base64EncodeWithByteArray:(IOSByteArray *)data
                            withBoolean:(BOOL)urlSafe {
  return [((KTUtilsBase64 *) [[KTUtilsBase64 alloc] initWithBoolean:urlSafe]) encodeToStringWithByteArray:data];
}

+ (IOSByteArray *)base64DecodeWithNSString:(NSString *)data
                               withBoolean:(BOOL)urlSafe {
  return [((KTUtilsBase64 *) [[KTUtilsBase64 alloc] initWithBoolean:urlSafe]) decodeWithNSString:data];
}

+ (NSString *)base32EncodeWithByteArray:(IOSByteArray *)data {
  return [((KTUtilsBase32 *) [[KTUtilsBase32 alloc] init]) encodeToStringWithByteArray:data];
}

+ (IOSByteArray *)base32DecodeWithNSString:(NSString *)data {
  return [((KTUtilsBase32 *) [[KTUtilsBase32 alloc] init]) decodeWithNSString:data];
}

+ (NSString *)base32EncodeWithByteArray:(IOSByteArray *)data
                            withBoolean:(BOOL)urlSafe {
  return [((KTUtilsBase32 *) [[KTUtilsBase32 alloc] initWithBoolean:urlSafe]) encodeToStringWithByteArray:data];
}

+ (IOSByteArray *)base32DecodeWithNSString:(NSString *)data
                               withBoolean:(BOOL)urlSafe {
  return [((KTUtilsBase32 *) [[KTUtilsBase32 alloc] initWithBoolean:urlSafe]) decodeWithNSString:data];
}

+ (IOSByteArray *)toUTF8WithNSString:(NSString *)str {
  @try {
    return [((NSString *) nil_chk(str)) getBytesWithCharsetName:@"UTF-8"];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    @throw [[KTUtilsUnexpectedException alloc] initWithJavaLangThrowable:e];
  }
}

+ (NSString *)fromUTF8WithByteArray:(IOSByteArray *)utf8Chars {
  @try {
    return [NSString stringWithBytes:utf8Chars charsetName:@"UTF-8"];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    @throw [[KTUtilsUnexpectedException alloc] initWithJavaLangThrowable:e];
  }
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "isEmptyWithNSString:", NULL, "Z", 0x9, NULL },
    { "isNotEmptyWithNSString:", NULL, "Z", 0x9, NULL },
    { "urlEncodeWithNSString:", NULL, "LNSString", 0x9, NULL },
    { "urlDecodeWithNSString:", NULL, "LNSString", 0x9, NULL },
    { "capitalizeWithNSString:", NULL, "LNSString", 0x9, NULL },
    { "base64EncodeWithByteArray:", NULL, "LNSString", 0x9, NULL },
    { "base64DecodeWithNSString:", NULL, "LIOSByteArray", 0x9, NULL },
    { "base64EncodeWithByteArray:withBoolean:", NULL, "LNSString", 0x9, NULL },
    { "base64DecodeWithNSString:withBoolean:", NULL, "LIOSByteArray", 0x9, NULL },
    { "base32EncodeWithByteArray:", NULL, "LNSString", 0x9, NULL },
    { "base32DecodeWithNSString:", NULL, "LIOSByteArray", 0x9, NULL },
    { "base32EncodeWithByteArray:withBoolean:", NULL, "LNSString", 0x9, NULL },
    { "base32DecodeWithNSString:withBoolean:", NULL, "LIOSByteArray", 0x9, NULL },
    { "toUTF8WithNSString:", NULL, "LIOSByteArray", 0x9, NULL },
    { "fromUTF8WithByteArray:", NULL, "LNSString", 0x9, NULL },
  };
  static J2ObjcClassInfo _KTUtilsStringUtils = { "StringUtils", "com.kloudtek.util", NULL, 0x1, 15, methods, 0, NULL, 0, NULL};
  return &_KTUtilsStringUtils;
}

@end