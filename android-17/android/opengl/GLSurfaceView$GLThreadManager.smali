.class Landroid/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kADRENO:Ljava/lang/String; = "Adreno"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1719
    const-string v0, "GLThreadManager"

    sput-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/opengl/GLSurfaceView$1;

    .prologue
    .line 1718
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1802
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_19

    .line 1803
    const-string/jumbo v0, "ro.opengles.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1806
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_17

    .line 1807
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1813
    :cond_17
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1815
    :cond_19
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1783
    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_36

    .line 1784
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1785
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1786
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_24

    .line 1787
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    move v3, v2

    :goto_1f
    iput-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1789
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1791
    :cond_24
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_30

    const-string v3, "Adreno"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1797
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    .line 1799
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_36
    monitor-exit p0

    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_38
    move v3, v1

    .line 1787
    goto :goto_1f

    .line 1783
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V
    .registers 3
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_7

    .line 1765
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1767
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1768
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    .prologue
    .line 1774
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .registers 2

    .prologue
    .line 1778
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1779
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 1778
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V
    .registers 3
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1725
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    # setter for: Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->access$1202(Landroid/opengl/GLSurfaceView$GLThread;Z)Z

    .line 1726
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_c

    .line 1727
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1729
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1730
    monitor-exit p0

    return-void

    .line 1725
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    .registers 4
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1740
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-nez v1, :cond_f

    .line 1741
    :cond_9
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1742
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1756
    :cond_e
    :goto_e
    return v0

    .line 1745
    :cond_f
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1746
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_e

    .line 1753
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_1f

    .line 1754
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1756
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method
