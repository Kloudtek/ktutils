//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: _java/com/kloudtek/util/crypto/DigestUtils.java
//
//  Created by yinkaf on 6/14/14.
//

#include "DigestAlgorithm.h"
#include "DigestUtils.h"
#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "StringUtils.h"
#include "UnexpectedException.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/System.h"
#include "java/security/MessageDigest.h"
#include "java/security/NoSuchAlgorithmException.h"
#include "java/security/SecureRandom.h"
#include "java/util/Arrays.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"

BOOL ComKloudtekUtilCryptoDigestUtils_initialized = NO;

@implementation ComKloudtekUtilCryptoDigestUtils

JavaUtilLoggingLogger * ComKloudtekUtilCryptoDigestUtils_logger_;
JavaSecuritySecureRandom * ComKloudtekUtilCryptoDigestUtils_random_;

+ (JavaSecurityMessageDigest *)digestWithComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  @try {
    return [JavaSecurityMessageDigest getInstanceWithNSString:[((ComKloudtekUtilCryptoDigestAlgorithmEnum *) nil_chk(alg)) getJceId]];
  }
  @catch (JavaSecurityNoSuchAlgorithmException *e) {
    @throw [[KTUtilUnexpectedException alloc] initWithJavaLangThrowable:e];
  }
}

+ (IOSByteArray *)digestWithByteArray:(IOSByteArray *)data
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  @try {
    JavaSecurityMessageDigest *sha = [JavaSecurityMessageDigest getInstanceWithNSString:[((ComKloudtekUtilCryptoDigestAlgorithmEnum *) nil_chk(alg)) getJceId]];
    [((JavaSecurityMessageDigest *) nil_chk(sha)) updateWithByteArray:data];
    return [sha digest];
  }
  @catch (JavaSecurityNoSuchAlgorithmException *e) {
    @throw [[KTUtilUnexpectedException alloc] initWithJavaLangThrowable:e];
  }
}

+ (IOSByteArray *)digestWithJavaIoFile:(JavaIoFile *)file
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  JavaIoFileInputStream *is = [[JavaIoFileInputStream alloc] initWithJavaIoFile:file];
  @try {
    return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoInputStream:is withComKloudtekUtilCryptoDigestAlgorithmEnum:alg];
  }
  @finally {
    @try {
      [is close];
    }
    @catch (JavaIoIOException *e) {
      [((JavaUtilLoggingLogger *) nil_chk(ComKloudtekUtilCryptoDigestUtils_logger_)) logWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_get_WARNING_() withNSString:[((JavaIoIOException *) nil_chk(e)) getMessage] withJavaLangThrowable:e];
    }
  }
}

+ (IOSByteArray *)digestWithJavaIoInputStream:(JavaIoInputStream *)inputStream
 withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoInputStream:inputStream withNSString:[((ComKloudtekUtilCryptoDigestAlgorithmEnum *) nil_chk(alg)) getJceId]];
}

+ (IOSByteArray *)digestWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                                 withNSString:(NSString *)alg {
  @try {
    IOSByteArray *buffer = [IOSByteArray arrayWithLength:ComKloudtekUtilCryptoDigestUtils_BUFSZ];
    JavaSecurityMessageDigest *digest = [JavaSecurityMessageDigest getInstanceWithNSString:alg];
    for (int i = [((JavaIoInputStream *) nil_chk(inputStream)) readWithByteArray:buffer withInt:0 withInt:ComKloudtekUtilCryptoDigestUtils_BUFSZ]; i != -1; i = [inputStream readWithByteArray:buffer withInt:0 withInt:ComKloudtekUtilCryptoDigestUtils_BUFSZ]) {
      [((JavaSecurityMessageDigest *) nil_chk(digest)) updateWithByteArray:buffer withInt:0 withInt:i];
    }
    return [((JavaSecurityMessageDigest *) nil_chk(digest)) digest];
  }
  @catch (JavaSecurityNoSuchAlgorithmException *e) {
    @throw [[KTUtilUnexpectedException alloc] initWithNSString:[NSString stringWithFormat:@"Algorithm not supported: %@", alg] withJavaLangThrowable:e];
  }
}

+ (IOSByteArray *)saltedDigestWithByteArray:(IOSByteArray *)data
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  return [ComKloudtekUtilCryptoDigestUtils saltedDigestWithByteArray:[ComKloudtekUtilCryptoDigestUtils generateSalt] withByteArray:data withComKloudtekUtilCryptoDigestAlgorithmEnum:alg];
}

+ (IOSByteArray *)saltedDigestWithByteArray:(IOSByteArray *)salt
                              withByteArray:(IOSByteArray *)data
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  return [ComKloudtekUtilCryptoDigestUtils saltedDigestWithByteArray:salt withByteArray:data withNSString:[((ComKloudtekUtilCryptoDigestAlgorithmEnum *) nil_chk(alg)) getJceId] withInt:[alg getHashLen]];
}

