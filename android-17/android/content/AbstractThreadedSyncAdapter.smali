.class public abstract Landroid/content/AbstractThreadedSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AbstractThreadedSyncAdapter$1;,
        Landroid/content/AbstractThreadedSyncAdapter$SyncThread;,
        Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    }
.end annotation


# static fields
.field public static final LOG_SYNC_DETAILS:I = 0xab7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mAllowParallelSyncs:Z

.field private final mAutoInitialize:Z

.field private final mContext:Landroid/content/Context;

.field private final mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

.field private final mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSyncThreadLock:Ljava/lang/Object;

.field private final mSyncThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Landroid/content/AbstractThreadedSyncAdapter$SyncThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z
    .param p3, "allowParallelSyncs"    # Z

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    iput-boolean p2, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    .line 133
    iput-boolean p3, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    .line 134
    return-void
.end method

.method static synthetic access$100(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 3
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .registers 2
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    return v0
.end method

.method static synthetic access$500(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .registers 2
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    return v0
.end method

.method static synthetic access$900(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    if-eqz v0, :cond_5

    .line 144
    .end local p1    # "account":Landroid/accounts/Account;
    :goto_4
    return-object p1

    .restart local p1    # "account":Landroid/accounts/Account;
    :cond_5
    const/4 p1, 0x0

    goto :goto_4
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getSyncAdapterBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onSyncCanceled()V
    .registers 5

    .prologue
    .line 304
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    :try_start_3
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 306
    .local v0, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 307
    if-eqz v0, :cond_12

    .line 308
    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->interrupt()V

    .line 310
    :cond_12
    return-void

    .line 306
    .end local v0    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onSyncCanceled(Ljava/lang/Thread;)V
    .registers 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 322
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 323
    return-void
.end method
