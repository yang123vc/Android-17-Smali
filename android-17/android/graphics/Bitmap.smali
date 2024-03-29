.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$2;,
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private final mIsMutable:Z

.field public final mNativeBitmap:I

.field private mNinePatchChunk:[B

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 1043
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BZ[BI)V
    .registers 8
    .param p1, "nativeBitmap"    # I
    .param p2, "buffer"    # [B
    .param p3, "isMutable"    # Z
    .param p4, "ninePatchChunk"    # [B
    .param p5, "density"    # I

    .prologue
    const/4 v0, -0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 61
    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 65
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 98
    if-nez p1, :cond_1a

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error: native bitmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1a
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 104
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 105
    new-instance v0, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v0, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 107
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 108
    iput-object p4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 109
    if-ltz p5, :cond_2d

    .line 110
    iput p5, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 112
    :cond_2d
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)V
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 28
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 938
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 939
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_12

    .line 940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_21

    .line 943
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_21
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "offset"    # I
    .param p6, "stride"    # I
    .param p7, "pixels"    # [I

    .prologue
    .line 961
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 962
    if-gez p3, :cond_e

    .line 963
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 965
    :cond_e
    if-gez p4, :cond_18

    .line 966
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 968
    :cond_18
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_29

    .line 969
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 972
    :cond_29
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3a

    .line 973
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 976
    :cond_3a
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_48

    .line 977
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    :cond_48
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 980
    .local v0, "lastScanline":I
    array-length v1, p7

    .line 981
    .local v1, "length":I
    if-ltz p5, :cond_5a

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5a

    if-ltz v0, :cond_5a

    add-int v2, v0, p3

    if-le v2, v1, :cond_60

    .line 984
    :cond_5a
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 986
    :cond_60
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_a

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_a
    return-void
.end method

.method private static checkWidthHeight(II)V
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 239
    if-gtz p0, :cond_b

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_b
    if-gtz p1, :cond_15

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_15
    return-void
.end method

