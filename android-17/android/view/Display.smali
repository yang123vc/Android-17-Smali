.class public Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field static final DEBUG_DISPLAY_SIZE:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field static final TAG:Ljava/lang/String; = "Display"

.field private static sInitialized:Z

.field private static final sStaticInit:Ljava/lang/Object;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mDensity:F

.field private final mDisplay:I

.field mDpiX:F

.field mDpiY:F

.field private mLastGetTime:F

.field private mPixelFormat:I

.field private mRefreshRate:F

.field private final mTmpMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    .line 399
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/Display;->sInitialized:Z

    return-void
.end method

.method constructor <init>(ILandroid/view/CompatibilityInfoHolder;)V
    .registers 5
    .param p1, "display"    # I
    .param p2, "compatInfo"    # Landroid/view/CompatibilityInfoHolder;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    .line 395
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    .line 49
    sget-object v1, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_14
    sget-boolean v0, Landroid/view/Display;->sInitialized:Z

    if-nez v0, :cond_1e

    .line 51
    invoke-static {}, Landroid/view/Display;->nativeClassInit()V

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/Display;->sInitialized:Z

    .line 54
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_29

    .line 55
    if-eqz p2, :cond_2c

    .end local p2    # "compatInfo":Landroid/view/CompatibilityInfoHolder;
    :goto_21
    iput-object p2, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 56
    iput p1, p0, Landroid/view/Display;->mDisplay:I

    .line 57
    invoke-direct {p0, p1}, Landroid/view/Display;->init(I)V

    .line 58
    return-void

    .line 54
    .restart local p2    # "compatInfo":Landroid/view/CompatibilityInfoHolder;
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0

    .line 55
    :cond_2c
    new-instance p2, Landroid/view/CompatibilityInfoHolder;

    .end local p2    # "compatInfo":Landroid/view/CompatibilityInfoHolder;
    invoke-direct {p2}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    goto :goto_21
.end method

.method public static createCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;
    .registers 3
    .param p0, "displayId"    # I
    .param p1, "compat"    # Landroid/view/CompatibilityInfoHolder;

    .prologue
    .line 407
    new-instance v0, Landroid/view/Display;

    invoke-direct {v0, p0, p1}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method static native getDisplayCount()I
.end method

.method private native getRawHeightNative()I
.end method

.method private native getRawWidthNative()I
.end method

.method private getSizeInternal(Landroid/graphics/Point;Z)V
    .registers 9
    .param p1, "outSize"    # Landroid/graphics/Point;
    .param p2, "doCompat"    # Z

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    .line 101
    .local v2, "wm":Landroid/view/IWindowManager;
    if-eqz v2, :cond_47

    .line 102
    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getDisplaySize(Landroid/graphics/Point;)V

    .line 104
    if-eqz p2, :cond_3a

    iget-object v3, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_3a

    .line 105
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    monitor-enter v4
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_3e

    .line 106
    :try_start_16
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 107
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 108
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p0, Landroid/view/Display;->mDensity:F

    iput v5, v3, Landroid/util/DisplayMetrics;->density:F

    .line 109
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 111
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 112
    monitor-exit v4

    .line 130
    .end local v0    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_3a
    :goto_3a
    return-void

    .line 112
    .restart local v0    # "ci":Landroid/content/res/CompatibilityInfo;
    .restart local v2    # "wm":Landroid/view/IWindowManager;
    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v3
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 127
    .end local v0    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :catch_3e
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Display"

    const-string v4, "Unable to get display size"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "wm":Landroid/view/IWindowManager;
    :cond_47
    :try_start_47
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 118
    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_53} :catch_3e

    goto :goto_3a
.end method

.method static getWindowManager()Landroid/view/IWindowManager;
    .registers 2

    .prologue
    .line 368
    sget-object v1, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_3
    sget-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_14

    .line 370
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    .line 373
    :cond_14
    sget-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    monitor-exit v1

    return-object v0

    .line 374
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public getDisplayId()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Landroid/view/Display;->mDisplay:I

    return v0
.end method

.method public getHeight()I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v3

    .line 181
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 182
    .local v0, "now":J
    long-to-float v2, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a00000

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1a

    .line 183
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 184
    long-to-float v2, v0

    iput v2, p0, Landroid/view/Display;->mLastGetTime:F

    .line 186
    :cond_1a
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    monitor-exit v3

    return v2

    .line 187
    .end local v0    # "now":J
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getMaximumSizeDimension()I
    .registers 5

    .prologue
    .line 152
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 153
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->getMaximumSizeDimension()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    .line 156
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_8
    return v2

    .line 154
    :catch_9
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get display maximum size dimension"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 306
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v2

    .line 307
    :try_start_3
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 308
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v1, v3}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 309
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_21

    .line 311
    iget-object v1, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 312
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_20

    .line 313
    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 319
    :cond_20
    return-void

    .line 309
    .end local v0    # "ci":Landroid/content/res/CompatibilityInfo;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getMetricsWithSize(Landroid/util/DisplayMetrics;II)V
    .registers 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 356
    iget v0, p0, Landroid/view/Display;->mDensity:F

    const/high16 v1, 0x43200000

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 358
    iput p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 359
    iput p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 361
    iget v0, p0, Landroid/view/Display;->mDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 362
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 363
    iget v0, p0, Landroid/view/Display;->mDpiX:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 364
    iget v0, p0, Landroid/view/Display;->mDpiY:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 365
    return-void
.end method

.method public native getOrientation()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPixelFormat()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Landroid/view/Display;->mPixelFormat:I

    return v0
.end method

.method public getRawExternalHeight()I
    .registers 2

    .prologue
    .line 347
    const/16 v0, 0x2d0

    return v0
.end method

.method public getRawExternalWidth()I
    .registers 2

    .prologue
    .line 338
    const/16 v0, 0x500

    return v0
.end method

.method public getRawHeight()I
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/view/Display;->getRawHeightNative()I

    move-result v0

    .line 245
    .local v0, "h":I
    return v0
.end method

.method public getRawWidth()I
    .registers 2

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/view/Display;->getRawWidthNative()I

    move-result v0

    .line 230
    .local v0, "w":I
    return v0
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 326
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 327
    :try_start_3
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 328
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 329
    monitor-exit v1

    .line 330
    return-void

    .line 329
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 204
    .local v1, "wm":Landroid/view/IWindowManager;
    if-eqz v1, :cond_a

    .line 205
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 217
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_9
    return-void

    .line 209
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :cond_a
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 210
    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_9

    .line 214
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :catch_17
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get real display size"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    .line 139
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 140
    :try_start_3
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 141
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getRefreshRate()F
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Landroid/view/Display;->mRefreshRate:F

    return v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 96
    return-void
.end method

.method public getWidth()I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v3

    .line 166
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 167
    .local v0, "now":J
    long-to-float v2, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a00000

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1a

    .line 168
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 169
    long-to-float v2, v0

    iput v2, p0, Landroid/view/Display;->mLastGetTime:F

    .line 171
    :cond_1a
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    monitor-exit v3

    return v2

    .line 172
    .end local v0    # "now":J
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method
