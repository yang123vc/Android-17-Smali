.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$currentStatus:I

.field final synthetic val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$MoveParams;)V
    .registers 4

    .prologue
    .line 8476
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 8479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8480
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$13;->val$currentStatus:I

    .line 8481
    .local v11, "returnCode":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$currentStatus:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_df

    .line 8482
    const/4 v12, 0x0

    .line 8483
    .local v12, "uidArr":[I
    const/4 v8, 0x0

    .line 8484
    .local v8, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v15

    .line 8485
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 8486
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_131

    .line 8487
    const-string v14, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " doesn\'t exist. Aborting move"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8489
    const/4 v11, -0x2

    .line 8503
    :goto_68
    monitor-exit v15
    :try_end_69
    .catchall {:try_start_1f .. :try_end_69} :catchall_1cc

    .line 8504
    const/4 v14, 0x1

    if-ne v11, v14, :cond_df

    .line 8506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static {v14, v15, v8, v12, v0}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 8508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v14, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v15

    .line 8509
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_32f

    .line 8510
    :try_start_88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 8512
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_1cf

    .line 8513
    const-string v14, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " doesn\'t exist. Aborting move"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8515
    const/4 v11, -0x2

    .line 8582
    :cond_d1
    :goto_d1
    monitor-exit v16
    :try_end_d2
    .catchall {:try_start_88 .. :try_end_d2} :catchall_32c

    .line 8583
    :try_start_d2
    monitor-exit v15
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_32f

    .line 8585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static {v14, v15, v8, v12, v0}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 8588
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "uidArr":[I
    :cond_df
    const/4 v14, 0x1

    if-eq v11, v14, :cond_370

    .line 8590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v14, :cond_f5

    .line 8591
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v15, -0x6e

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(I)I

    .line 8604
    :cond_f5
    :goto_f5
    const/4 v14, -0x7

    if-eq v11, v14, :cond_11f

    .line 8605
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v15

    .line 8606
    :try_start_ff
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 8607
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_11e

    .line 8608
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 8610
    :cond_11e
    monitor-exit v15
    :try_end_11f
    .catchall {:try_start_ff .. :try_end_11f} :catchall_391

    .line 8613
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_11f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v5, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    .line 8614
    .local v5, "observer":Landroid/content/pm/IPackageMoveObserver;
    if-eqz v5, :cond_130

    .line 8616
    :try_start_127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-interface {v5, v14, v11}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_130} :catch_394

    .line 8621
    :cond_130
    :goto_130
    return-void

    .line 8490
    .end local v5    # "observer":Landroid/content/pm/IPackageMoveObserver;
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "uidArr":[I
    :cond_131
    :try_start_131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1aa

    .line 8491
    const-string v14, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " code path changed from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Aborting move and returning error"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8495
    const/4 v11, -0x6

    goto/16 :goto_68

    .line 8497
    :cond_1aa
    const/4 v14, 0x1

    new-array v13, v14, [I

    const/4 v14, 0x0

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    aput v16, v13, v14
    :try_end_1ba
    .catchall {:try_start_131 .. :try_end_1ba} :catchall_1cc

    .line 8500
    .end local v12    # "uidArr":[I
    .local v13, "uidArr":[I
    :try_start_1ba
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1bf
    .catchall {:try_start_1ba .. :try_end_1bf} :catchall_39e

    .line 8501
    .end local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1bf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c8
    .catchall {:try_start_1bf .. :try_end_1c8} :catchall_3a2

    move-object v8, v9

    .end local v9    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "uidArr":[I
    .restart local v12    # "uidArr":[I
    goto/16 :goto_68

    .line 8503
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1cc
    move-exception v14

    :goto_1cd
    :try_start_1cd
    monitor-exit v15
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1cc

    throw v14

    .line 8516
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1cf
    :try_start_1cf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_248

    .line 8518
    const-string v14, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " code path changed from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Aborting move and returning error"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8522
    const/4 v11, -0x6

    goto/16 :goto_d1

    .line 8524
    :cond_248
    iget-object v6, v7, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 8525
    .local v6, "oldCodePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    .line 8526
    .local v2, "newCodePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    .line 8527
    .local v4, "newResPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v3

    .line 8530
    .local v3, "newNativePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    and-int/lit8 v14, v14, 0x8

    if-nez v14, :cond_345

    .line 8531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/server/pm/Installer;->unlinkNativeLibraryDirectory(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_332

    .line 8533
    const/4 v11, -0x1

    .line 8545
    :cond_28b
    :goto_28b
    const/4 v14, 0x1

    if-ne v11, v14, :cond_2a3

    .line 8546
    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 8548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    invoke-static {v14, v7}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_2a3

    .line 8551
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iput-object v14, v7, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 8552
    const/4 v11, -0x1

    .line 8556
    :cond_2a3
    const/4 v14, 0x1

    if-ne v11, v14, :cond_d1

    .line 8557
    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 8558
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 8559
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v4, v14, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 8560
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v14, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 8561
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 8562
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v14, Ljava/io/File;

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v14, v10, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 8563
    iget-object v14, v10, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 8564
    new-instance v14, Ljava/io/File;

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v14, v10, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 8566
    iget-object v14, v10, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 8567
    iput-object v3, v10, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 8570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_360

    .line 8571
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    const/high16 v18, 0x40000

    or-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8575
    :goto_308
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v10, v14}, Lcom/android/server/pm/PackageSetting;->setFlags(I)V

    .line 8576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v14, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14}, Lcom/android/server/pm/Settings;->writeLPr()V

    goto/16 :goto_d1

    .line 8582
    .end local v2    # "newCodePath":Ljava/lang/String;
    .end local v3    # "newNativePath":Ljava/lang/String;
    .end local v4    # "newResPath":Ljava/lang/String;
    .end local v6    # "oldCodePath":Ljava/lang/String;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_32c
    move-exception v14

    monitor-exit v16
    :try_end_32e
    .catchall {:try_start_1cf .. :try_end_32e} :catchall_32c

    :try_start_32e
    throw v14

    .line 8583
    :catchall_32f
    move-exception v14

    monitor-exit v15
    :try_end_331
    .catchall {:try_start_32e .. :try_end_331} :catchall_32f

    throw v14

    .line 8535
    .restart local v2    # "newCodePath":Ljava/lang/String;
    .restart local v3    # "newNativePath":Ljava/lang/String;
    .restart local v4    # "newResPath":Ljava/lang/String;
    .restart local v6    # "oldCodePath":Ljava/lang/String;
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_332
    :try_start_332
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    goto/16 :goto_28b

    .line 8539
    :cond_345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_28b

    .line 8541
    const/4 v11, -0x1

    goto/16 :goto_28b

    .line 8573
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_360
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    const v18, -0x40001

    and-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_36f
    .catchall {:try_start_332 .. :try_end_36f} :catchall_32c

    goto :goto_308

    .line 8595
    .end local v2    # "newCodePath":Ljava/lang/String;
    .end local v3    # "newNativePath":Ljava/lang/String;
    .end local v4    # "newResPath":Ljava/lang/String;
    .end local v6    # "oldCodePath":Ljava/lang/String;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "uidArr":[I
    :cond_370
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->gc()V

    .line 8597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v14, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v15

    .line 8598
    :try_start_37e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$13;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 8599
    monitor-exit v15

    goto/16 :goto_f5

    :catchall_38e
    move-exception v14

    monitor-exit v15
    :try_end_390
    .catchall {:try_start_37e .. :try_end_390} :catchall_38e

    throw v14

    .line 8610
    :catchall_391
    move-exception v14

    :try_start_392
    monitor-exit v15
    :try_end_393
    .catchall {:try_start_392 .. :try_end_393} :catchall_391

    throw v14

    .line 8617
    .restart local v5    # "observer":Landroid/content/pm/IPackageMoveObserver;
    :catch_394
    move-exception v1

    .line 8618
    .local v1, "e":Landroid/os/RemoteException;
    const-string v14, "PackageManager"

    const-string v15, "Observer no longer exists."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 8503
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "observer":Landroid/content/pm/IPackageMoveObserver;
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "uidArr":[I
    :catchall_39e
    move-exception v14

    move-object v12, v13

    .end local v13    # "uidArr":[I
    .restart local v12    # "uidArr":[I
    goto/16 :goto_1cd

    .end local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "uidArr":[I
    .restart local v9    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "uidArr":[I
    :catchall_3a2
    move-exception v14

    move-object v8, v9

    .end local v9    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "uidArr":[I
    .restart local v12    # "uidArr":[I
    goto/16 :goto_1cd
.end method