+ (IOSByteArray *)saltedDigestWithByteArray:(IOSByteArray *)salt
                              withByteArray:(IOSByteArray *)data
                               withNSString:(NSString *)alg
                                    withInt:(int)hashLen {
  @try {
    JavaSecurityMessageDigest *sha = [JavaSecurityMessageDigest getInstanceWithNSString:alg];
    [((JavaSecurityMessageDigest *) nil_chk(sha)) updateWithByteArray:data];
    [sha updateWithByteArray:salt];
    IOSByteArray *digest = [sha digest];
    IOSByteArray *digestWithSalt = [IOSByteArray arrayWithLength:hashLen + (int) [((IOSByteArray *) nil_chk(salt)) count]];
    [JavaLangSystem arraycopyWithId:digest withInt:0 withId:digestWithSalt withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(digest)) count]];
    [JavaLangSystem arraycopyWithId:salt withInt:0 withId:digestWithSalt withInt:(int) [digest count] withInt:(int) [salt count]];
    return digestWithSalt;
  }
  @catch (JavaSecurityNoSuchAlgorithmException *e) {
    @throw [[KTUtilUnexpectedException alloc] initWithJavaLangThrowable:e];
  }
}

+ (BOOL)compareSaltedDigestWithByteArray:(IOSByteArray *)digest
                           withByteArray:(IOSByteArray *)data
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  @try {
    JavaSecurityMessageDigest *sha = [JavaSecurityMessageDigest getInstanceWithNSString:[((ComKloudtekUtilCryptoDigestAlgorithmEnum *) nil_chk(alg)) getJceId]];
    IOSByteArray *digestData = [JavaUtilArrays copyOfRangeWithByteArray:digest withInt:0 withInt:[alg getHashLen]];
    IOSByteArray *salt = [JavaUtilArrays copyOfRangeWithByteArray:digest withInt:[alg getHashLen] withInt:(int) [((IOSByteArray *) nil_chk(digest)) count]];
    [((JavaSecurityMessageDigest *) nil_chk(sha)) updateWithByteArray:data];
    [sha updateWithByteArray:salt];
    IOSByteArray *encoded = [sha digest];
    return [JavaSecurityMessageDigest isEqualWithByteArray:digestData withByteArray:encoded];
  }
  @catch (JavaSecurityNoSuchAlgorithmException *e) {
    @throw [[KTUtilUnexpectedException alloc] initWithJavaLangThrowable:e];
  }
}

+ (BOOL)compareSaltedDigestWithNSString:(NSString *)b64Digest
                           withNSString:(NSString *)data
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  return [ComKloudtekUtilCryptoDigestUtils compareSaltedDigestWithByteArray:[KTUtilStringUtils base64DecodeWithNSString:b64Digest] withByteArray:[((NSString *) nil_chk(data)) getBytes] withComKloudtekUtilCryptoDigestAlgorithmEnum:alg];
}

+ (IOSByteArray *)generateSalt {
  IOSByteArray *salt = [IOSByteArray arrayWithLength:8];
  [((JavaSecuritySecureRandom *) nil_chk(ComKloudtekUtilCryptoDigestUtils_random_)) nextBytesWithByteArray:salt];
  return salt;
}

+ (IOSByteArray *)saltedDigestWithNSString:(NSString *)text
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  return [ComKloudtekUtilCryptoDigestUtils saltedDigestWithByteArray:[KTUtilStringUtils utf8WithNSString:text] withComKloudtekUtilCryptoDigestAlgorithmEnum:alg];
}

+ (NSString *)saltedB64DigestWithNSString:(NSString *)text
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  return [KTUtilStringUtils base64EncodeWithByteArray:[ComKloudtekUtilCryptoDigestUtils saltedDigestWithNSString:text withComKloudtekUtilCryptoDigestAlgorithmEnum:alg]];
}

+ (NSString *)saltedB64DigestWithByteArray:(IOSByteArray *)data
withComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)alg {
  return [KTUtilStringUtils base64EncodeWithByteArray:[ComKloudtekUtilCryptoDigestUtils saltedDigestWithByteArray:data withComKloudtekUtilCryptoDigestAlgorithmEnum:alg]];
}

+ (IOSByteArray *)sha1WithByteArray:(IOSByteArray *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithByteArray:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA1()];
}

+ (IOSByteArray *)sha1WithJavaIoInputStream:(JavaIoInputStream *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoInputStream:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA1()];
}

+ (IOSByteArray *)sha1WithJavaIoFile:(JavaIoFile *)file {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoFile:file withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA1()];
}

+ (IOSByteArray *)sha256WithByteArray:(IOSByteArray *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithByteArray:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA256()];
}

+ (IOSByteArray *)sha256WithJavaIoInputStream:(JavaIoInputStream *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoInputStream:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA256()];
}

+ (IOSByteArray *)sha256WithJavaIoFile:(JavaIoFile *)file {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoFile:file withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA256()];
}

+ (IOSByteArray *)sha512WithByteArray:(IOSByteArray *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithByteArray:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA512()];
}

