.class Lcom/android/server/BackupManagerService$ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveRestoreSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 5444
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 5440
    iput-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 5441
    iput-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 5442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    .line 5445
    iput-object p2, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 5446
    # invokes: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {p1, p3}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 5447
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 5436
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;
    .param p1, "x1"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 5436
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    .prologue
    .line 5676
    monitor-enter p0

    :try_start_1
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5678
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v0, :cond_17

    .line 5679
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 5676
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5682
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v1, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_14

    .line 5683
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .registers 12
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    const/4 v4, -0x1

    .line 5451
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.BACKUP"

    const-string v7, "getAvailableRestoreSets"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5453
    if-nez p1, :cond_1c

    .line 5454
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Observer must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_19

    .line 5451
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4

    .line 5457
    :cond_1c
    :try_start_1c
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v5, :cond_28

    .line 5458
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Restore session already ended"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5461
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_19

    move-result-wide v2

    .line 5463
    .local v2, "oldId":J
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v5, :cond_3c

    .line 5464
    const-string v5, "RestoreSession"

    const-string v6, "Null transport getting restore sets"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_61
    .catchall {:try_start_2c .. :try_end_37} :catchall_6d

    .line 5477
    :try_start_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_19

    .line 5475
    :goto_3a
    monitor-exit p0

    return v4

    .line 5468
    :cond_3c
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5469
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v6, 0x6

    new-instance v7, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    iget-object v8, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {v7, v8, v9, p0, p1}, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5471
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5c} :catch_61
    .catchall {:try_start_3c .. :try_end_5c} :catchall_6d

    .line 5472
    const/4 v4, 0x0

    .line 5477
    :try_start_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_19

    goto :goto_3a

    .line 5473
    .end local v1    # "msg":Landroid/os/Message;
    :catch_61
    move-exception v0

    .line 5474
    .local v0, "e":Ljava/lang/Exception;
    :try_start_62
    const-string v5, "RestoreSession"

    const-string v6, "Error in getAvailableRestoreSets"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_6d

    .line 5477
    :try_start_69
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3a

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_19
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .registers 16
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    const/4 v0, -0x1

    .line 5482
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    const-string v3, "performRestore"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5485
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAll token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " observer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5488
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v1, :cond_44

    .line 5489
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_41

    .line 5482
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5492
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v1, :cond_55

    .line 5493
    :cond_4c
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_41

    .line 5517
    :goto_53
    monitor-exit p0

    return v0

    .line 5497
    :cond_55
    :try_start_55
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 5498
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 5502
    :cond_61
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_41

    .line 5503
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_67
    :try_start_67
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v1, v1

    if-ge v7, v1, :cond_ab

    .line 5504
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v1, v1, v7

    iget-wide v1, v1, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_a8

    .line 5505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 5506
    .local v9, "oldId":J
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5507
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 5508
    .local v8, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreParams;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v6, 0x1

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JZ)V

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5509
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v8}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5510
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5511
    const/4 v0, 0x0

    monitor-exit v11

    goto :goto_53

    .line 5514
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "oldId":J
    :catchall_a5
    move-exception v0

    monitor-exit v11
    :try_end_a7
    .catchall {:try_start_67 .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw v0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_41

    .line 5503
    :cond_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 5514
    :cond_ab
    :try_start_ab
    monitor-exit v11
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_a5

    .line 5516
    :try_start_ac
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_ac .. :try_end_ce} :catchall_41

    goto :goto_53
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 5582
    monitor-enter p0

    :try_start_1
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePackage pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " obs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5584
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v1, :cond_36

    .line 5585
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore session already ended"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_33

    .line 5582
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1

    .line 5588
    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_6d

    .line 5589
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 5590
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring attempt to restore pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on session for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_36 .. :try_end_6a} :catchall_33

    .line 5592
    const/4 v1, -0x1

    .line 5641
    :goto_6b
    monitor-exit p0

    return v1

    .line 5596
    :cond_6d
    const/4 v7, 0x0

    .line 5598
    .local v7, "app":Landroid/content/pm/PackageInfo;
    :try_start_6e
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_7a} :catch_cc
    .catchall {:try_start_6e .. :try_end_7a} :catchall_33

    move-result-object v7

    .line 5606
    :try_start_7b
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 5608
    .local v14, "perm":I
    const/4 v1, -0x1

    if-ne v14, v1, :cond_e9

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-eq v1, v2, :cond_e9

    .line 5610
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePackage: bad packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or calling uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No permission to restore other packages"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5599
    .end local v14    # "perm":I
    :catch_cc
    move-exception v11

    .line 5600
    .local v11, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to restore nonexistent pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5601
    const/4 v1, -0x1

    goto :goto_6b

    .line 5616
    .end local v11    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v14    # "perm":I
    :cond_e9
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v1, :cond_112

    .line 5617
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to restore package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with no agent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5618
    const/4 v1, -0x1

    goto/16 :goto_6b

    .line 5624
    :cond_112
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v5

    .line 5629
    .local v5, "token":J
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_12a

    .line 5630
    const-string v1, "RestoreSession"

    const-string v2, "No data available for this package; not restoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    const/4 v1, -0x1

    goto/16 :goto_6b

    .line 5635
    :cond_12a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5636
    .local v12, "oldId":J
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5637
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 5638
    .local v10, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/BackupManagerService$RestoreParams;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5639
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v10}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5640
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_157
    .catchall {:try_start_7b .. :try_end_157} :catchall_33

    .line 5641
    const/4 v1, 0x0

    goto/16 :goto_6b
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .registers 25
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .prologue
    .line 5522
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    const-string v3, "performRestore"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5526
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5527
    .local v10, "b":Ljava/lang/StringBuilder;
    const-string v1, "restoreSome token="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5528
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5529
    const-string v1, " observer="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5530
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5531
    const-string v1, " packages="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5532
    if-nez p4, :cond_55

    .line 5533
    const-string v1, "null"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5545
    :goto_3b
    const-string v1, "RestoreSession"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v1, :cond_7a

    .line 5549
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore session already ended"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_52

    .line 5522
    .end local v10    # "b":Ljava/lang/StringBuilder;
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1

    .line 5535
    .restart local v10    # "b":Ljava/lang/StringBuilder;
    :cond_55
    const/16 v1, 0x7b

    :try_start_57
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5536
    const/4 v11, 0x1

    .line 5537
    .local v11, "first":Z
    move-object/from16 v9, p4

    .local v9, "arr$":[Ljava/lang/String;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_5f
    if-ge v13, v14, :cond_74

    aget-object v18, v9, v13

    .line 5538
    .local v18, "s":Ljava/lang/String;
    if-nez v11, :cond_72

    .line 5539
    const-string v1, ", "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5541
    :goto_6a
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5537
    add-int/lit8 v13, v13, 0x1

    goto :goto_5f

    .line 5540
    :cond_72
    const/4 v11, 0x0

    goto :goto_6a

    .line 5543
    .end local v18    # "s":Ljava/lang/String;
    :cond_74
    const/16 v1, 0x7d

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 5552
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "first":Z
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_7a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_86

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v1, :cond_90

    .line 5553
    :cond_86
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_57 .. :try_end_8d} :catchall_52

    .line 5554
    const/4 v1, -0x1

    .line 5578
    :goto_8e
    monitor-exit p0

    return v1

    .line 5557
    :cond_90
    :try_start_90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_9f

    .line 5558
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5559
    const/4 v1, -0x1

    goto :goto_8e

    .line 5562
    :cond_9f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_a8
    .catchall {:try_start_90 .. :try_end_a8} :catchall_52

    .line 5563
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v1, v1

    if-ge v12, v1, :cond_ff

    .line 5564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v1, v1, v12

    iget-wide v1, v1, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_fc

    .line 5565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 5566
    .local v16, "oldId":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 5568
    .local v15, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v8, 0x1

    move-object/from16 v4, p3

    move-wide/from16 v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V

    iput-object v1, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v15}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5571
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5572
    const/4 v1, 0x0

    monitor-exit v19

    goto :goto_8e

    .line 5575
    .end local v15    # "msg":Landroid/os/Message;
    .end local v16    # "oldId":J
    :catchall_f9
    move-exception v1

    monitor-exit v19
    :try_end_fb
    .catchall {:try_start_a9 .. :try_end_fb} :catchall_f9

    :try_start_fb
    throw v1
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_52

    .line 5563
    :cond_fc
    add-int/lit8 v12, v12, 0x1

    goto :goto_a9

    .line 5575
    :cond_ff
    :try_start_ff
    monitor-exit v19
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_f9

    .line 5577
    :try_start_100
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_100 .. :try_end_122} :catchall_52

    .line 5578
    const/4 v1, -0x1

    goto/16 :goto_8e
.end method
