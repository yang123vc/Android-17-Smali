.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mLayer:Landroid/view/HardwareLayer;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mLock:[Ljava/lang/Object;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixChanged:Z

.field private mNativeWindow:I

.field private final mNativeWindowLock:[Ljava/lang/Object;

.field private mOpaque:Z

.field private mSaveCount:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mUpdateLayer:Z

.field private mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 116
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 136
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 116
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 148
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 116
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 164
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    .line 165
    return-void
.end method

.method static synthetic access$000(Landroid/view/TextureView;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/TextureView;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/TextureView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/TextureView;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    return p1
.end method

.method private applyTransformMatrix()V
    .registers 3

    .prologue
    .line 440
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    if-eqz v0, :cond_e

    .line 441
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setTransform(Landroid/graphics/Matrix;)V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 444
    :cond_e
    return-void
.end method

.method private applyUpdate()V
    .registers 5

    .prologue
    .line 376
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_5

    .line 393
    :cond_4
    :goto_4
    return-void

    .line 380
    :cond_5
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_8
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    if-eqz v0, :cond_2b

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 386
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2d

    .line 388
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->update(IIZ)V

    .line 390
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_4

    .line 391
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto :goto_4

    .line 384
    :cond_2b
    :try_start_2b
    monitor-exit v1

    goto :goto_4

    .line 386
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private destroySurface()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_29

    .line 211
    const/4 v0, 0x1

    .line 212
    .local v0, "shouldRelease":Z
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_12

    .line 213
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 216
    :cond_12
    iget-object v2, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_15
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 218
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_2a

    .line 220
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->destroy()V

    .line 221
    if-eqz v0, :cond_25

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 222
    :cond_25
    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 223
    iput-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    .line 225
    .end local v0    # "shouldRelease":Z
    :cond_29
    return-void

    .line 218
    .restart local v0    # "shouldRelease":Z
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private init()V
    .registers 2

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 169
    return-void
.end method

.method private native nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native nDestroyNativeWindow()V
.end method

.method private static native nLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)V
.end method

.method private static native nSetDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
.end method

.method private static native nUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V
.end method

.method private updateLayer()V
    .registers 2

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 372
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 373
    return-void
.end method


# virtual methods
.method public buildLayer()V
    .registers 1

    .prologue
    .line 266
    return-void
.end method

.method protected destroyHardwareResources()V
    .registers 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 312
    invoke-direct {p0}, Landroid/view/TextureView;->destroySurface()V

    .line 313
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentCaches()V

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    .line 315
    return-void
.end method

.method destroyLayer()Z
    .registers 2

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 277
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 278
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    if-lez p1, :cond_15

    if-lez p2, :cond_15

    .line 495
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 524
    if-eqz p1, :cond_33

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 525
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 526
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_28

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_28

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 528
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v1

    if-nez v1, :cond_28

    .line 529
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not acquire hardware rendering context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_28
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 534
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 536
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1, p1}, Landroid/view/HardwareLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    .line 538
    .end local v0    # "info":Landroid/view/View$AttachInfo;
    :cond_33
    return-object p1
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .registers 5

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_5b

    .line 320
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-nez v0, :cond_10

    .line 321
    :cond_e
    const/4 v0, 0x0

    .line 350
    :goto_f
    return-object v0

    .line 324
    :cond_10
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-boolean v1, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->createHardwareLayer(Z)Landroid/view/HardwareLayer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    .line 325
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 326
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/view/TextureView;->nSetDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 327
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 329
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 340
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 342
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_5b

    .line 343
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 347
    :cond_5b
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 348
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 350
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    goto :goto_f
.end method

.method public getLayerType()I
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x2

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 430
    if-nez p1, :cond_7

    .line 431
    new-instance p1, Landroid/graphics/Matrix;

    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 434
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_7
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 436
    return-object p1
.end method

.method hasStaticLayer()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 5
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 602
    :goto_7
    return-object v0

    .line 593
    :cond_8
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_13

    .line 594
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    .line 597
    :cond_13
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_16
    iget v0, p0, Landroid/view/TextureView;->mNativeWindow:I

    iget-object v2, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v2, p1}, Landroid/view/TextureView;->nLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 599
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_29

    .line 600
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 602
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_7

    .line 599
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 195
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 197
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_10

    .line 198
    const-string v0, "TextureView"

    const-string v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 206
    invoke-direct {p0}, Landroid/view/TextureView;->destroySurface()V

    .line 207
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 288
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 293
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_27

    .line 294
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/view/TextureView;->nSetDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 295
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_27

    .line 296
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 299
    :cond_27
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 355
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 357
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_13

    .line 361
    if-nez p2, :cond_14

    .line 362
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 363
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 368
    :cond_13
    :goto_13
    return-void

    .line 365
    :cond_14
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_13
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 4
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 242
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v0, :cond_9

    .line 243
    iput-object p2, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 244
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 246
    :cond_9
    return-void
.end method

.method public setOpaque(Z)V
    .registers 3
    .param p1, "opaque"    # Z

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    if-eq p1, v0, :cond_9

    .line 188
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 189
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 191
    :cond_9
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 657
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 658
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 413
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 415
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 416
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 617
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_1b

    .line 618
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 621
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_13
    iget v0, p0, Landroid/view/TextureView;->mNativeWindow:I

    iget-object v2, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v2}, Landroid/view/TextureView;->nUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V

    .line 623
    monitor-exit v1

    .line 625
    :cond_1b
    return-void

    .line 623
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v0
.end method
