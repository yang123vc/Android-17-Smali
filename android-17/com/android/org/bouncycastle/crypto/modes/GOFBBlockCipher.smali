.class public Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;
.super Ljava/lang/Object;
.source "GOFBBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field static final C1:I = 0x1010104

.field static final C2:I = 0x1010101


# instance fields
.field private IV:[B

.field N3:I

.field N4:I

.field private final blockSize:I

.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field firstStep:Z

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 37
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 38
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    .line 40
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GCTR only for 64 bit block ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1c
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    .line 46
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    .line 47
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    .line 48
    return-void
.end method

.method private bytesToint([BI)I
    .registers 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 211
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private intTobytes(I[BI)V
    .registers 6
    .param p1, "num"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 221
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 222
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 223
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 224
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 225
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 11
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    iput-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 77
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 78
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 80
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_48

    move-object v2, p2

    .line 82
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 83
    .local v2, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 85
    .local v1, "iv":[B
    array-length v3, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_33

    .line 88
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_3b

    .line 91
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 96
    .end local v0    # "i":I
    :cond_33
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :cond_3b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 101
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 109
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :goto_47
    return-void

    .line 105
    :cond_48
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 107
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_47
.end method

.method public processBlock([BI[BI)I
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 153
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_10

    .line 155
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_10
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1e

    .line 160
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1e
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    if-eqz v1, :cond_3d

    .line 165
    iput-boolean v6, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 166
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 167
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v6}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 168
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v4}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 170
    :cond_3d
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    const v2, 0x1010101

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 171
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    const v2, 0x1010104

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 172
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v6}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 173
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 175
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_65
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_7a

    .line 183
    add-int v1, p4, v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 189
    :cond_7a
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v1
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 204
    return-void
.end method
