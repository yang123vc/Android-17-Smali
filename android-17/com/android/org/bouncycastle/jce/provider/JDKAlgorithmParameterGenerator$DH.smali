.class public Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
.super Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# instance fields
.field private l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .prologue
    const/16 v6, 0x14

    .line 70
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 72
    .local v2, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_31

    .line 74
    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->strength:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 81
    :goto_12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 87
    .local v1, "p":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    :try_start_16
    const-string v4, "DH"

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 88
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_3c

    .line 95
    return-object v3

    .line 78
    .end local v1    # "p":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :cond_31
    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->strength:I

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_12

    .line 90
    .restart local v1    # "p":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    :catch_3c
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 57
    instance-of v1, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-nez v1, :cond_c

    .line 59
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v0, p1

    .line 61
    check-cast v0, Ljavax/crypto/spec/DHGenParameterSpec;

    .line 63
    .local v0, "spec":Ljavax/crypto/spec/DHGenParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->strength:I

    .line 64
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    .line 65
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 66
    return-void
.end method
