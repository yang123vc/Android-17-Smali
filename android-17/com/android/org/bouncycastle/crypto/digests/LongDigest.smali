.class public abstract Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "LongDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 332
    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    return-void

    :array_a
    .array-data 8
        0x428a2f98d728ae22L
        0x7137449123ef65cdL
        -0x4a3f043013b2c4d1L
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L
        -0x6dc07d5b50e6b065L
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL
        0x12835b0145706fbeL
        0x243185be4ee4b28cL
        0x550c7dc3d5ffb4e2L
        0x72be5d74f27b896fL
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL
        -0x1b64963e610eb52eL
        -0x1041b879c7b0da1dL
        0xfc19dc68b8cd5b5L
        0x240ca1cc77ac9c65L
        0x2de92c6f592b0275L
        0x4a7484aa6ea6e483L
        0x5cb0a9dcbd41fbd4L
        0x76f988da831153b5L
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L
        -0x4ffcd8376704dec1L
        -0x40a680384110f11cL
        -0x391ff40cc257703eL
        -0x2a586eb86cf558dbL
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L
        0x4d2c6dfc5ac42aedL
        0x53380d139d95b3dfL
        0x650a73548baf63deL
        0x766a0abb3c77b2a8L
        -0x7e3d36d1b812511aL
        -0x6d8dd37aeb7dcac5L
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL
        -0x3893ae5cf9ab41d0L
        -0x2e6d17e62910ade8L
        -0x2966f9dbaa9a56f0L
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L
        0x2748774cdf8eeb99L
        0x34b0bcb5e19b48a8L
        0x391c0cb3c5c95a63L
        0x4ed8aa4ae3418acbL
        0x5b9cca4f7763e373L
        0x682e6ff3d6b2b8a3L
        0x748f82ee5defb2fcL
        0x78a5636f43172f60L
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L
        -0x5baf9314217d4217L
        -0x41065c084d3986ebL
        -0x398e870d1c8dacd5L
        -0x35d8c13115d99e64L
        -0x2e794738de3f3df9L
        -0x15258229321f14e2L
        -0xa82b08011912e88L
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L
        0x32caab7b40c72493L
        0x3c9ebe0a15c9bebcL
        0x431d67c49c100d4cL
        0x4cc5d4becb3e42b6L
        0x597f299cfc657e2aL
        0x5fcb6fab3ad6faecL
        0x6c44198c4a475817L
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 33
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V
    .registers 6
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/LongDigest;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 43
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 44
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 47
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 48
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 50
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 51
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 52
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 53
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 54
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 55
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 56
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 57
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 59
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 61
    return-void
.end method

.method private Ch(JJJ)J
    .registers 11
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 293
    and-long v0, p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v2, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Maj(JJJ)J
    .registers 11
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 301
    and-long v0, p1, p3

    and-long v2, p1, p5

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma0(J)J
    .registers 9
    .param p1, "x"    # J

    .prologue
    .line 319
    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma1(J)J
    .registers 9
    .param p1, "x"    # J

    .prologue
    .line 325
    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum0(J)J
    .registers 9
    .param p1, "x"    # J

    .prologue
    .line 307
    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum1(J)J
    .registers 9
    .param p1, "x"    # J

    .prologue
    .line 313
    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private adjustByteCounts()V
    .registers 8

    .prologue
    const-wide v5, 0x1fffffffffffffffL

    .line 180
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1a

    .line 182
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 183
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 185
    :cond_1a
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 8

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 121
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/4 v6, 0x3

    shl-long v2, v4, v6

    .line 122
    .local v2, "lowBitLength":J
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 127
    .local v0, "hiBitLength":J
    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 129
    :goto_f
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v4, :cond_18

    .line 131
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    goto :goto_f

    .line 134
    :cond_18
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    .line 136
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 137
    return-void
.end method

.method public getByteLength()I
    .registers 2

    .prologue
    .line 159
    const/16 v0, 0x80

    return v0
.end method

