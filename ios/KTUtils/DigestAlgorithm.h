//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: _java/com/kloudtek/util/crypto/DigestAlgorithm.java
//
//  Created by yinkaf on 6/11/14.
//

#ifndef _ComKloudtekUtilCryptoDigestAlgorithm_H_
#define _ComKloudtekUtilCryptoDigestAlgorithm_H_

#import "JreEmulation.h"
#include "java/lang/Enum.h"

typedef enum {
  ComKloudtekUtilCryptoDigestAlgorithm_MD5 = 0,
  ComKloudtekUtilCryptoDigestAlgorithm_SHA1 = 1,
  ComKloudtekUtilCryptoDigestAlgorithm_SHA256 = 2,
  ComKloudtekUtilCryptoDigestAlgorithm_SHA512 = 3,
} ComKloudtekUtilCryptoDigestAlgorithm;

@interface ComKloudtekUtilCryptoDigestAlgorithmEnum : JavaLangEnum < NSCopying > {
 @public
  int hashLen_;
  NSString *jceId_;
}
+ (IOSObjectArray *)values;
+ (ComKloudtekUtilCryptoDigestAlgorithmEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;

- (id)initWithInt:(int)hashLen
     withNSString:(NSString *)__name
          withInt:(int)__ordinal;

- (id)initWithInt:(int)hashLen
     withNSString:(NSString *)jceId
     withNSString:(NSString *)__name
          withInt:(int)__ordinal;

- (void)init__WithInt:(int)hashLen
         withNSString:(NSString *)jceId OBJC_METHOD_FAMILY_NONE;

- (NSString *)getJceId;

- (int)getHashLen;

+ (ComKloudtekUtilCryptoDigestAlgorithmEnum *)getWithNSString:(NSString *)id_;
@end

FOUNDATION_EXPORT BOOL ComKloudtekUtilCryptoDigestAlgorithmEnum_initialized;
J2OBJC_STATIC_INIT(ComKloudtekUtilCryptoDigestAlgorithmEnum)

FOUNDATION_EXPORT ComKloudtekUtilCryptoDigestAlgorithmEnum *ComKloudtekUtilCryptoDigestAlgorithmEnum_values[];

#define ComKloudtekUtilCryptoDigestAlgorithmEnum_MD5 ComKloudtekUtilCryptoDigestAlgorithmEnum_values[ComKloudtekUtilCryptoDigestAlgorithm_MD5]
J2OBJC_STATIC_FIELD_GETTER(ComKloudtekUtilCryptoDigestAlgorithmEnum, MD5, ComKloudtekUtilCryptoDigestAlgorithmEnum *)

#define ComKloudtekUtilCryptoDigestAlgorithmEnum_SHA1 ComKloudtekUtilCryptoDigestAlgorithmEnum_values[ComKloudtekUtilCryptoDigestAlgorithm_SHA1]
J2OBJC_STATIC_FIELD_GETTER(ComKloudtekUtilCryptoDigestAlgorithmEnum, SHA1, ComKloudtekUtilCryptoDigestAlgorithmEnum *)

#define ComKloudtekUtilCryptoDigestAlgorithmEnum_SHA256 ComKloudtekUtilCryptoDigestAlgorithmEnum_values[ComKloudtekUtilCryptoDigestAlgorithm_SHA256]
J2OBJC_STATIC_FIELD_GETTER(ComKloudtekUtilCryptoDigestAlgorithmEnum, SHA256, ComKloudtekUtilCryptoDigestAlgorithmEnum *)

#define ComKloudtekUtilCryptoDigestAlgorithmEnum_SHA512 ComKloudtekUtilCryptoDigestAlgorithmEnum_values[ComKloudtekUtilCryptoDigestAlgorithm_SHA512]
J2OBJC_STATIC_FIELD_GETTER(ComKloudtekUtilCryptoDigestAlgorithmEnum, SHA512, ComKloudtekUtilCryptoDigestAlgorithmEnum *)

J2OBJC_FIELD_SETTER(ComKloudtekUtilCryptoDigestAlgorithmEnum, jceId_, NSString *)

#endif // _ComKloudtekUtilCryptoDigestAlgorithm_H_
