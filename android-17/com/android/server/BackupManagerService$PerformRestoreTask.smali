.class Lcom/android/server/BackupManagerService$PerformRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;
    }
.end annotation


# instance fields
.field private mAgentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

.field private mFilterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mNeedFullBackup:Z

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestorePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStateName:Ljava/io/File;

.field private mStartRealtime:J

.field private mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .registers 17
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "restoreSetToken"    # J
    .param p6, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "pmToken"    # I
    .param p8, "needFullBackup"    # Z
    .param p9, "filterSet"    # [Ljava/lang/String;

    .prologue
    .line 4072
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4073
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->INITIAL:Lcom/android/server/BackupManagerService$RestoreState;

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    .line 4074
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    .line 4075
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    .line 4077
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 4078
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 4079
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    .line 4080
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 4081
    iput p7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    .line 4082
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    .line 4084
    if-eqz p9, :cond_34

    .line 4085
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    .line 4086
    move-object/from16 v0, p9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_28
    if-ge v1, v2, :cond_37

    aget-object v3, v0, v1

    .line 4087
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4086
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 4090
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_34
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    .line 4094
    :cond_37
    :try_start_37
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_44} :catch_45

    .line 4098
    :goto_44
    return-void

    .line 4095
    :catch_45
    move-exception v4

    goto :goto_44
.end method


# virtual methods
.method agentCleanup()V
    .registers 4

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4510
    :try_start_5
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_93

    .line 4511
    :cond_e
    :goto_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_91

    .line 4512
    :cond_17
    :goto_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 4527
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4531
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_76

    .line 4534
    :try_start_27
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 4542
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_76

    .line 4544
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore complete, killing host process of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_76} :catch_8f

    .line 4557
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4558
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4559
    :try_start_83
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4560
    monitor-exit v1

    .line 4561
    return-void

    .line 4560
    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_8c

    throw v0

    .line 4550
    :catch_8f
    move-exception v0

    goto :goto_76

    .line 4511
    :catch_91
    move-exception v0

    goto :goto_17

    .line 4510
    :catch_93
    move-exception v0

    goto/16 :goto_e
.end method

.method agentErrorCleanup()V
    .registers 3

    .prologue
    .line 4504
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentCleanup()V

    .line 4506
    return-void
.end method

.method beginRestore()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 4135
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 4138
    iput v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4142
    const/16 v4, 0xb0e

    const/4 v5, 0x2

    :try_start_10
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    .line 4147
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 4148
    .local v2, "omPackage":Landroid/content/pm/PackageInfo;
    const-string v4, "@pm@"

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4149
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4151
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    .line 4152
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_8e

    .line 4155
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    if-eqz v4, :cond_70

    .line 4156
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_54
    if-ltz v1, :cond_70

    .line 4157
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 4158
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 4159
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4156
    :cond_6d
    add-int/lit8 v1, v1, -0x1

    goto :goto_54

    .line 4169
    .end local v1    # "i":I
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_70
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4176
    :goto_77
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_79} :catch_96

    if-eqz v4, :cond_86

    .line 4180
    :try_start_7b
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_86} :catch_a4

    .line 4193
    :cond_86
    :goto_86
    iput v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4194
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->DOWNLOAD_DATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4195
    .end local v2    # "omPackage":Landroid/content/pm/PackageInfo;
    :goto_8d
    return-void

    .line 4172
    .restart local v2    # "omPackage":Landroid/content/pm/PackageInfo;
    :cond_8e
    :try_start_8e
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_95} :catch_96

    goto :goto_77

    .line 4186
    .end local v2    # "omPackage":Landroid/content/pm/PackageInfo;
    :catch_96
    move-exception v0

    .line 4188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v5, "Error communicating with transport for restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_8d

    .line 4181
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "omPackage":Landroid/content/pm/PackageInfo;
    :catch_a4
    move-exception v0

    .line 4182
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_a5
    const-string v4, "BackupManagerService"

    const-string v5, "Restore observer died at restoreStarting"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_af} :catch_96

    goto :goto_86
.end method

