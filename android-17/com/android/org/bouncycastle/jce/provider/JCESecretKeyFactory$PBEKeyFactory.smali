.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEKeyFactory"
.end annotation


# instance fields
.field private digest:I

.field private forCipher:Z

.field private ivSize:I

.field private keySize:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V
    .registers 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .param p3, "forCipher"    # Z
    .param p4, "scheme"    # I
    .param p5, "digest"    # I
    .param p6, "keySize"    # I
    .param p7, "ivSize"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 125
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    .line 126
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    .line 127
    iput p5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    .line 128
    iput p6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    .line 129
    iput p7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    .line 130
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 11
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 136
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_4d

    move-object v7, p1

    .line 138
    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    .line 141
    .local v7, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_20

    .line 143
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 155
    :goto_1f
    return-object v0

    .line 146
    :cond_20
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    if-eqz v0, :cond_42

    .line 148
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .line 155
    .local v8, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_30
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1f

    .line 152
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_42
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    invoke-static {v7, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_30

    .line 158
    .end local v7    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
