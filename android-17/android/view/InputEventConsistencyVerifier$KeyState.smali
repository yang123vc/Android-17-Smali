.class final Landroid/view/InputEventConsistencyVerifier$KeyState;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEventConsistencyVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyState"
.end annotation


# static fields
.field private static mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private static mRecycledListLock:Ljava/lang/Object;


# instance fields
.field public deviceId:I

.field public keyCode:I

.field public next:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field public source:I

.field public unhandled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 696
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    return-void
.end method

.method public static obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .registers 6
    .param p0, "deviceId"    # I
    .param p1, "source"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 710
    sget-object v2, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 711
    :try_start_3
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 712
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v0, :cond_16

    .line 713
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 717
    :goto_b
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    .line 718
    iput p0, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    .line 719
    iput p1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    .line 720
    iput p2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    .line 721
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 722
    return-object v0

    .line 715
    :cond_16
    :try_start_16
    new-instance v0, Landroid/view/InputEventConsistencyVerifier$KeyState;

    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    invoke-direct {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;-><init>()V

    .restart local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    goto :goto_b

    .line 717
    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 3

    .prologue
    .line 726
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 727
    :try_start_3
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 728
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 729
    monitor-exit v1

    .line 730
    return-void

    .line 729
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