+ (IOSByteArray *)sha512WithJavaIoInputStream:(JavaIoInputStream *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoInputStream:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA512()];
}

+ (IOSByteArray *)sha512WithJavaIoFile:(JavaIoFile *)file {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoFile:file withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_SHA512()];
}

+ (IOSByteArray *)md5WithByteArray:(IOSByteArray *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithByteArray:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_MD5()];
}

+ (IOSByteArray *)md5WithJavaIoInputStream:(JavaIoInputStream *)data {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoInputStream:data withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_MD5()];
}

+ (IOSByteArray *)md5WithJavaIoFile:(JavaIoFile *)file {
  return [ComKloudtekUtilCryptoDigestUtils digestWithJavaIoFile:file withComKloudtekUtilCryptoDigestAlgorithmEnum:ComKloudtekUtilCryptoDigestAlgorithmEnum_get_MD5()];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComKloudtekUtilCryptoDigestUtils class]) {
    ComKloudtekUtilCryptoDigestUtils_logger_ = [JavaUtilLoggingLogger getLoggerWithNSString:[[IOSClass classWithClass:[ComKloudtekUtilCryptoDigestUtils class]] getName]];
    ComKloudtekUtilCryptoDigestUtils_random_ = [[JavaSecuritySecureRandom alloc] init];
    ComKloudtekUtilCryptoDigestUtils_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "digestWithComKloudtekUtilCryptoDigestAlgorithmEnum:", "digest", "Ljava.security.MessageDigest;", 0x9, NULL },
    { "digestWithByteArray:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "digest", "[B", 0x9, NULL },
    { "digestWithJavaIoFile:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "digest", "[B", 0x9, "Ljava.io.IOException;" },
    { "digestWithJavaIoInputStream:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "digest", "[B", 0x9, "Ljava.io.IOException;" },
    { "digestWithJavaIoInputStream:withNSString:", "digest", "[B", 0x9, "Ljava.io.IOException;" },
    { "saltedDigestWithByteArray:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "saltedDigest", "[B", 0x9, NULL },
    { "saltedDigestWithByteArray:withByteArray:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "saltedDigest", "[B", 0x9, NULL },
    { "saltedDigestWithByteArray:withByteArray:withNSString:withInt:", "saltedDigest", "[B", 0x9, NULL },
    { "compareSaltedDigestWithByteArray:withByteArray:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "compareSaltedDigest", "Z", 0x9, NULL },
    { "compareSaltedDigestWithNSString:withNSString:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "compareSaltedDigest", "Z", 0x9, NULL },
    { "generateSalt", NULL, "[B", 0xa, NULL },
    { "saltedDigestWithNSString:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "saltedDigest", "[B", 0x9, NULL },
    { "saltedB64DigestWithNSString:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "saltedB64Digest", "Ljava.lang.String;", 0x9, NULL },
    { "saltedB64DigestWithByteArray:withComKloudtekUtilCryptoDigestAlgorithmEnum:", "saltedB64Digest", "Ljava.lang.String;", 0x9, NULL },
    { "sha1WithByteArray:", "sha1", "[B", 0x9, NULL },
    { "sha1WithJavaIoInputStream:", "sha1", "[B", 0x9, "Ljava.io.IOException;" },
    { "sha1WithJavaIoFile:", "sha1", "[B", 0x9, "Ljava.io.IOException;" },
    { "sha256WithByteArray:", "sha256", "[B", 0x9, NULL },
    { "sha256WithJavaIoInputStream:", "sha256", "[B", 0x9, "Ljava.io.IOException;" },
    { "sha256WithJavaIoFile:", "sha256", "[B", 0x9, "Ljava.io.IOException;" },
    { "sha512WithByteArray:", "sha512", "[B", 0x9, NULL },
    { "sha512WithJavaIoInputStream:", "sha512", "[B", 0x9, "Ljava.io.IOException;" },
    { "sha512WithJavaIoFile:", "sha512", "[B", 0x9, "Ljava.io.IOException;" },
    { "md5WithByteArray:", "md5", "[B", 0x9, NULL },
    { "md5WithJavaIoInputStream:", "md5", "[B", 0x9, "Ljava.io.IOException;" },
    { "md5WithJavaIoFile:", "md5", "[B", 0x9, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "logger_", NULL, 0x1a, "Ljava.util.logging.Logger;", &ComKloudtekUtilCryptoDigestUtils_logger_,  },
    { "random_", NULL, 0x1a, "Ljava.security.SecureRandom;", &ComKloudtekUtilCryptoDigestUtils_random_,  },
    { "BUFSZ_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComKloudtekUtilCryptoDigestUtils_BUFSZ },
  };
  static J2ObjcClassInfo _ComKloudtekUtilCryptoDigestUtils = { "DigestUtils", "com.kloudtek.kryptotek", NULL, 0x1, 27, methods, 3, fields, 0, NULL};
  return &_ComKloudtekUtilCryptoDigestUtils;
}

@end
