.class public Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCERSACipher$NoPadding;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private privateKeyOnly:Z

.field private publicKeyOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 5
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 43
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 56
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_12
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_12} :catch_13

    .line 62
    return-void

    .line 58
    :catch_13
    move-exception v0

    .line 60
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ZZLcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 5
    .param p1, "publicKeyOnly"    # Z
    .param p2, "privateKeyOnly"    # Z
    .param p3, "engine"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 69
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 70
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 71
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 72
    return-void
.end method

.method private initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 7
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    .line 79
    .local v1, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 81
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v0, :cond_2d

    .line 83
    new-instance v2, Ljavax/crypto/NoSuchPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_2d
    new-instance v3, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v2

    check-cast v2, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v2}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v2

    invoke-direct {v3, v4, v0, v2}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 87
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 88
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 483
    if-eqz p1, :cond_7

    .line 485
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 488
    :cond_7
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v4, v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v4, :cond_25

    .line 490
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_3b

    .line 492
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "too much data for RSA block"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_25
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v5

    if-le v4, v5, :cond_3b

    .line 499
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "too much data for RSA block"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 507
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 508
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 510
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-interface {v4, v0, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_4d
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3b .. :try_end_4d} :catch_5b

    move-result-object v3

    .line 517
    .local v3, "out":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4f
    array-length v4, v3

    if-eq v2, v4, :cond_66

    .line 519
    add-int v4, p5, v2

    aget-byte v5, v3, v2

    aput-byte v5, p4, v4

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 512
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "out":[B
    :catch_5b
    move-exception v1

    .line 514
    .local v1, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v4, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    .end local v1    # "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    .restart local v0    # "bytes":[B
    .restart local v2    # "i":I
    .restart local v3    # "out":[B
    :cond_66
    array-length v4, v3

    return v4
.end method

.method protected engineDoFinal([BII)[B
    .registers 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p1, :cond_7

    .line 443
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 446
    :cond_7
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v2, v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v2, :cond_25

    .line 448
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_3b

    .line 450
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "too much data for RSA block"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_25
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_3b

    .line 457
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "too much data for RSA block"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_3b
    :try_start_3b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 465
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 467
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_4d
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3b .. :try_end_4d} :catch_4f

    move-result-object v2

    return-object v2

    .line 469
    .end local v0    # "bytes":[B
    :catch_4f
    move-exception v1

    .line 471
    .local v1, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetBlockSize()I
    .registers 4

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 96
    :catch_7
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 5
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 110
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 112
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 114
    .local v0, "k":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 120
    .end local v0    # "k":Ljava/security/interfaces/RSAPrivateKey;
    :goto_f
    return v1

    .line 116
    :cond_10
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_20

    move-object v0, p1

    .line 118
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 120
    .local v0, "k":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_f

    .line 123
    .end local v0    # "k":Ljava/security/interfaces/RSAPublicKey;
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not an RSA key!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetOutputSize(I)I
    .registers 5
    .param p1, "inputLen"    # I

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 133
    :catch_7
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_19

    .line 143
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v1, :cond_19

    .line 147
    :try_start_8
    const-string v1, "OAEP"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 148
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1c

    .line 157
    :cond_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 150
    :catch_1c
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_9

    .line 354
    :try_start_3
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_8
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3 .. :try_end_8} :catch_f

    move-result-object v1

    .line 362
    :cond_9
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 363
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 364
    return-void

    .line 356
    :catch_f
    move-exception v0

    .line 358
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot recognise parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 381
    return-void

    .line 376
    :catch_7
    move-exception v0

    .line 379
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eeeek! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 14
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p3, :cond_6

    instance-of v6, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v6, :cond_111

    .line 250
    :cond_6
    instance-of v6, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v6, :cond_48

    .line 252
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    if-eqz v6, :cond_16

    .line 254
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "mode 1 requires RSAPrivateKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 258
    :cond_16
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v4, v3

    .line 275
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1d
    if-eqz p3, :cond_e2

    move-object v5, p3

    .line 277
    check-cast v5, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 279
    .local v5, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 281
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MGF1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_68

    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 283
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "unknown mask generation function specified"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 260
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v5    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    .restart local p2    # "key":Ljava/security/Key;
    :cond_48
    instance-of v6, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v6, :cond_60

    .line 262
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    if-eqz v6, :cond_58

    .line 264
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "mode 2 requires RSAPublicKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    :cond_58
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v4, v3

    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1d

    .line 272
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "key":Ljava/security/Key;
    :cond_60
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "unknown key type passed to RSA"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 286
    .end local p2    # "key":Ljava/security/Key;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v5    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_68
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v6

    instance-of v6, v6, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v6, :cond_78

    .line 288
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "unkown MGF parameters"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 291
    :cond_78
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 293
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v0, :cond_9f

    .line 295
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no match on digest algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 298
    :cond_9f
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    .line 299
    .local v2, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 301
    .local v1, "mgfDigest":Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v1, :cond_cc

    .line 303
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no match on MGF digest algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 306
    :cond_cc
    new-instance v7, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v8, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v6

    check-cast v6, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v6}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v6

    invoke-direct {v7, v8, v0, v1, v6}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 314
    .end local v0    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v1    # "mgfDigest":Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v2    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v5    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_e2
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v6, v6, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-nez v6, :cond_132

    .line 316
    if-eqz p4, :cond_119

    .line 318
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v3, v4, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 326
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_ef
    packed-switch p1, :pswitch_data_134

    .line 337
    new-instance v6, Ljava/security/InvalidParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown opmode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " passed to RSA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "key":Ljava/security/Key;
    :cond_111
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "unknown parameter type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 322
    .end local p2    # "key":Ljava/security/Key;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_119
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v3, v4, v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_ef

    .line 330
    :pswitch_124
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v7, 0x1

    invoke-interface {v6, v7, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 339
    :goto_12a
    return-void

    .line 334
    :pswitch_12b
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_12a

    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_132
    move-object v3, v4

    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_ef

    .line 326
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_124
        :pswitch_12b
        :pswitch_124
        :pswitch_12b
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "md":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 181
    :cond_16
    :goto_16
    return-void

    .line 171
    :cond_17
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 173
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    goto :goto_16

    .line 177
    :cond_24
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 179
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 180
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    goto :goto_16

    .line 184
    :cond_31
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 8
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "pad":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 195
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 237
    :goto_13
    return-void

    .line 197
    :cond_14
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 199
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto :goto_13

    .line 201
    :cond_29
    const-string v1, "ISO9796-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 203
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto :goto_13

    .line 205
    :cond_3e
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 207
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "MD5"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "MD5"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_13

    .line 209
    :cond_5c
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 211
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_13

    .line 213
    :cond_6a
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 215
    :cond_7a
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_13

    .line 217
    :cond_80
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 219
    :cond_90
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-224"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "SHA-224"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 221
    :cond_a7
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 223
    :cond_b7
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 225
    :cond_c9
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 227
    :cond_d9
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-384"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 229
    :cond_eb
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 231
    :cond_fb
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 235
    :cond_10d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unavailable with RSA."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .registers 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 417
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v0, :cond_23

    .line 419
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_39

    .line 421
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_39

    .line 428
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 390
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v0, :cond_23

    .line 392
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_39

    .line 394
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_39

    .line 401
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method
