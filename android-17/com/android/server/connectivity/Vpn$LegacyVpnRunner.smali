.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mDaemons:[Ljava/lang/String;

.field private final mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 397
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 398
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 395
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 399
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 400
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "racoon"

    aput-object v1, v0, v2

    const-string v1, "mtpd"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 401
    new-array v0, v4, [[Ljava/lang/String;

    aput-object p3, v0, v2

    aput-object p4, v0, v3

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 403
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 406
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v1, "[Legacy VPN]"

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 411
    return-void
.end method

.method private checkpoint(Z)V
    .registers 10
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 453
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    .line 454
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 455
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 462
    :goto_13
    return-void

    .line 456
    :cond_14
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_27

    .line 457
    if-eqz p1, :cond_23

    const-wide/16 v2, 0xc8

    :cond_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_13

    .line 459
    :cond_27
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 460
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .registers 29

    .prologue
    .line 468
    const/16 v23, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 472
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1f
    move/from16 v0, v17

    if-ge v14, v0, :cond_94

    aget-object v10, v7, v14

    .line 473
    .local v10, "daemon":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "init.svc."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 474
    .local v16, "key":Ljava/lang/String;
    :goto_3a
    const-string v23, "stopped"

    const-string v24, "stopped"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_91

    .line 475
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_55} :catch_56
    .catchall {:try_start_2 .. :try_end_55} :catchall_ac

    goto :goto_3a

    .line 632
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "len$":I
    :catch_56
    move-exception v12

    .line 633
    .local v12, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v23, "LegacyVpnRunner"

    const-string v24, "Aborting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_ac

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_58f

    .line 638
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_81
    move/from16 v0, v17

    if-ge v14, v0, :cond_58f

    aget-object v10, v7, v14

    .line 639
    .restart local v10    # "daemon":Ljava/lang/String;
    const-string v23, "ctl.stop"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    add-int/lit8 v14, v14, 0x1

    goto :goto_81

    .line 472
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v16    # "key":Ljava/lang/String;
    :cond_91
    add-int/lit8 v14, v14, 0x1

    goto :goto_1f

    .line 480
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    :cond_94
    :try_start_94
    new-instance v22, Ljava/io/File;

    const-string v23, "/data/misc/vpn/state"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .local v22, "state":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 482
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_d9

    .line 483
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Cannot delete the state"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_ac} :catch_56
    .catchall {:try_start_94 .. :try_end_ac} :catchall_ac

    .line 637
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "state":Ljava/io/File;
    :catchall_ac
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_555

    .line 638
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_c9
    move/from16 v0, v17

    if-ge v14, v0, :cond_555

    aget-object v10, v7, v14

    .line 639
    .restart local v10    # "daemon":Ljava/lang/String;
    const-string v24, "ctl.stop"

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    add-int/lit8 v14, v14, 0x1

    goto :goto_c9

    .line 485
    .end local v10    # "daemon":Ljava/lang/String;
    .restart local v22    # "state":Ljava/io/File;
    :cond_d9
    :try_start_d9
    new-instance v23, Ljava/io/File;

    const-string v24, "/data/misc/vpn/abort"

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 488
    const/16 v20, 0x0

    .line 489
    .local v20, "restart":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v7, "arr$":[[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_ed
    move/from16 v0, v17

    if-ge v14, v0, :cond_ff

    aget-object v6, v7, v14

    .line 490
    .local v6, "arguments":[Ljava/lang/String;
    if-nez v20, :cond_f7

    if-eqz v6, :cond_fc

    :cond_f7
    const/16 v20, 0x1

    .line 489
    :goto_f9
    add-int/lit8 v14, v14, 0x1

    goto :goto_ed

    .line 490
    :cond_fc
    const/16 v20, 0x0

    goto :goto_f9

    .line 492
    .end local v6    # "arguments":[Ljava/lang/String;
    :cond_ff
    if-nez v20, :cond_13b

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_10f} :catch_56
    .catchall {:try_start_d9 .. :try_end_10f} :catchall_ac

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5c6

    .line 638
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_12b
    move/from16 v0, v17

    if-ge v14, v0, :cond_5c6

    aget-object v10, v7, v14

    .line 639
    .restart local v10    # "daemon":Ljava/lang/String;
    const-string v23, "ctl.stop"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    add-int/lit8 v14, v14, 0x1

    goto :goto_12b

    .line 496
    .end local v10    # "daemon":Ljava/lang/String;
    .local v7, "arr$":[[Ljava/lang/String;
    :cond_13b
    :try_start_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 499
    const/4 v13, 0x0

    .end local v7    # "arr$":[[Ljava/lang/String;
    .local v13, "i":I
    :goto_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_275

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v6, v23, v13

    .line 501
    .restart local v6    # "arguments":[Ljava/lang/String;
    if-nez v6, :cond_166

    .line 499
    :cond_163
    add-int/lit8 v13, v13, 0x1

    goto :goto_14a

    .line 506
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v10, v23, v13

    .line 507
    .restart local v10    # "daemon":Ljava/lang/String;
    const-string v23, "ctl.start"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "init.svc."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 511
    .restart local v16    # "key":Ljava/lang/String;
    :goto_18a
    const-string v23, "running"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1a0

    .line 512
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_18a

    .line 516
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LocalSocket;

    invoke-direct/range {v24 .. v24}, Landroid/net/LocalSocket;-><init>()V

    aput-object v24, v23, v13

    .line 517
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v23, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v23

    invoke-direct {v4, v10, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_1b6} :catch_56
    .catchall {:try_start_13b .. :try_end_1b6} :catchall_ac

    .line 523
    .local v4, "address":Landroid/net/LocalSocketAddress;
    :goto_1b6
    :try_start_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c3} :catch_203
    .catchall {:try_start_1b6 .. :try_end_1c3} :catchall_ac

    .line 530
    :try_start_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    const/16 v24, 0x1f4

    invoke-virtual/range {v23 .. v24}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    .line 534
    .local v18, "out":Ljava/io/OutputStream;
    move-object v7, v6

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_1e1
    move/from16 v0, v17

    if-ge v14, v0, :cond_235

    aget-object v5, v7, v14

    .line 535
    .local v5, "argument":Ljava/lang/String;
    sget-object v23, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 536
    .local v9, "bytes":[B
    array-length v0, v9

    move/from16 v23, v0

    const v24, 0xffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_20e

    .line 537
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "Argument is too large"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 525
    .end local v5    # "argument":Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "bytes":[B
    .end local v18    # "out":Ljava/io/OutputStream;
    :catch_203
    move-exception v23

    .line 528
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_1b6

    .line 539
    .restart local v5    # "argument":Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "bytes":[B
    .restart local v18    # "out":Ljava/io/OutputStream;
    :cond_20e
    array-length v0, v9

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 540
    array-length v0, v9

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 541
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 542
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 534
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e1

    .line 544
    .end local v5    # "argument":Ljava/lang/String;
    .end local v9    # "bytes":[B
    :cond_235
    const/16 v23, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 545
    const/16 v23, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 546
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_255} :catch_56
    .catchall {:try_start_1c3 .. :try_end_255} :catchall_ac

    move-result-object v15

    .line 552
    .local v15, "in":Ljava/io/InputStream;
    :goto_256
    :try_start_256
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_259} :catch_58c
    .catchall {:try_start_256 .. :try_end_259} :catchall_ac

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_163

    .line 558
    :goto_262
    const/16 v23, 0x1

    :try_start_264
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_256

    .line 572
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "arguments":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "out":Ljava/io/OutputStream;
    :cond_26c
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 563
    :cond_275
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_2dc

    .line 565
    const/4 v13, 0x0

    :goto_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_26c

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v10, v23, v13

    .line 567
    .restart local v10    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    if-eqz v23, :cond_2d9

    const-string v23, "running"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init.svc."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2d9

    .line 569
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is dead"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 565
    :cond_2d9
    add-int/lit8 v13, v13, 0x1

    goto :goto_27c

    .line 576
    .end local v10    # "daemon":Ljava/lang/String;
    :cond_2dc
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v8, v0, [B

    .line 577
    .local v8, "buffer":[B
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v23

    array-length v0, v8

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_309

    .line 578
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Cannot read the state"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 580
    :cond_309
    new-instance v23, Ljava/lang/String;

    sget-object v24, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v24, "\n"

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .line 581
    .local v19, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_331

    .line 582
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Cannot parse the state"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 586
    :cond_331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_379

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_38d

    .line 591
    :cond_379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 595
    :cond_38d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_3d3

    .line 596
    :cond_3ad
    const/16 v23, 0x3

    aget-object v23, v19, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 597
    .local v11, "dnsServers":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3d3

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 603
    .end local v11    # "dnsServers":Ljava/lang/String;
    :cond_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3f3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_41b

    .line 604
    :cond_3f3
    const/16 v23, 0x4

    aget-object v23, v19, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 605
    .local v21, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_41b

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const-string v24, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 611
    .end local v21    # "searchDomains":Ljava/lang/String;
    :cond_41b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v23 .. v25}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_443
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_443} :catch_56
    .catchall {:try_start_264 .. :try_end_443} :catchall_ac

    .line 616
    const/16 v23, 0x0

    :try_start_445
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_494

    .line 620
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is gone"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 631
    :catchall_491
    move-exception v23

    monitor-exit v24
    :try_end_493
    .catchall {:try_start_445 .. :try_end_493} :catchall_491

    :try_start_493
    throw v23
    :try_end_494
    .catch Ljava/lang/Exception; {:try_start_493 .. :try_end_494} :catch_56
    .catchall {:try_start_493 .. :try_end_494} :catchall_ac

    .line 624
    :cond_494
    :try_start_494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$202(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    # invokes: Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 628
    const-string v23, "LegacyVpnRunner"

    const-string v25, "Connected!"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    .line 631
    monitor-exit v24
    :try_end_529
    .catchall {:try_start_494 .. :try_end_529} :catchall_491

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5f5

    .line 638
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_545
    move/from16 v0, v17

    if-ge v14, v0, :cond_5f5

    aget-object v10, v7, v14

    .line 639
    .restart local v10    # "daemon":Ljava/lang/String;
    const-string v23, "ctl.stop"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    add-int/lit8 v14, v14, 0x1

    goto :goto_545

    .line 644
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "buffer":[B
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "parameters":[Ljava/lang/String;
    .end local v20    # "restart":Z
    .end local v22    # "state":Ljava/io/File;
    :cond_555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_57d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_58b

    .line 646
    :cond_57d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 637
    :cond_58b
    throw v23

    .line 555
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v6    # "arguments":[Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v10    # "daemon":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v14    # "i$":I
    .restart local v15    # "in":Ljava/io/InputStream;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v17    # "len$":I
    .restart local v18    # "out":Ljava/io/OutputStream;
    .restart local v20    # "restart":Z
    .restart local v22    # "state":Ljava/io/File;
    :catch_58c
    move-exception v23

    goto/16 :goto_262

    .line 644
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "arguments":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "i$":I
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "len$":I
    .end local v18    # "out":Ljava/io/OutputStream;
    .end local v20    # "restart":Z
    .end local v22    # "state":Ljava/io/File;
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_58f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5c5

    .line 646
    :cond_5b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    .end local v12    # "e":Ljava/lang/Exception;
    :goto_5bd
    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 649
    :cond_5c5
    return-void

    .line 644
    .restart local v14    # "i$":I
    .restart local v17    # "len$":I
    .restart local v20    # "restart":Z
    .restart local v22    # "state":Ljava/io/File;
    :cond_5c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5c5

    .line 646
    :cond_5ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    goto :goto_5bd

    .line 644
    .restart local v8    # "buffer":[B
    .restart local v13    # "i":I
    .restart local v19    # "parameters":[Ljava/lang/String;
    :cond_5f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_61d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5c5

    .line 646
    :cond_61d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    goto :goto_5bd
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 5
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 415
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 418
    :cond_23
    return-void
.end method

.method public exit()V
    .registers 6

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 423
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .local v0, "arr$":[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 425
    .local v3, "socket":Landroid/net/LocalSocket;
    :try_start_b
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_11

    .line 423
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 426
    :catch_11
    move-exception v4

    goto :goto_e

    .line 430
    .end local v3    # "socket":Landroid/net/LocalSocket;
    :cond_13
    return-void
.end method

.method public getInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 435
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 436
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    .line 438
    :cond_19
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 444
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    .line 446
    :try_start_a
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    .line 448
    monitor-exit v1

    .line 449
    return-void

    .line 448
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v0
.end method
