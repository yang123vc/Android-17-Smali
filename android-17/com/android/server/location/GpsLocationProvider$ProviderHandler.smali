.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/GpsLocationProvider$1;

    .prologue
    .line 1539
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1542
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1543
    .local v0, "message":I
    packed-switch v0, :pswitch_data_a0

    .line 1579
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    monitor-enter v3

    .line 1580
    :try_start_d
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    shl-int/2addr v2, v0

    xor-int/lit8 v2, v2, -0x1

    # &= operator for: Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$1872(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 1581
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x9

    if-ne v0, v1, :cond_22

    .line 1582
    :cond_1d
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # operator-- for: Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1910(Lcom/android/server/location/GpsLocationProvider;)I

    .line 1584
    :cond_22
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3b

    .line 1585
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1587
    :cond_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_9d

    .line 1588
    return-void

    .line 1545
    :pswitch_3d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_47

    .line 1546
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleEnable()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1548
    :cond_47
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDisable()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1552
    :pswitch_4d
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_58

    move v1, v2

    :goto_54
    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Z)V

    goto :goto_6

    :cond_58
    const/4 v1, 0x0

    goto :goto_54

    .line 1555
    :pswitch_5a
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShot()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1558
    :pswitch_60
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_6

    .line 1561
    :pswitch_6c
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1564
    :pswitch_72
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1565
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1569
    :pswitch_80
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_6

    .line 1572
    :pswitch_8b
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;I)V

    goto/16 :goto_6

    .line 1575
    :pswitch_94
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;I)V

    goto/16 :goto_6

    .line 1587
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v1

    .line 1543
    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_4d
        :pswitch_60
        :pswitch_6c
        :pswitch_72
        :pswitch_80
        :pswitch_8b
        :pswitch_94
        :pswitch_5a
    .end packed-switch
.end method
