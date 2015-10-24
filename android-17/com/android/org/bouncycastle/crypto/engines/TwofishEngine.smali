.class public final Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x100

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_18
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_9c
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 12

    .prologue
    const/4 v6, 0x2

    const/16 v10, 0x100

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 208
    new-array v5, v10, [I

    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    .line 209
    new-array v5, v10, [I

    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    .line 210
    new-array v5, v10, [I

    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    .line 211
    new-array v5, v10, [I

    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    .line 220
    iput v8, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 222
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 227
    new-array v2, v6, [I

    .line 228
    .local v2, "m1":[I
    new-array v3, v6, [I

    .line 229
    .local v3, "mX":[I
    new-array v4, v6, [I

    .line 232
    .local v4, "mY":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    if-ge v0, v10, :cond_b4

    .line 234
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v8

    aget-byte v5, v5, v0

    and-int/lit16 v1, v5, 0xff

    .line 235
    .local v1, "j":I
    aput v1, v2, v8

    .line 236
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v8

    .line 237
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v8

    .line 239
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v9

    aget-byte v5, v5, v0

    and-int/lit16 v1, v5, 0xff

    .line 240
    aput v1, v2, v9

    .line 241
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v9

    .line 242
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v9

    .line 244
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v6, v2, v9

    aget v7, v3, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 247
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v6, v4, v8

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 250
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v6, v3, v9

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v2, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 253
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v6, v3, v8

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    .line 256
    .end local v1    # "j":I
    :cond_b4
    return-void
.end method

.method private Bits32ToBytes(I[BI)V
    .registers 6
    .param p1, "in"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 672
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 673
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 674
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 675
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 676
    return-void
.end method

.method private BytesTo32Bits([BI)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "p"    # I

    .prologue
    .line 664
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private F32(I[I)I
    .registers 17
    .param p1, "x"    # I
    .param p2, "k32"    # [I

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v0

    .line 523
    .local v0, "b0":I
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v1

    .line 524
    .local v1, "b1":I
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    .line 525
    .local v2, "b2":I
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v3

    .line 526
    .local v3, "b3":I
    const/4 v9, 0x0

    aget v4, p2, v9

    .line 527
    .local v4, "k0":I
    const/4 v9, 0x1

    aget v5, p2, v9

    .line 528
    .local v5, "k1":I
    const/4 v9, 0x2

    aget v6, p2, v9

    .line 529
    .local v6, "k2":I
    const/4 v9, 0x3

    aget v7, p2, v9

    .line 531
    .local v7, "k3":I
    const/4 v8, 0x0

    .line 532
    .local v8, "result":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_170

    .line 558
    :goto_24
    return v8

    .line 535
    :pswitch_25
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-byte v10, v10, v0

    and-int/lit16 v10, v10, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v1

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v3

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 539
    goto :goto_24

    .line 541
    :pswitch_72
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 542
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 543
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 544
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 546
    :pswitch_ae
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 547
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 548
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 549
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 551
    :pswitch_ea
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v0

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v1

    and-int/lit16 v12, v12, 0xff

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-byte v12, v12, v2

    and-int/lit16 v12, v12, 0xff

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    goto/16 :goto_24

    .line 532
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_72
        :pswitch_25
        :pswitch_ea
        :pswitch_ae
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .registers 5
    .param p1, "x"    # I

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Fe32_3(I)I
    .registers 5
    .param p1, "x"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR1(I)I
    .registers 4
    .param p1, "x"    # I

    .prologue
    .line 605
    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    const/16 v0, 0xb4

    :goto_8
    xor-int/2addr v0, v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private LFSR2(I)I
    .registers 5
    .param p1, "x"    # I

    .prologue
    const/4 v0, 0x0

    .line 611
    shr-int/lit8 v2, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_12

    const/16 v1, 0xb4

    :goto_9
    xor-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_10

    const/16 v0, 0x5a

    :cond_10
    xor-int/2addr v0, v1

    return v0

    :cond_12
    move v1, v0

    goto :goto_9
.end method

.method private Mx_X(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Mx_Y(I)I
    .registers 4
    .param p1, "x"    # I

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private RS_MDS_Encode(II)I
    .registers 6
    .param p1, "k0"    # I
    .param p2, "k1"    # I

    .prologue
    const/4 v2, 0x4

    .line 572
    move v1, p2

    .line 573
    .local v1, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_c

    .line 575
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 577
    :cond_c
    xor-int/2addr v1, p1

    .line 578
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_17

    .line 580
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 583
    :cond_17
    return v1
.end method

.method private RS_rem(I)I
    .registers 8
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x0

    .line 595
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v0, v4, 0xff

    .line 596
    .local v0, "b":I
    shl-int/lit8 v5, v0, 0x1

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_28

    const/16 v4, 0x14d

    :goto_d
    xor-int/2addr v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 598
    .local v1, "g2":I
    ushr-int/lit8 v4, v0, 0x1

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_18

    const/16 v3, 0xa6

    :cond_18
    xor-int/2addr v3, v4

    xor-int v2, v3, v1

    .line 600
    .local v2, "g3":I
    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v2, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x10

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3

    .end local v1    # "g2":I
    .end local v2    # "g3":I
    :cond_28
    move v4, v3

    .line 596
    goto :goto_d
.end method

.method private b0(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 628
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private b1(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 633
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b2(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 638
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b3(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 643
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .registers 19
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    .prologue
    .line 487
    invoke-direct/range {p0 .. p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 488
    .local v9, "x2":I
    add-int/lit8 v11, p2, 0x4

    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    xor-int v10, v11, v12

    .line 489
    .local v10, "x3":I
    add-int/lit8 v11, p2, 0x8

    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 490
    .local v7, "x0":I
    add-int/lit8 v11, p2, 0xc

    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 492
    .local v8, "x1":I
    const/16 v2, 0x27

    .line 494
    .local v2, "k":I
    const/4 v4, 0x0

    .local v4, "r":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_36
    const/16 v11, 0x10

    if-ge v4, v11, :cond_8f

    .line 496
    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 497
    .local v5, "t0":I
    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 498
    .local v6, "t1":I
    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v8, v11

    .line 499
    shl-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v12, v7, 0x1f

    or-int/2addr v11, v12

    add-int v12, v5, v6

    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, -0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v7, v11, v12

    .line 500
    ushr-int/lit8 v11, v8, 0x1

    shl-int/lit8 v12, v8, 0x1f

    or-int v8, v11, v12

    .line 502
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 503
    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 504
    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v10, v11

    .line 505
    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    add-int v12, v5, v6

    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, -0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v9, v11, v12

    .line 506
    ushr-int/lit8 v11, v10, 0x1

    shl-int/lit8 v12, v10, 0x1f

    or-int v10, v11, v12

    .line 494
    add-int/lit8 v4, v4, 0x2

    goto :goto_36

    .line 509
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_8f
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    xor-int/2addr v11, v7

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v11, v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 510
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    xor-int/2addr v11, v8

    add-int/lit8 v12, p4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 511
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    xor-int/2addr v11, v9

    add-int/lit8 v12, p4, 0x8

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 512
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    xor-int/2addr v11, v10

    add-int/lit8 v12, p4, 0xc

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 513
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .registers 19
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    .prologue
    .line 448
    invoke-direct/range {p0 .. p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 449
    .local v7, "x0":I
    add-int/lit8 v11, p2, 0x4

    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 450
    .local v8, "x1":I
    add-int/lit8 v11, p2, 0x8

    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 451
    .local v9, "x2":I
    add-int/lit8 v11, p2, 0xc

    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v10, v11, v12

    .line 453
    .local v10, "x3":I
    const/16 v2, 0x8

    .line 455
    .local v2, "k":I
    const/4 v4, 0x0

    .local v4, "r":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_36
    const/16 v11, 0x10

    if-ge v4, v11, :cond_8f

    .line 457
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 458
    .local v5, "t0":I
    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 459
    .local v6, "t1":I
    add-int v11, v5, v6

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v9, v11

    .line 460
    ushr-int/lit8 v11, v9, 0x1

    shl-int/lit8 v12, v9, 0x1f

    or-int v9, v11, v12

    .line 461
    shl-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v10, 0x1f

    or-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v10, v11, v12

    .line 463
    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 464
    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 465
    add-int v11, v5, v6

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v7, v11

    .line 466
    ushr-int/lit8 v11, v7, 0x1

    shl-int/lit8 v12, v7, 0x1f

    or-int v7, v11, v12

    .line 467
    shl-int/lit8 v11, v8, 0x1

    ushr-int/lit8 v12, v8, 0x1f

    or-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v8, v11, v12

    .line 455
    add-int/lit8 v4, v4, 0x2

    goto :goto_36

    .line 470
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_8f
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    xor-int/2addr v11, v9

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v11, v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 471
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    xor-int/2addr v11, v10

    add-int/lit8 v12, p4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 472
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x6

    aget v11, v11, v12

    xor-int/2addr v11, v7

    add-int/lit8 v12, p4, 0x8

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 473
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    xor-int/2addr v11, v8

    add-int/lit8 v12, p4, 0xc

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 474
    return-void
.end method

.method private setKey([B)V
    .registers 27
    .param p1, "key"    # [B

    .prologue
    .line 340
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v14, v0, [I

    .line 341
    .local v14, "k32e":[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v15, v0, [I

    .line 343
    .local v15, "k32o":[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 344
    .local v18, "sBoxKeys":[I
    const/16 v19, 0x28

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_38

    .line 348
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Key size less than 64 bits"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 351
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4e

    .line 353
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Key size larger than 256 bits"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 362
    :cond_4e
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_92

    .line 364
    mul-int/lit8 v16, v9, 0x8

    .line 366
    .local v16, "p":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v19

    aput v19, v14, v9

    .line 367
    add-int/lit8 v19, v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v19

    aput v19, v15, v9

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v19, v19, v9

    aget v20, v14, v9

    aget v21, v15, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v20

    aput v20, v18, v19

    .line 362
    add-int/lit8 v9, v9, 0x1

    goto :goto_4f

    .line 373
    .end local v16    # "p":I
    :cond_92
    const/4 v9, 0x0

    :goto_93
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v9, v0, :cond_da

    .line 375
    const v19, 0x2020202

    mul-int v17, v9, v19

    .line 376
    .local v17, "q":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v3

    .line 377
    .local v3, "A":I
    const v19, 0x1010101

    add-int v19, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v4

    .line 378
    .local v4, "B":I
    shl-int/lit8 v19, v4, 0x8

    ushr-int/lit8 v20, v4, 0x18

    or-int v4, v19, v20

    .line 379
    add-int/2addr v3, v4

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    aput v3, v19, v20

    .line 381
    add-int/2addr v3, v4

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    shl-int/lit8 v21, v3, 0x9

    ushr-int/lit8 v22, v3, 0x17

    or-int v21, v21, v22

    aput v21, v19, v20

    .line 373
    add-int/lit8 v9, v9, 0x1

    goto :goto_93

    .line 388
    .end local v3    # "A":I
    .end local v4    # "B":I
    .end local v17    # "q":I
    :cond_da
    const/16 v19, 0x0

    aget v10, v18, v19

    .line 389
    .local v10, "k0":I
    const/16 v19, 0x1

    aget v11, v18, v19

    .line 390
    .local v11, "k1":I
    const/16 v19, 0x2

    aget v12, v18, v19

    .line 391
    .local v12, "k2":I
    const/16 v19, 0x3

    aget v13, v18, v19

    .line 393
    .local v13, "k3":I
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    .line 394
    const/4 v9, 0x0

    :goto_f9
    const/16 v19, 0x100

    move/from16 v0, v19

    if-ge v9, v0, :cond_379

    .line 396
    move v8, v9

    .local v8, "b3":I
    move v7, v9

    .local v7, "b2":I
    move v6, v9

    .local v6, "b1":I
    move v5, v9

    .line 397
    .local v5, "b0":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x3

    packed-switch v19, :pswitch_data_37a

    .line 394
    :goto_10e
    add-int/lit8 v9, v9, 0x1

    goto :goto_f9

    .line 400
    :pswitch_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    aget-byte v22, v22, v5

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    aget-byte v22, v22, v7

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x201

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    aget-byte v22, v22, v8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    goto/16 :goto_10e

    .line 406
    :pswitch_1c1
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v5

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v5, v19, v20

    .line 407
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v6, v19, v20

    .line 408
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v19, v20

    .line 409
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v20

    xor-int v8, v19, v20

    .line 411
    :pswitch_219
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v5

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v5, v19, v20

    .line 412
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v6, v19, v20

    .line 413
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v19, v20

    .line 414
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v20

    xor-int v8, v19, v20

    .line 416
    :pswitch_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aget-byte v23, v23, v5

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x1

    aget-object v23, v23, v24

    aget-byte v23, v23, v6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x201

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x1

    aget-object v23, v23, v24

    aget-byte v23, v23, v8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    goto/16 :goto_10e

    .line 432
    .end local v5    # "b0":I
    .end local v6    # "b1":I
    .end local v7    # "b2":I
    .end local v8    # "b3":I
    :cond_379
    return-void

    .line 397
    :pswitch_data_37a
    .packed-switch 0x0
        :pswitch_1c1
        :pswitch_111
        :pswitch_271
        :pswitch_219
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 331
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 270
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1b

    .line 272
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 273
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 274
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 275
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 277
    return-void

    .line 280
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Twofish init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .registers 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-nez v0, :cond_c

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_c
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_19

    .line 301
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_19
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_26

    .line 306
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_26
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_30

    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    .line 318
    :goto_2d
    const/16 v0, 0x10

    return v0

    .line 315
    :cond_30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    goto :goto_2d
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 327
    :cond_9
    return-void
.end method
