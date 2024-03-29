.class Lcom/android/server/BackupManagerService$PerformClearTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClearTask"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 4598
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4599
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 4600
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 4601
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4606
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4607
    .local v0, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4608
    .local v1, "stateFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4612
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_3d
    .catchall {:try_start_0 .. :try_end_22} :catchall_2f

    .line 4618
    :try_start_22
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_48

    .line 4624
    :goto_27
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .end local v0    # "stateDir":Ljava/io/File;
    .end local v1    # "stateFile":Ljava/io/File;
    :goto_2b
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4626
    return-void

    .line 4616
    :catchall_2f
    move-exception v2

    .line 4618
    :try_start_30
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_4a

    .line 4624
    :goto_35
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4616
    throw v2

    .line 4613
    :catch_3d
    move-exception v2

    .line 4618
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_4c

    .line 4624
    :goto_43
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2b

    .line 4619
    .restart local v0    # "stateDir":Ljava/io/File;
    .restart local v1    # "stateFile":Ljava/io/File;
    :catch_48
    move-exception v2

    goto :goto_27

    .end local v0    # "stateDir":Ljava/io/File;
    .end local v1    # "stateFile":Ljava/io/File;
    :catch_4a
    move-exception v3

    goto :goto_35

    :catch_4c
    move-exception v2

    goto :goto_43
.end method
