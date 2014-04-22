//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/kloudtek/util/crypto/CryptoEngine.java
//
//  Created by yinkaf on 22/04/14.
//

#ifndef _ComKloudtekUtilCryptoCryptoEngine_H_
#define _ComKloudtekUtilCryptoCryptoEngine_H_

@class ComKloudtekUtilCryptoAsymmetricAlgorithmEnum;
@class ComKloudtekUtilCryptoDigestAlgorithmEnum;
@class ComKloudtekUtilCryptoSymmetricAlgorithmEnum;
@class IOSByteArray;
@class JavaSecurityKeyPair;
@protocol JavaSecurityInterfacesRSAPublicKey;
@protocol JavaSecurityKey;
@protocol JavaSecurityPrivateKey;
@protocol JavaSecurityPublicKey;
@protocol JavaxCryptoSecretKey;

#import "JreEmulation.h"

@interface ComKloudtekUtilCryptoCryptoEngine : NSObject {
}

- (id<JavaxCryptoSecretKey>)generateKeyWithComKloudtekUtilCryptoSymmetricAlgorithmEnum:(ComKloudtekUtilCryptoSymmetricAlgorithmEnum *)alg
                                                                               withInt:(int)keysize;
- (id<JavaxCryptoSecretKey>)generateHmacKeyWithComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)algorithm;
- (id<JavaxCryptoSecretKey>)generateAesKeyWithInt:(int)keySize;
- (id<JavaxCryptoSecretKey>)generateAes128Key;
- (id<JavaxCryptoSecretKey>)generateAes256Key;
- (JavaSecurityKeyPair *)generateKeyPairWithComKloudtekUtilCryptoAsymmetricAlgorithmEnum:(ComKloudtekUtilCryptoAsymmetricAlgorithmEnum *)alg
                                                                                 withInt:(int)keysize;
- (JavaSecurityKeyPair *)generateRSA2048KeyPair;
- (JavaSecurityKeyPair *)generateRSA4096KeyPair;
- (id<JavaSecurityInterfacesRSAPublicKey>)readRSAPublicKeyWithByteArray:(IOSByteArray *)key;
- (id<JavaSecurityPrivateKey>)readRSAPrivateKeyWithByteArray:(IOSByteArray *)encodedPriKey;
- (IOSByteArray *)hmacWithComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)algorithm
                                          withJavaxCryptoSecretKey:(id<JavaxCryptoSecretKey>)key
                                                     withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)hmacSha1WithJavaxCryptoSecretKey:(id<JavaxCryptoSecretKey>)key
                                     withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)hmacSha256WithJavaxCryptoSecretKey:(id<JavaxCryptoSecretKey>)key
                                       withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)hmacSha512WithJavaxCryptoSecretKey:(id<JavaxCryptoSecretKey>)key
                                       withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)aesEncryptWithByteArray:(IOSByteArray *)key
                            withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)aesEncryptWithJavaxCryptoSecretKey:(id<JavaxCryptoSecretKey>)key
                                       withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)aesDecryptWithByteArray:(IOSByteArray *)key
                            withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)aesDecryptWithJavaxCryptoSecretKey:(id<JavaxCryptoSecretKey>)key
                                       withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)encryptWithJavaSecurityKey:(id<JavaSecurityKey>)key
                               withByteArray:(IOSByteArray *)data
                                withNSString:(NSString *)alg;
- (IOSByteArray *)decryptWithJavaSecurityKey:(id<JavaSecurityKey>)key
                               withByteArray:(IOSByteArray *)data
                                withNSString:(NSString *)alg;
- (IOSByteArray *)cryptWithJavaSecurityKey:(id<JavaSecurityKey>)key
                             withByteArray:(IOSByteArray *)data
                              withNSString:(NSString *)alg
                                   withInt:(int)mode;
- (IOSByteArray *)rsaEncryptWithByteArray:(IOSByteArray *)key
                            withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)rsaEncryptWithJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)key
                                        withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)rsaDecryptWithByteArray:(IOSByteArray *)key
                            withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)rsaDecryptWithJavaSecurityPrivateKey:(id<JavaSecurityPrivateKey>)key
                                         withByteArray:(IOSByteArray *)data;
- (IOSByteArray *)rsaSignWithComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)digestAlgorithms
                                           withJavaSecurityPrivateKey:(id<JavaSecurityPrivateKey>)key
                                                        withByteArray:(IOSByteArray *)data;
- (void)rsaVerifySignatureWithComKloudtekUtilCryptoDigestAlgorithmEnum:(ComKloudtekUtilCryptoDigestAlgorithmEnum *)digestAlgorithms
                                             withJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)key
                                                         withByteArray:(IOSByteArray *)data
                                                         withByteArray:(IOSByteArray *)signature;
- (IOSByteArray *)signWithNSString:(NSString *)algorithm
        withJavaSecurityPrivateKey:(id<JavaSecurityPrivateKey>)key
                     withByteArray:(IOSByteArray *)data;
- (void)verifySignatureWithNSString:(NSString *)algorithm
          withJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)key
                      withByteArray:(IOSByteArray *)data
                      withByteArray:(IOSByteArray *)signature;
- (id)init;
@end

#endif // _ComKloudtekUtilCryptoCryptoEngine_H_
