.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$EventHandler;,
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;,
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    }
.end annotation


# instance fields
.field private mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

.field private mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mSurfaceTexture:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 280
    invoke-static {}, Landroid/graphics/SurfaceTexture;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "texName"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .param p1, "texName"    # I
    .param p2, "allowSynchronousMode"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_19

    .line 114
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    .line 120
    :goto_10
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1, p2}, Landroid/graphics/SurfaceTexture;->nativeInit(ILjava/lang/Object;Z)V

    .line 121
    return-void

    .line 115
    :cond_19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 116
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_10

    .line 118
    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_10
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .registers 2
    .param p0, "x0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetQueuedCount()I
.end method

.method private native nativeGetTimestamp()J
.end method

.method private native nativeGetTransformMatrix([F)V
.end method

.method private native nativeInit(ILjava/lang/Object;Z)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetDefaultBufferSize(II)V
.end method

.method private native nativeUpdateTexImage()I
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .registers 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .prologue
    .line 254
    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 255
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 256
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-nez v1, :cond_c

    .line 264
    :cond_b
    :goto_b
    return-void

    .line 260
    :cond_c
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    if-eqz v3, :cond_b

    .line 261
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture$EventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "m":Landroid/os/Message;
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-virtual {v3, v0}, Landroid/graphics/SurfaceTexture$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 232
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 234
    return-void

    .line 232
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .registers 4
    .param p1, "mtx"    # [F

    .prologue
    .line 186
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 189
    :cond_b
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    .line 190
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 225
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    .line 226
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    .line 154
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 2
    .param p1, "l"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 131
    return-void
.end method

.method public updateTexImage()V
    .registers 4

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()I

    move-result v0

    .line 163
    .local v0, "err":I
    if-eqz v0, :cond_e

    .line 164
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during updateTexImage (see logs)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_e
    return-void
.end method