.method protected processBlock()V
    .registers 38

    .prologue
    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 207
    const/16 v33, 0x10

    .local v33, "t":I
    :goto_5
    const/16 v3, 0x4f

    move/from16 v0, v33

    if-gt v0, v3, :cond_4a

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v17, v33, -0x2

    aget-wide v23, v10, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v17, v33, -0x7

    aget-wide v25, v10, v17

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v17, v33, -0xf

    aget-wide v25, v10, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    move-result-wide v25

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v17, v33, -0x10

    aget-wide v25, v10, v17

    add-long v23, v23, v25

    aput-wide v23, v3, v33

    .line 207
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    .line 215
    :cond_4a
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 216
    .local v11, "a":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 217
    .local v13, "b":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 218
    .local v15, "c":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-wide/from16 v18, v0

    .line 219
    .local v18, "d":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 220
    .local v4, "e":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 221
    .local v6, "f":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 222
    .local v8, "g":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    move-wide/from16 v21, v0

    .line 224
    .local v21, "h":J
    const/16 v33, 0x0

    .line 225
    const/16 v32, 0x0

    .local v32, "i":I
    move/from16 v34, v33

    .end local v33    # "t":I
    .local v34, "t":I
    :goto_74
    const/16 v3, 0xa

    move/from16 v0, v32

    if-ge v0, v3, :cond_256

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v23

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v33, v34, 0x1

    .end local v34    # "t":I
    .restart local v33    # "t":I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v21, v21, v23

    .line 229
    add-long v18, v18, v21

    .line 230
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v23

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    add-long v30, v21, v23

    .line 233
    .end local v21    # "h":J
    .local v30, "h":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v17, p0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v26

    add-long v23, v24, v26

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v34, v33, 0x1

    .end local v33    # "t":I
    .restart local v34    # "t":I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v8, v8, v23

    .line 234
    add-long/2addr v15, v8

    .line 235
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v30

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    invoke-direct/range {v20 .. v26}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    add-long v8, v8, v23

    .line 238
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v15

    move-wide/from16 v23, v18

    move-wide/from16 v25, v4

    invoke-direct/range {v20 .. v26}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v33, v34, 0x1

    .end local v34    # "t":I
    .restart local v33    # "t":I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v6, v6, v23

    .line 239
    add-long/2addr v13, v6

    .line 240
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v8

    move-wide/from16 v23, v30

    move-wide/from16 v25, v11

    invoke-direct/range {v20 .. v26}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    add-long v6, v6, v23

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v13

    move-wide/from16 v23, v15

    move-wide/from16 v25, v18

    invoke-direct/range {v20 .. v26}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v34, v33, 0x1

    .end local v33    # "t":I
    .restart local v34    # "t":I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v4, v4, v23

    .line 244
    add-long/2addr v11, v4

    .line 245
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v30

    invoke-direct/range {v20 .. v26}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    add-long v4, v4, v23

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v23

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v33, v34, 0x1

    .end local v34    # "t":I
    .restart local v33    # "t":I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v18, v18, v23

    .line 249
    add-long v21, v30, v18

    .line 250
    .end local v30    # "h":J
    .restart local v21    # "h":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v23

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    add-long v18, v18, v23

    .line 253
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    invoke-direct/range {v20 .. v26}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v34, v33, 0x1

    .end local v33    # "t":I
    .restart local v34    # "t":I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v15, v15, v23

    .line 254
    add-long/2addr v8, v15

    .line 255
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v35

    move-object/from16 v23, p0

    move-wide/from16 v24, v18

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v35

    add-long v15, v15, v23

    .line 258
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v35

    move-object/from16 v23, p0

    move-wide/from16 v24, v8

    move-wide/from16 v26, v21

    move-wide/from16 v28, v11

    invoke-direct/range {v23 .. v29}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v35

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v33, v34, 0x1

    .end local v34    # "t":I
    .restart local v33    # "t":I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v13, v13, v23

    .line 259
    add-long/2addr v6, v13

    .line 260
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v35

    move-object/from16 v23, p0

    move-wide/from16 v24, v15

    move-wide/from16 v26, v18

    move-wide/from16 v28, v4

    invoke-direct/range {v23 .. v29}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v35

    add-long v13, v13, v23

    .line 263
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v35

    move-object/from16 v23, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v21

    invoke-direct/range {v23 .. v29}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v35

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v34, v33, 0x1

    .end local v33    # "t":I
    .restart local v34    # "t":I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v11, v11, v23

    .line 264
    add-long/2addr v4, v11

    .line 265
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v35

    move-object/from16 v23, p0

    move-wide/from16 v24, v13

    move-wide/from16 v26, v15

    move-wide/from16 v28, v18

    invoke-direct/range {v23 .. v29}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v35

    add-long v11, v11, v23

    .line 225
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_74

    .line 268
    :cond_256
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    move-wide/from16 v23, v0

    add-long v23, v23, v11

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 269
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    move-wide/from16 v23, v0

    add-long v23, v23, v13

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 270
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    move-wide/from16 v23, v0

    add-long v23, v23, v15

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 271
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-wide/from16 v23, v0

    add-long v23, v23, v18

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 272
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    move-wide/from16 v23, v0

    add-long v23, v23, v4

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 273
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    move-wide/from16 v23, v0

    add-long v23, v23, v6

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-wide/from16 v23, v0

    add-long v23, v23, v8

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 275
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    move-wide/from16 v23, v0

    add-long v23, v23, v21

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 280
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 281
    const/16 v32, 0x0

    :goto_2cd
    const/16 v3, 0x10

    move/from16 v0, v32

    if-ge v0, v3, :cond_2de

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    const-wide/16 v23, 0x0

    aput-wide v23, v3, v32

    .line 281
    add-int/lit8 v32, v32, 0x1

    goto :goto_2cd

    .line 285
    :cond_2de
    return-void
.end method

.method protected processLength(JJ)V
    .registers 7
    .param p1, "lowW"    # J
    .param p3, "hiW"    # J

    .prologue
    const/16 v1, 0xe

    .line 191
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-le v0, v1, :cond_9

    .line 193
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide p3, v0, v1

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    .line 198
    return-void
.end method

.method protected processWord([BI)V
    .registers 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 168
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    .line 170
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 172
    :cond_17
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 141
    iput-wide v3, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 142
    iput-wide v3, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 144
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 147
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    aput-byte v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 150
    :cond_16
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 151
    const/4 v0, 0x0

    :goto_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v1, v1

    if-eq v0, v1, :cond_25

    .line 153
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide v3, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 155
    :cond_25
    return-void
.end method

.method public update(B)V
    .registers 6
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 68
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 71
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 74
    :cond_19
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 75
    return-void
.end method

.method public update([BII)V
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 85
    :goto_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    .line 87
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 89
    add-int/lit8 p2, p2, 0x1

    .line 90
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 96
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_2a

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 102
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_10

    .line 108
    :cond_2a
    :goto_2a
    if-lez p3, :cond_36

    .line 110
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 112
    add-int/lit8 p2, p2, 0x1

    .line 113
    add-int/lit8 p3, p3, -0x1

    goto :goto_2a

    .line 115
    :cond_36
    return-void
.end method
