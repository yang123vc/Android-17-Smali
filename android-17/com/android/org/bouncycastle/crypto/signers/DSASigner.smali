.class public Lcom/android/org/bouncycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/DSA;


# instance fields
.field key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_11

    .line 127
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 135
    :goto_10
    return-object v1

    .line 131
    :cond_11
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 133
    .local v0, "trunc":[B
    array-length v1, v0

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_10
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .registers 11
    .param p1, "message"    # [B

    .prologue
    .line 60
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v2

    .line 61
    .local v2, "params":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v1

    .line 63
    .local v1, "m":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 67
    .local v3, "qBitLength":I
    :cond_16
    new-instance v0, Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v3, v7}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 69
    .local v0, "k":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_16

    .line 71
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 73
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 76
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 78
    .local v6, "s":Ljava/math/BigInteger;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/math/BigInteger;

    .line 80
    .local v5, "res":[Ljava/math/BigInteger;
    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 81
    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 83
    return-object v5
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 29
    if-eqz p1, :cond_24

    .line 31
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_18

    move-object v0, p2

    .line 33
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 35
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 36
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    .line 48
    .end local v0    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_17
    return-void

    .line 40
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_18
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 41
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_17

    .line 46
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_24
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_17
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 14
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    .line 96
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 97
    .local v1, "params":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 98
    .local v0, "m":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 100
    .local v6, "zero":Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_25

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gtz v8, :cond_26

    .line 120
    :cond_25
    :goto_25
    return v7

    .line 105
    :cond_26
    invoke-virtual {v6, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_25

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-lez v8, :cond_25

    .line 110
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 112
    .local v5, "w":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 113
    .local v2, "u1":Ljava/math/BigInteger;
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 115
    .local v3, "u2":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 116
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 120
    .local v4, "v":Ljava/math/BigInteger;
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_25
.end method
