.class public abstract Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory$DSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory$DH;,
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory$RSA;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 57
    return-void
.end method

.method protected static createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;
    .registers 3
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method static createPrivateKeyFromPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .registers 5
    .param p0, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 316
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->isRsaOid(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 318
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 340
    :goto_13
    return-object v1

    .line 320
    :cond_14
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 322
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_13

    .line 324
    :cond_22
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 326
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_13

    .line 334
    :cond_30
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 336
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_13

    .line 338
    :cond_3e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 340
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_13

    .line 354
    :cond_4c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createPublicKeyFromDERStream([B)Ljava/security/PublicKey;
    .registers 3
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method static createPublicKeyFromPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .registers 5
    .param p0, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 252
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->isRsaOid(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 254
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 280
    :goto_13
    return-object v1

    .line 256
    :cond_14
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 258
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 260
    :cond_22
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 262
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 270
    :cond_30
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 272
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 274
    :cond_3e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 276
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 278
    :cond_4c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 280
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 293
    :cond_5a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 63
    instance-of v1, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v1, :cond_1a

    .line 67
    :try_start_4
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 70
    :catch_f
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1a
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown KeySpec type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 83
    instance-of v1, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v1, :cond_1a

    .line 87
    :try_start_4
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 90
    :catch_f
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1a
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown KeySpec type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 13
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "spec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 104
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS#8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 106
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 158
    :goto_1d
    return-object v0

    .line 108
    :cond_1e
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 110
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_1d

    .line 112
    :cond_3c
    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_59

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_59

    move-object v9, p1

    .line 114
    check-cast v9, Ljava/security/interfaces/RSAPublicKey;

    .line 116
    .local v9, "k":Ljava/security/interfaces/RSAPublicKey;
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_1d

    .line 118
    .end local v9    # "k":Ljava/security/interfaces/RSAPublicKey;
    :cond_59
    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_76

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_76

    move-object v9, p1

    .line 120
    check-cast v9, Ljava/security/interfaces/RSAPrivateKey;

    .line 122
    .local v9, "k":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_1d

    .line 124
    .end local v9    # "k":Ljava/security/interfaces/RSAPrivateKey;
    :cond_76
    const-class v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_ac

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_ac

    move-object v9, p1

    .line 126
    check-cast v9, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 128
    .local v9, "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 135
    .end local v9    # "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_ac
    const-class v0, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d6

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_d6

    move-object v9, p1

    .line 137
    check-cast v9, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 139
    .local v9, "k":Ljavax/crypto/interfaces/DHPrivateKey;
    new-instance v0, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-interface {v9}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v9}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 141
    .end local v9    # "k":Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_d6
    const-class v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_100

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_100

    move-object v9, p1

    .line 143
    check-cast v9, Ljavax/crypto/interfaces/DHPublicKey;

    .line 145
    .local v9, "k":Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {v9}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v9}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 148
    .end local v9    # "k":Ljavax/crypto/interfaces/DHPublicKey;
    :cond_100
    const-class v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_132

    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_132

    move-object v9, p1

    .line 150
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    .line 152
    .local v9, "k":Ljava/security/interfaces/DSAPublicKey;
    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 154
    .end local v9    # "k":Ljava/security/interfaces/DSAPublicKey;
    :cond_132
    const-class v0, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_164

    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_164

    move-object v9, p1

    .line 156
    check-cast v9, Ljava/security/interfaces/DSAPrivateKey;

    .line 158
    .local v9, "k":Ljava/security/interfaces/DSAPrivateKey;
    new-instance v0, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v9}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v9}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 162
    .end local v9    # "k":Ljava/security/interfaces/DSAPrivateKey;
    :cond_164
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented yet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 169
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_c

    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 217
    :goto_b
    return-object v0

    .line 173
    .restart local p1    # "key":Ljava/security/Key;
    :cond_c
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_18

    .line 175
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V

    goto :goto_b

    .line 177
    .restart local p1    # "key":Ljava/security/Key;
    :cond_18
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_24

    .line 179
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateKey;)V

    goto :goto_b

    .line 181
    .restart local p1    # "key":Ljava/security/Key;
    :cond_24
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_30

    .line 191
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Ljavax/crypto/interfaces/DHPublicKey;)V

    goto :goto_b

    .line 196
    .restart local p1    # "key":Ljava/security/Key;
    :cond_30
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_3c

    .line 206
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Ljavax/crypto/interfaces/DHPrivateKey;)V

    goto :goto_b

    .line 211
    .restart local p1    # "key":Ljava/security/Key;
    :cond_3c
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_48

    .line 213
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    goto :goto_b

    .line 215
    .restart local p1    # "key":Ljava/security/Key;
    :cond_48
    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_54

    .line 217
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;

    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;)V

    goto :goto_b

    .line 230
    .restart local p1    # "key":Ljava/security/Key;
    :cond_54
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