.method private static checkXYSign(II)V
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 224
    if-gez p0, :cond_b

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_b
    if-gez p1, :cond_16

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_16
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 585
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .prologue
    .line 602
    if-lez p0, :cond_4

    if-gtz p1, :cond_d

    .line 603
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p2, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p0

    move v3, p0

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 606
    .local v7, "bm":Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p2, v0, :cond_2b

    if-nez p3, :cond_2b

    .line 607
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 608
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p3}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 615
    :cond_2b
    return-object v7
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 455
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 471
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .registers 24
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    .prologue
    .line 495
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 496
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 497
    add-int v13, p1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-le v13, v14, :cond_17

    .line 498
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "x + width must be <= bitmap.width()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 500
    :cond_17
    add-int v13, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v13, v14, :cond_28

    .line 501
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "y + height must be <= bitmap.height()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 505
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v13

    if-nez v13, :cond_4b

    if-nez p1, :cond_4b

    if-nez p2, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move/from16 v0, p3

    if-ne v0, v13, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_4b

    if-eqz p5, :cond_4a

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 572
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :cond_4a
    :goto_4a
    return-object p0

    .line 510
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_4b
    move/from16 v9, p3

    .line 511
    .local v9, "neww":I
    move/from16 v8, p4

    .line 512
    .local v8, "newh":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 516
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    add-int v13, p1, p3

    add-int v14, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v11, v0, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 517
    .local v11, "srcR":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v15, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 519
    .local v6, "dstR":Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 520
    .local v7, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 522
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_87

    .line 523
    sget-object v13, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_108

    .line 534
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 539
    :cond_87
    :goto_87
    if-eqz p5, :cond_8f

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_b3

    .line 540
    :cond_8f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 541
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 566
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .local v10, "paint":Landroid/graphics/Paint;
    :cond_98
    :goto_98
    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v13, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 568
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 569
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 570
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p0, v2

    .line 572
    goto :goto_4a

    .line 525
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :pswitch_ad
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 526
    goto :goto_87

    .line 528
    :pswitch_b0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 529
    goto :goto_87

    .line 543
    :cond_b3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v13

    if-nez v13, :cond_104

    const/4 v12, 0x1

    .line 545
    .local v12, "transformed":Z
    :goto_ba
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 546
    .local v5, "deviceR":Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 548
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 549
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 551
    if-eqz v12, :cond_d8

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_d8
    if-nez v12, :cond_e0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    if-eqz v13, :cond_106

    :cond_e0
    const/4 v13, 0x1

    :goto_e1
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 554
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    iget v13, v5, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    iget v14, v5, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 555
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 557
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 558
    .restart local v10    # "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 559
    if-eqz v12, :cond_98

    .line 560
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_98

    .line 543
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "deviceR":Landroid/graphics/RectF;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "transformed":Z
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_104
    const/4 v12, 0x0

    goto :goto_ba

    .line 551
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .restart local v5    # "deviceR":Landroid/graphics/RectF;
    .restart local v12    # "transformed":Z
    :cond_106
    const/4 v13, 0x0

    goto :goto_e1

    .line 523
    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_b0
    .end packed-switch
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "colors"    # [I
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 639
    invoke-static {p3, p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 640
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p3, :cond_11

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_11
    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p2

    add-int v7, p1, v0

    .line 644
    .local v7, "lastScanline":I
    array-length v8, p0

    .line 645
    .local v8, "length":I
    if-ltz p1, :cond_23

    add-int v0, p1, p3

    if-gt v0, v8, :cond_23

    if-ltz v7, :cond_23

    add-int v0, v7, p3

    if-le v0, v8, :cond_29

    .line 647
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 649
    :cond_29
    if-lez p3, :cond_2d

    if-gtz p4, :cond_36

    .line 650
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_36
    iget v5, p5, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 672
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 422
    const-class v2, Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 424
    :try_start_4
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 425
    .local v5, "m":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 426
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_36

    .line 428
    if-nez v5, :cond_11

    .line 429
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5    # "m":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 432
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 433
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 434
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 435
    .local v8, "sx":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 436
    .local v9, "sy":F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 437
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 439
    .local v7, "b":Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 441
    :try_start_2e
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_34

    .line 442
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 444
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_39

    .line 446
    return-object v7

    .line 426
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    .line 444
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v5    # "m":Landroid/graphics/Matrix;
    .restart local v7    # "b":Landroid/graphics/Bitmap;
    .restart local v8    # "sx":F
    .restart local v9    # "sy":F
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method static getDefaultDensity()I
    .registers 1

    .prologue
    .line 81
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_7

    .line 82
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 85
    :goto_6
    return v0

    .line 84
    :cond_7
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 85
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_6
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(III)I
.end method

.method private static native nativeGetPixels(I[IIIIIII)V
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHeight(I)I
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeRecycle(I)V
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetHasAlpha(IZ)V
.end method

.method private static native nativeSetPixel(IIII)V
.end method

.method private static native nativeSetPixels(I[IIIIIII)V
.end method

.method private static native nativeWidth(I)I
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    .prologue
    .line 808
    if-eqz p1, :cond_4

    if-ne p1, p2, :cond_5

    .line 813
    .end local p0    # "size":I
    :cond_4
    :goto_4
    return p0

    .restart local p0    # "size":I
    :cond_5
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_4
.end method

.method public static setDefaultDensity(I)V
    .registers 1
    .param p0, "density"    # I

    .prologue
    .line 77
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 78
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .registers 7
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 721
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 723
    if-nez p3, :cond_d

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 726
    :cond_d
    if-ltz p2, :cond_13

    const/16 v0, 0x64

    if-le p2, v0, :cond_1c

    .line 727
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_1c
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    .prologue
    .line 402
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 403
    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_13

    .line 405
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 407
    :cond_13
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .registers 10
    .param p1, "src"    # Ljava/nio/Buffer;

    .prologue
    .line 365
    const-string v6, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v6}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 369
    .local v4, "elements":I
    instance-of v6, p1, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_22

    .line 370
    const/4 v5, 0x0

    .line 379
    .local v5, "shift":I
    :goto_e
    int-to-long v6, v4

    shl-long v2, v6, v5

    .line 380
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-long v0, v6

    .line 382
    .local v0, "bitmapBytes":J
    cmp-long v6, v2, v0

    if-gez v6, :cond_37

    .line 383
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 371
    .end local v0    # "bitmapBytes":J
    .end local v2    # "bufferBytes":J
    .end local v5    # "shift":I
    :cond_22
    instance-of v6, p1, Ljava/nio/ShortBuffer;

    if-eqz v6, :cond_28

    .line 372
    const/4 v5, 0x1

    .restart local v5    # "shift":I
    goto :goto_e

    .line 373
    .end local v5    # "shift":I
    :cond_28
    instance-of v6, p1, Ljava/nio/IntBuffer;

    if-eqz v6, :cond_2e

    .line 374
    const/4 v5, 0x2

    .restart local v5    # "shift":I
    goto :goto_e

    .line 376
    .end local v5    # "shift":I
    :cond_2e
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported Buffer subclass"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 386
    .restart local v0    # "bitmapBytes":J
    .restart local v2    # "bufferBytes":J
    .restart local v5    # "shift":I
    :cond_37
    iget v6, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v6, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 387
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .registers 13
    .param p1, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 333
    .local v2, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_1d

    .line 334
    const/4 v6, 0x0

    .line 343
    .local v6, "shift":I
    :goto_9
    int-to-long v7, v2

    shl-long v0, v7, v6

    .line 344
    .local v0, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v3, v7

    .line 346
    .local v3, "pixelSize":J
    cmp-long v7, v0, v3

    if-gez v7, :cond_32

    .line 347
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 335
    .end local v0    # "bufferSize":J
    .end local v3    # "pixelSize":J
    .end local v6    # "shift":I
    :cond_1d
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_23

    .line 336
    const/4 v6, 0x1

    .restart local v6    # "shift":I
    goto :goto_9

    .line 337
    .end local v6    # "shift":I
    :cond_23
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_29

    .line 338
    const/4 v6, 0x2

    .restart local v6    # "shift":I
    goto :goto_9

    .line 340
    .end local v6    # "shift":I
    :cond_29
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 350
    .restart local v0    # "bufferSize":J
    .restart local v3    # "pixelSize":J
    .restart local v6    # "shift":I
    :cond_32
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 353
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 354
    .local v5, "position":I
    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 355
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 356
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .registers 4
    .param p1, "c"    # I

    .prologue
    .line 876
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_13
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 881
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1090
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "offsetXY"    # [I

    .prologue
    .line 1119
    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1120
    if-eqz p1, :cond_19

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    .line 1121
    .local v1, "nativePaint":I
    :goto_9
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1122
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1b

    .line 1123
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1120
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "nativePaint":I
    :cond_19
    const/4 v1, 0x0

    goto :goto_9

    .line 1125
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "nativePaint":I
    :cond_1b
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1126
    return-object v0
.end method

.method public final getByteCount()I
    .registers 3

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .prologue
    .line 841
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .registers 3

    .prologue
    .line 747
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    goto :goto_d
.end method

.method public getNinePatchChunk()[B
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 894
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 895
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 896
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(III)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .registers 16
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 922
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 923
    if-eqz p6, :cond_9

    if-nez p7, :cond_a

    .line 929
    :cond_9
    :goto_9
    return-void

    :cond_a
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 926
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 927
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIII)V

    goto :goto_9
.end method

.method public final getRowBytes()I
    .registers 2

    .prologue
    .line 825
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .registers 4
    .param p1, "targetDensity"    # I

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 779
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .registers 4
    .param p1, "targetDensity"    # I

    .prologue
    .line 790
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 771
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .registers 3

    .prologue
    .line 742
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    goto :goto_d
.end method

.method public final hasAlpha()Z
    .registers 2

    .prologue
    .line 853
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .registers 2

    .prologue
    .line 737
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isRecycled()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method final ni()I
    .registers 2

    .prologue
    .line 1223
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .registers 2

    .prologue
    .line 1150
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    .line 1151
    return-void
.end method

.method public recycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_11

    .line 179
    iput-object v1, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 180
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)V

    .line 181
    iput-object v1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 184
    :cond_11
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p1, "other"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1135
    if-eq p0, p1, :cond_e

    if-eqz p1, :cond_10

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setDensity(I)V
    .registers 2
    .param p1, "density"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 153
    return-void
.end method

.method public setHasAlpha(Z)V
    .registers 3
    .param p1, "hasAlpha"    # Z

    .prologue
    .line 867
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 868
    return-void
.end method

.method public setNinePatchChunk([B)V
    .registers 2
    .param p1, "chunk"    # [B

    .prologue
    .line 163
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 164
    return-void
.end method

.method public setPixel(III)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .prologue
    .line 1000
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1002
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1004
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1005
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(IIII)V

    .line 1006
    return-void
.end method

.method public setPixels([IIIIIII)V
    .registers 16
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1031
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1033
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1035
    :cond_11
    if-eqz p6, :cond_15

    if-nez p7, :cond_16

    .line 1041
    :cond_15
    :goto_15
    return-void

    :cond_16
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1038
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1039
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIII)V

    goto :goto_15
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1076
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1077
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1078
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_1a
    return-void
.end method
