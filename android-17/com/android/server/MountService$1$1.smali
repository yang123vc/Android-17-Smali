.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .registers 2

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 486
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_70

    .line 487
    :try_start_9
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 488
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 489
    .local v0, "count":I
    new-array v9, v0, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 490
    .local v5, "paths":[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    .line 491
    .local v8, "states":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 492
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    aget-object v11, v5, v2

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v2

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 494
    :cond_3b
    monitor-exit v10
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_6d

    .line 496
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v0, :cond_8c

    .line 497
    :try_start_3f
    aget-object v4, v5, v2

    .line 498
    .local v4, "path":Ljava/lang/String;
    aget-object v7, v8, v2

    .line 500
    .local v7, "state":Ljava/lang/String;
    const-string v9, "unmounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 501
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v9, v4}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .line 502
    .local v6, "rc":I
    if-eqz v6, :cond_6a

    .line 503
    const-string v9, "MountService"

    const-string v10, "Boot-time mount failed (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6a} :catch_70

    .line 496
    .end local v6    # "rc":I
    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 494
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "paths":[Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "states":[Ljava/lang/String;
    :catchall_6d
    move-exception v9

    :try_start_6e
    monitor-exit v10
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v9
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_70} :catch_70

    .line 531
    :catch_70
    move-exception v1

    .line 532
    .local v1, "ex":Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Boot-time mount exception"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_78
    :goto_78
    return-void

    .line 506
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "paths":[Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    .restart local v8    # "states":[Ljava/lang/String;
    :cond_79
    :try_start_79
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 511
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    # invokes: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v10, v4, v11, v12}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6a

    .line 517
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    :cond_8c
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 518
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    # invokes: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 527
    :cond_a8
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 528
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    # invokes: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Z)V

    .line 529
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_c2} :catch_70

    goto :goto_78
.end method
