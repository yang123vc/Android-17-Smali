.class public final Landroid/webkit/DeviceMotionAndOrientationManager;
.super Ljava/lang/Object;
.source "DeviceMotionAndOrientationManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkit/DeviceMotionAndOrientationManager;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;)V
    .registers 2
    .param p1, "webViewCore"    # Landroid/webkit/WebViewCore;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 32
    return-void
.end method

.method private static native nativeOnMotionChange(Landroid/webkit/WebViewCore;ZDZDZDD)V
.end method

.method private static native nativeOnOrientationChange(Landroid/webkit/WebViewCore;ZDZDZD)V
.end method

.method private static native nativeSetMockOrientation(Landroid/webkit/WebViewCore;ZDZDZD)V
.end method

.method private static native nativeUseMock(Landroid/webkit/WebViewCore;)V
.end method


# virtual methods
.method public onMotionChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V
    .registers 18
    .param p1, "x"    # Ljava/lang/Double;
    .param p2, "y"    # Ljava/lang/Double;
    .param p3, "z"    # Ljava/lang/Double;
    .param p4, "interval"    # D

    .prologue
    .line 55
    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    :goto_5
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_b
    if-eqz p2, :cond_28

    const/4 v4, 0x1

    :goto_e
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_14
    if-eqz p3, :cond_2d

    const/4 v7, 0x1

    :goto_17
    if-eqz p3, :cond_2f

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_1d
    move-wide/from16 v10, p4

    invoke-static/range {v0 .. v11}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeOnMotionChange(Landroid/webkit/WebViewCore;ZDZDZDD)V

    .line 60
    return-void

    .line 55
    :cond_23
    const/4 v1, 0x0

    goto :goto_5

    :cond_25
    const-wide/16 v2, 0x0

    goto :goto_b

    :cond_28
    const/4 v4, 0x0

    goto :goto_e

    :cond_2a
    const-wide/16 v5, 0x0

    goto :goto_14

    :cond_2d
    const/4 v7, 0x0

    goto :goto_17

    :cond_2f
    const-wide/16 v8, 0x0

    goto :goto_1d
.end method

.method public onOrientationChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .registers 15
    .param p1, "alpha"    # Ljava/lang/Double;
    .param p2, "beta"    # Ljava/lang/Double;
    .param p3, "gamma"    # Ljava/lang/Double;

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 62
    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz p1, :cond_24

    move v1, v7

    :goto_9
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_f
    if-eqz p2, :cond_28

    move v4, v7

    :goto_12
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_18
    if-eqz p3, :cond_2c

    :goto_1a
    if-eqz p3, :cond_20

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :cond_20
    invoke-static/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeOnOrientationChange(Landroid/webkit/WebViewCore;ZDZDZD)V

    .line 66
    return-void

    :cond_24
    move v1, v10

    .line 62
    goto :goto_9

    :cond_26
    move-wide v2, v8

    goto :goto_f

    :cond_28
    move v4, v10

    goto :goto_12

    :cond_2a
    move-wide v5, v8

    goto :goto_18

    :cond_2c
    move v7, v10

    goto :goto_1a
.end method

.method public setMockOrientation(ZDZDZD)V
    .registers 20
    .param p1, "canProvideAlpha"    # Z
    .param p2, "alpha"    # D
    .param p4, "canProvideBeta"    # Z
    .param p5, "beta"    # D
    .param p7, "canProvideGamma"    # Z
    .param p8, "gamma"    # D

    .prologue
    .line 48
    sget-boolean v0, Landroid/webkit/DeviceMotionAndOrientationManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1a

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1a
    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeSetMockOrientation(Landroid/webkit/WebViewCore;ZDZDZD)V

    .line 51
    return-void
.end method

.method public useMock()V
    .registers 3

    .prologue
    .line 39
    sget-boolean v0, Landroid/webkit/DeviceMotionAndOrientationManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1a

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_1a
    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeUseMock(Landroid/webkit/WebViewCore;)V

    .line 41
    return-void
.end method
