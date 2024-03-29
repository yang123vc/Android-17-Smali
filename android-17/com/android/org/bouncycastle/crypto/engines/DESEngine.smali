.class public Lcom/android/org/bouncycastle/crypto/engines/DESEngine;
.super Ljava/lang/Object;
.source "DESEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static final SP1:[I

.field private static final SP2:[I

.field private static final SP3:[I

.field private static final SP4:[I

.field private static final SP5:[I

.field private static final SP6:[I

.field private static final SP7:[I

.field private static final SP8:[I

.field private static final bigbyte:[I

.field private static final bytebit:[S

.field private static final pc1:[B

.field private static final pc2:[B

.field private static final totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_68

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    .line 111
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    .line 125
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_a8

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    .line 133
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_c8

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    .line 139
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_d4

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    .line 147
    new-array v0, v1, [I

    fill-array-data v0, :array_f0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    .line 166
    new-array v0, v1, [I

    fill-array-data v0, :array_174

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    .line 185
    new-array v0, v1, [I

    fill-array-data v0, :array_1f8

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    .line 204
    new-array v0, v1, [I

    fill-array-data v0, :array_27c

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    .line 223
    new-array v0, v1, [I

    fill-array-data v0, :array_300

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    .line 242
    new-array v0, v1, [I

    fill-array-data v0, :array_384

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    .line 261
    new-array v0, v1, [I

    fill-array-data v0, :array_408

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    .line 280
    new-array v0, v1, [I

    fill-array-data v0, :array_48c

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    return-void

    .line 106
    :array_68
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    .line 111
    :array_74
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    .line 125
    :array_a8
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    .line 133
    :array_c8
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    .line 139
    :array_d4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    .line 147
    :array_f0
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    .line 166
    :array_174
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    .line 185
    :array_1f8
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    .line 204
    :array_27c
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    .line 223
    :array_300
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100
        0x80000
        0x100
        0x40000000
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100
        0x42080000
        0x80100
        0x40000000
        0x2000000
        0x40080000
        0x40080000
        0x0
        0x40000100
        0x42080100
        0x42080100
        0x2000100
        0x42080000
        0x40000100
        0x0
        0x42000000
        0x2080100
        0x2000000
        0x42000000
        0x80100
        0x80000
        0x42000100
        0x100
        0x2000000
        0x40000000
        0x2080000
        0x42000100
        0x40080100
        0x2000100
        0x40000000
        0x42080000
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000
        0x42080100
        0x80100
        0x42000000
        0x42080100
        0x2080000
        0x0
        0x40080000
        0x42000000
        0x80100
        0x2000100
        0x40000100
        0x80000
        0x0
        0x40080000
        0x2080100
        0x40000100
    .end array-data

    .line 242
    :array_384
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    .line 261
    :array_408
    .array-data 4
        0x200000
        0x4200002
        0x4000802
        0x0
        0x800
        0x4000802
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800
        0x200802
        0x200002
        0x4000800
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802
        0x4000802
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800
        0x800
        0x200002
    .end array-data

    .line 280
    :array_48c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    .line 23
    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .registers 13
    .param p1, "wKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 409
    add-int/lit8 v5, p3, 0x0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x18

    .line 410
    .local v1, "left":I
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    .line 411
    add-int/lit8 v5, p3, 0x2

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    .line 412
    add-int/lit8 v5, p3, 0x3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 414
    add-int/lit8 v5, p3, 0x4

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x18

    .line 415
    .local v2, "right":I
    add-int/lit8 v5, p3, 0x5

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    .line 416
    add-int/lit8 v5, p3, 0x6

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    .line 417
    add-int/lit8 v5, p3, 0x7

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 419
    ushr-int/lit8 v5, v1, 0x4

    xor-int/2addr v5, v2

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 420
    .local v4, "work":I
    xor-int/2addr v2, v4

    .line 421
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v1, v5

    .line 422
    ushr-int/lit8 v5, v1, 0x10

    xor-int/2addr v5, v2

    const v6, 0xffff

    and-int v4, v5, v6

    .line 423
    xor-int/2addr v2, v4

    .line 424
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v1, v5

    .line 425
    ushr-int/lit8 v5, v2, 0x2

    xor-int/2addr v5, v1

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 426
    xor-int/2addr v1, v4

    .line 427
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v2, v5

    .line 428
    ushr-int/lit8 v5, v2, 0x8

    xor-int/2addr v5, v1

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 429
    xor-int/2addr v1, v4

    .line 430
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v2, v5

    .line 431
    shl-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v6, v2, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v2, v5, -0x1

    .line 432
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 433
    xor-int/2addr v1, v4

    .line 434
    xor-int/2addr v2, v4

    .line 435
    shl-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v1, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v1, v5, -0x1

    .line 437
    const/4 v3, 0x0

    .local v3, "round":I
    :goto_8e
    const/16 v5, 0x8

    if-ge v3, v5, :cond_148

    .line 441
    shl-int/lit8 v5, v2, 0x1c

    ushr-int/lit8 v6, v2, 0x4

    or-int v4, v5, v6

    .line 442
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x0

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 443
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 444
    .local v0, "fval":I
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 445
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 446
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 447
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    xor-int v4, v2, v5

    .line 448
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 449
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 450
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 451
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 452
    xor-int/2addr v1, v0

    .line 453
    shl-int/lit8 v5, v1, 0x1c

    ushr-int/lit8 v6, v1, 0x4

    or-int v4, v5, v6

    .line 454
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 455
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 456
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 457
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 458
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 459
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    xor-int v4, v1, v5

    .line 460
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 461
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 462
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 463
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 464
    xor-int/2addr v2, v0

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8e

    .line 467
    .end local v0    # "fval":I
    :cond_148
    shl-int/lit8 v5, v2, 0x1f

    ushr-int/lit8 v6, v2, 0x1

    or-int v2, v5, v6

    .line 468
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 469
    xor-int/2addr v1, v4

    .line 470
    xor-int/2addr v2, v4

    .line 471
    shl-int/lit8 v5, v1, 0x1f

    ushr-int/lit8 v6, v1, 0x1

    or-int v1, v5, v6

    .line 472
    ushr-int/lit8 v5, v1, 0x8

    xor-int/2addr v5, v2

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 473
    xor-int/2addr v2, v4

    .line 474
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v1, v5

    .line 475
    ushr-int/lit8 v5, v1, 0x2

    xor-int/2addr v5, v2

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 476
    xor-int/2addr v2, v4

    .line 477
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v1, v5

    .line 478
    ushr-int/lit8 v5, v2, 0x10

    xor-int/2addr v5, v1

    const v6, 0xffff

    and-int v4, v5, v6

    .line 479
    xor-int/2addr v1, v4

    .line 480
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v2, v5

    .line 481
    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v5, v1

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 482
    xor-int/2addr v1, v4

    .line 483
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v2, v5

    .line 485
    add-int/lit8 v5, p5, 0x0

    ushr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 486
    add-int/lit8 v5, p5, 0x1

    ushr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 487
    add-int/lit8 v5, p5, 0x2

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 488
    add-int/lit8 v5, p5, 0x3

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 489
    add-int/lit8 v5, p5, 0x4

    ushr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 490
    add-int/lit8 v5, p5, 0x5

    ushr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 491
    add-int/lit8 v5, p5, 0x6

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 492
    add-int/lit8 v5, p5, 0x7

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 493
    return-void
.end method

.method protected generateWorkingKey(Z[B)[I
    .registers 16
    .param p1, "encrypting"    # Z
    .param p2, "key"    # [B

    .prologue
    .line 310
    const/16 v10, 0x20

    new-array v7, v10, [I

    .line 311
    .local v7, "newKey":[I
    const/16 v10, 0x38

    new-array v8, v10, [Z

    .line 312
    .local v8, "pc1m":[Z
    const/16 v10, 0x38

    new-array v9, v10, [Z

    .line 314
    .local v9, "pcr":[Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_d
    const/16 v10, 0x38

    if-ge v3, v10, :cond_2a

    .line 316
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    aget-byte v4, v10, v3

    .line 318
    .local v4, "l":I
    ushr-int/lit8 v10, v4, 0x3

    aget-byte v10, p2, v10

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    and-int/lit8 v12, v4, 0x7

    aget-short v11, v11, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_28

    const/4 v10, 0x1

    :goto_23
    aput-boolean v10, v8, v3

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 318
    :cond_28
    const/4 v10, 0x0

    goto :goto_23

    .line 321
    .end local v4    # "l":I
    :cond_2a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    const/16 v10, 0x10

    if-ge v0, v10, :cond_a9

    .line 325
    if-eqz p1, :cond_50

    .line 327
    shl-int/lit8 v5, v0, 0x1

    .line 334
    .local v5, "m":I
    :goto_33
    add-int/lit8 v6, v5, 0x1

    .line 335
    .local v6, "n":I
    const/4 v10, 0x0

    aput v10, v7, v6

    aput v10, v7, v5

    .line 337
    const/4 v3, 0x0

    :goto_3b
    const/16 v10, 0x1c

    if-ge v3, v10, :cond_5c

    .line 339
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 340
    .restart local v4    # "l":I
    const/16 v10, 0x1c

    if-ge v4, v10, :cond_55

    .line 342
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 337
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 331
    .end local v4    # "l":I
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_50
    rsub-int/lit8 v10, v0, 0xf

    shl-int/lit8 v5, v10, 0x1

    .restart local v5    # "m":I
    goto :goto_33

    .line 346
    .restart local v4    # "l":I
    .restart local v6    # "n":I
    :cond_55
    add-int/lit8 v10, v4, -0x1c

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_4d

    .line 350
    .end local v4    # "l":I
    :cond_5c
    const/16 v3, 0x1c

    :goto_5e
    const/16 v10, 0x38

    if-ge v3, v10, :cond_7a

    .line 352
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 353
    .restart local v4    # "l":I
    const/16 v10, 0x38

    if-ge v4, v10, :cond_73

    .line 355
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 350
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 359
    :cond_73
    add-int/lit8 v10, v4, -0x1c

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_70

    .line 363
    .end local v4    # "l":I
    :cond_7a
    const/4 v3, 0x0

    :goto_7b
    const/16 v10, 0x18

    if-ge v3, v10, :cond_a6

    .line 365
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    aget-byte v10, v10, v3

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_90

    .line 367
    aget v10, v7, v5

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v5

    .line 370
    :cond_90
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    add-int/lit8 v11, v3, 0x18

    aget-byte v10, v10, v11

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_a3

    .line 372
    aget v10, v7, v6

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v6

    .line 363
    :cond_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 321
    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 380
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_a9
    const/4 v0, 0x0

    :goto_aa
    const/16 v10, 0x20

    if-eq v0, v10, :cond_e7

    .line 384
    aget v1, v7, v0

    .line 385
    .local v1, "i1":I
    add-int/lit8 v10, v0, 0x1

    aget v2, v7, v10

    .line 387
    .local v2, "i2":I
    const/high16 v10, 0xfc0000

    and-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x6

    and-int/lit16 v11, v1, 0xfc0

    shl-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    const/high16 v11, 0xfc0000

    and-int/2addr v11, v2

    ushr-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    and-int/lit16 v11, v2, 0xfc0

    ushr-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    aput v10, v7, v0

    .line 390
    add-int/lit8 v10, v0, 0x1

    const v11, 0x3f000

    and-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0xc

    and-int/lit8 v12, v1, 0x3f

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const v12, 0x3f000

    and-int/2addr v12, v2

    ushr-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    and-int/lit8 v12, v2, 0x3f

    or-int/2addr v11, v12

    aput v11, v7, v10

    .line 380
    add-int/lit8 v0, v0, 0x2

    goto :goto_aa

    .line 394
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    :cond_e7
    return-object v7
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 60
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 37
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_25

    move-object v0, p2

    .line 39
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_18

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key too long - should be 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_18
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    .line 47
    return-void

    .line 50
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DES init - "

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
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    if-nez v0, :cond_c

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_c
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_19

    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_19
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_26

    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_26
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->desFunc([I[BI[BI)V

    .line 86
    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method
