.class public Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;
.source "X9IntegerConverter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteLength(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I
    .registers 3
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I
    .registers 3
    .param p1, "fe"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public integerToBytes(Ljava/math/BigInteger;I)[B
    .registers 8
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "qLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 28
    .local v0, "bytes":[B
    array-length v2, v0

    if-ge p2, v2, :cond_12

    .line 30
    new-array v1, p2, [B

    .line 32
    .local v1, "tmp":[B
    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .end local v1    # "tmp":[B
    :goto_11
    return-object v1

    .line 36
    :cond_12
    array-length v2, v0

    if-le p2, v2, :cond_1f

    .line 38
    new-array v1, p2, [B

    .line 40
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    .end local v1    # "tmp":[B
    :cond_1f
    move-object v1, v0

    .line 45
    goto :goto_11
.end method