.method downloadRestoreData()V
    .registers 9

    .prologue
    const/16 v7, 0xb0f

    const/4 v6, 0x0

    .line 4206
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-wide v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4208
    iget v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    if-eqz v1, :cond_47

    .line 4209
    const-string v1, "BackupManagerService"

    const-string v2, "Error starting restore operation"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    const/16 v1, 0xb0f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4211
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_30} :catch_31

    .line 4224
    :goto_30
    return-void

    .line 4214
    :catch_31
    move-exception v0

    .line 4215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error communicating with transport for restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4217
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4218
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_30

    .line 4223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_47
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->PM_METADATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_30
.end method

.method public execute()V
    .registers 3

    .prologue
    .line 4104
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 4129
    :goto_d
    return-void

    .line 4106
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->beginRestore()V

    goto :goto_d

    .line 4110
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->downloadRestoreData()V

    goto :goto_d

    .line 4114
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->restorePmMetadata()V

    goto :goto_d

    .line 4118
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->restoreNextAgent()V

    goto :goto_d

    .line 4122
    :pswitch_1e
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->finalizeRestore()V

    .line 4126
    :goto_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    goto :goto_d

    .line 4124
    :cond_29
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 4104
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    .registers 5
    .param p1, "nextState"    # Lcom/android/server/BackupManagerService$RestoreState;

    .prologue
    .line 4588
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    .line 4589
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4590
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4591
    return-void
.end method

.method finalizeRestore()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 4401
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_5c

    .line 4406
    :goto_7
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_12

    .line 4408
    :try_start_b
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_65

    .line 4417
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    if-eqz v1, :cond_2f

    .line 4418
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v2}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 4419
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    iput-wide v2, v1, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 4420
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 4425
    :cond_2f
    iget v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    if-lez v1, :cond_3c

    .line 4428
    :try_start_33
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_6e

    .line 4433
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 4434
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4438
    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4440
    return-void

    .line 4402
    :catch_5c
    move-exception v0

    .line 4403
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error finishing restore"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 4409
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_65
    move-exception v0

    .line 4410
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died at restoreFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 4429
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_6e
    move-exception v1

    goto :goto_3c
.end method

.method public handleTimeout()V
    .registers 5

    .prologue
    .line 4577
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout restoring application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "restore timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4581
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 4582
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4583
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    .registers 14
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "needFullBackup"    # Z

    .prologue
    const/4 v8, 0x0

    .line 4446
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4447
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4449
    .local v7, "packageName":Ljava/lang/String;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateOneRestore packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 4453
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    .line 4454
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mSavedStateName:Ljava/io/File;

    .line 4456
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v4

    .line 4459
    .local v4, "token":I
    :try_start_66
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 4464
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    if-eqz v0, :cond_aa

    .line 4467
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting restore data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    const/16 v0, 0xb0f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4469
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4470
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4471
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4498
    :goto_a9
    return-void

    .line 4476
    :cond_aa
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4477
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 4480
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 4486
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v4, v1, v2, p0}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 4487
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p3

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_d8} :catch_d9

    goto :goto_a9

    .line 4488
    :catch_d9
    move-exception v6

    .line 4489
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call app for restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4490
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v8

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4491
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 4496
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_a9
.end method

.method public operationComplete()V
    .registers 6

    .prologue
    .line 4566
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    .line 4567
    .local v0, "size":I
    const/16 v1, 0xb11

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4569
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentCleanup()V

    .line 4571
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4572
    return-void
.end method

