.class Landroid/view/ViewRootImpl$InputEventMessage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputEventMessage"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static sPool:Landroid/view/ViewRootImpl$InputEventMessage;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field mMessage:Landroid/os/Message;

.field mNext:Landroid/view/ViewRootImpl$InputEventMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3803
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    .line 3805
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Message;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 3809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3810
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 3811
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3812
    return-void
.end method

.method public static obtain(Landroid/os/Message;)Landroid/view/ViewRootImpl$InputEventMessage;
    .registers 4
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 3819
    sget-object v2, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 3820
    :try_start_3
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v1, :cond_1a

    .line 3821
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3822
    .local v0, "m":Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    sput-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3823
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3824
    sget v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 3825
    iput-object p0, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 3826
    monitor-exit v2

    .line 3829
    .end local v0    # "m":Landroid/view/ViewRootImpl$InputEventMessage;
    :goto_19
    return-object v0

    .line 3828
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 3829
    new-instance v0, Landroid/view/ViewRootImpl$InputEventMessage;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputEventMessage;-><init>(Landroid/os/Message;)V

    goto :goto_19

    .line 3828
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .prologue
    .line 3836
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 3837
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3838
    :try_start_8
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1a

    .line 3839
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3840
    sput-object p0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3841
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 3843
    :cond_1a
    monitor-exit v1

    .line 3845
    return-void

    .line 3843
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0
.end method
