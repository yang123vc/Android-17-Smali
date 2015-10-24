.class public Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 52
    array-length v4, p1

    sub-int v1, v4, p2

    .line 55
    .local v1, "count":I
    if-lez p2, :cond_1b

    .line 57
    add-int/lit8 v4, p2, -0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_19

    :goto_10
    int-to-byte v0, v2

    .line 64
    .local v0, "code":B
    :goto_11
    array-length v2, p1

    if-ge p2, v2, :cond_28

    .line 66
    aput-byte v0, p1, p2

    .line 67
    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    .end local v0    # "code":B
    :cond_19
    move v2, v3

    .line 57
    goto :goto_10

    .line 61
    :cond_1b
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_26

    :goto_24
    int-to-byte v0, v2

    .restart local v0    # "code":B
    goto :goto_11

    .end local v0    # "code":B
    :cond_26
    move v2, v3

    goto :goto_24

    .line 70
    .restart local v0    # "code":B
    :cond_28
    return v1
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "TBC"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method public padCount([B)I
    .registers 5
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 79
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, p1, v2

    .line 81
    .local v0, "code":B
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .line 82
    .local v1, "index":I
    :goto_8
    if-lez v1, :cond_13

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    if-ne v2, v0, :cond_13

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 87
    :cond_13
    array-length v2, p1

    sub-int/2addr v2, v1

    return v2
.end method
