.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsPooled:Z

.field private mNext:Landroid/view/VelocityTracker;

.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Landroid/view/VelocityTracker$1;

    invoke-direct {v0}, Landroid/view/VelocityTracker$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Landroid/view/VelocityTracker;->nativeInitialize()I

    move-result v0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/VelocityTracker$1;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/view/VelocityTracker;-><init>()V

    return-void
.end method

.method private static native nativeAddMovement(ILandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeComputeCurrentVelocity(IIF)V
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeGetEstimator(IIIILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(II)F
.end method

.method private static native nativeGetYVelocity(II)F
.end method

.method private static native nativeInitialize()I
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    if-nez p1, :cond_a

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_a
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(ILandroid/view/MotionEvent;)V

    .line 150
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeClear(I)V

    .line 134
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 4
    .param p1, "units"    # I

    .prologue
    .line 159
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const v1, 0x7f7fffff

    invoke-static {v0, p1, v1}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIF)V

    .line 160
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 4
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 176
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIF)V

    .line 177
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    if-eqz v0, :cond_c

    .line 121
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeDispose(I)V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 125
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void

    .line 125
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEstimator(IIILandroid/view/VelocityTracker$Estimator;)Z
    .registers 7
    .param p1, "id"    # I
    .param p2, "degree"    # I
    .param p3, "horizonMillis"    # I
    .param p4, "outEstimator"    # Landroid/view/VelocityTracker$Estimator;

    .prologue
    .line 240
    if-nez p4, :cond_b

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outEstimator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_b
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/VelocityTracker;->nativeGetEstimator(IIIILandroid/view/VelocityTracker$Estimator;)Z

    move-result v0

    return v0
.end method

.method public getNextPoolable()Landroid/view/VelocityTracker;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getNextPoolable()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public getXVelocity()F
    .registers 3

    .prologue
    .line 186
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 207
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .registers 3

    .prologue
    .line 196
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 218
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public isPooled()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/view/VelocityTracker;->mIsPooled:Z

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 82
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 83
    return-void
.end method

.method public setNextPoolable(Landroid/view/VelocityTracker;)V
    .registers 2
    .param p1, "element"    # Landroid/view/VelocityTracker;

    .prologue
    .line 89
    iput-object p1, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    .line 90
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->setNextPoolable(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method public setPooled(Z)V
    .registers 2
    .param p1, "isPooled"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/view/VelocityTracker;->mIsPooled:Z

    .line 111
    return-void
.end method