.method restoreNextAgent()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 4291
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v7

    .line 4293
    .local v7, "packageName":Ljava/lang/String;
    if-nez v7, :cond_1e

    .line 4294
    const-string v8, "BackupManagerService"

    const-string v9, "Error getting next restore package"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    const/16 v8, 0xb0f

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4296
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4395
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_1d
    return-void

    .line 4298
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_1e
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 4299
    const-string v8, "BackupManagerService"

    const-string v9, "No next package, finishing restore"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStartRealtime:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    .line 4301
    .local v5, "millis":I
    const/16 v8, 0xb12

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4302
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_52} :catch_53

    goto :goto_1d

    .line 4390
    .end local v5    # "millis":I
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_53
    move-exception v1

    .line 4391
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "BackupManagerService"

    const-string v9, "Unable to fetch restore data from transport"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    iput v12, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4393
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_1d

    .line 4306
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_63
    :try_start_63
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_65} :catch_53

    if-eqz v8, :cond_6e

    .line 4308
    :try_start_67
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    invoke-interface {v8, v9, v7}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6e} :catch_a5

    .line 4315
    :cond_6e
    :goto_6e
    :try_start_6e
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v8, v7}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-result-object v4

    .line 4316
    .local v4, "metaInfo":Lcom/android/server/PackageManagerBackupAgent$Metadata;
    if-nez v4, :cond_b1

    .line 4317
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Package metadata missing"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4320
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_1d

    .line 4309
    .end local v4    # "metaInfo":Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :catch_a5
    move-exception v1

    .line 4310
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v8, "BackupManagerService"

    const-string v9, "Restore observer died in onUpdate"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_b0} :catch_53

    goto :goto_6e

    .line 4326
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "metaInfo":Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :cond_b1
    const/16 v2, 0x40

    .line 4327
    .local v2, "flags":I
    :try_start_b3
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_bc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b3 .. :try_end_bc} :catch_124
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bc} :catch_53

    move-result-object v6

    .line 4336
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_bd
    iget v8, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v8, v9, :cond_16f

    .line 4340
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x20000

    and-int/2addr v8, v9

    if-nez v8, :cond_143

    .line 4342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > installed version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4344
    .local v3, "message":Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4347
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_1d

    .line 4328
    .end local v3    # "message":Ljava/lang/String;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_124
    move-exception v1

    .line 4329
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "BackupManagerService"

    const-string v9, "Invalid package restoring data"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4330
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Package missing on device"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4332
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_1d

    .line 4350
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_143
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > installed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but restoreAnyVersion"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    :cond_16f
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    # invokes: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v8, v9, v6}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_1a8

    .line 4357
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature mismatch restoring "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Signature mismatch"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4360
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_1d

    .line 4364
    :cond_1a8
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " restore version ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is compatible with installed version ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 4373
    .local v0, "agent":Landroid/app/IBackupAgent;
    if-nez v0, :cond_218

    .line 4374
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find backup agent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Restore agent missing"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4377
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_216
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_216} :catch_53

    goto/16 :goto_1d

    .line 4383
    :cond_218
    :try_start_218
    iget v8, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget-boolean v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    invoke-virtual {p0, v6, v8, v0, v9}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V

    .line 4384
    iget v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_225} :catch_227
    .catch Landroid/os/RemoteException; {:try_start_218 .. :try_end_225} :catch_53

    goto/16 :goto_1d

    .line 4385
    :catch_227
    move-exception v1

    .line 4386
    .local v1, "e":Ljava/lang/Exception;
    :try_start_228
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when attempting restore: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 4388
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_24c
    .catch Landroid/os/RemoteException; {:try_start_228 .. :try_end_24c} :catch_53

    goto/16 :goto_1d
.end method

.method restorePmMetadata()V
    .registers 13

    .prologue
    const/16 v11, 0xb0f

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4228
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v3

    .line 4229
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_26

    .line 4230
    const-string v4, "BackupManagerService"

    const-string v5, "Error getting first restore package"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    const/16 v4, 0xb0f

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4232
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4233
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4287
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_25
    :goto_25
    return-void

    .line 4235
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_26
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 4236
    const-string v4, "BackupManagerService"

    const-string v5, "No restore data available"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStartRealtime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 4238
    .local v1, "millis":I
    const/16 v4, 0xb12

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4239
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4240
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_5c} :catch_5d

    goto :goto_25

    .line 4276
    .end local v1    # "millis":I
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_5d
    move-exception v0

    .line 4277
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v5, "Error communicating with transport for restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v11, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4279
    iput v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4280
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v10, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4281
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_25

    .line 4242
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_79
    :try_start_79
    const-string v4, "@pm@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 4243
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected restore data for \"@pm@\", found only \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    const/16 v4, 0xb10

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "@pm@"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Package manager data missing"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4247
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_25

    .line 4252
    :cond_b8
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 4253
    .local v2, "omPackage":Landroid/content/pm/PackageInfo;
    const-string v4, "@pm@"

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4254
    new-instance v4, Lcom/android/server/PackageManagerBackupAgent;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    .line 4256
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V

    .line 4267
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v4

    if-nez v4, :cond_25

    .line 4268
    const-string v4, "BackupManagerService"

    const-string v5, "No restore metadata available, so not restoring settings"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    const/16 v4, 0xb10

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "@pm@"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Package manager restore metadata missing"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4271
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4272
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4273
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_112} :catch_5d

    goto/16 :goto_25
.end method
