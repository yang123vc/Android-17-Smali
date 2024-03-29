.class Landroid/media/RemoteControlClient$EventHandler;
.super Landroid/os/Handler;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V
    .registers 4
    .param p2, "rcc"    # Landroid/media/RemoteControlClient;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 688
    iput-object p1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    .line 689
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 690
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 694
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_94

    .line 728
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in RemoteControlClient handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_25
    return-void

    .line 696
    :pswitch_26
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 697
    :try_start_2d
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1400(Landroid/media/RemoteControlClient;)V

    .line 698
    monitor-exit v1

    goto :goto_25

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v0

    .line 701
    :pswitch_37
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 702
    :try_start_3e
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)V

    .line 703
    monitor-exit v1

    goto :goto_25

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_45

    throw v0

    .line 706
    :pswitch_48
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 707
    :try_start_4f
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendTransportControlFlags_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1500(Landroid/media/RemoteControlClient;)V

    .line 708
    monitor-exit v1

    goto :goto_25

    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_56

    throw v0

    .line 711
    :pswitch_59
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 712
    :try_start_60
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1100(Landroid/media/RemoteControlClient;)V

    .line 713
    monitor-exit v1

    goto :goto_25

    :catchall_67
    move-exception v0

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_67

    throw v0

    .line 716
    :pswitch_6a
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/RemoteControlClient;->onNewInternalClientGen(Ljava/lang/Integer;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/RemoteControlClient;->access$1600(Landroid/media/RemoteControlClient;Ljava/lang/Integer;II)V

    goto :goto_25

    .line 719
    :pswitch_78
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V
    invoke-static {v0, v1}, Landroid/media/RemoteControlClient;->access$1700(Landroid/media/RemoteControlClient;I)V

    goto :goto_25

    .line 722
    :pswitch_80
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    # invokes: Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v1, v0}, Landroid/media/RemoteControlClient;->access$1800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    goto :goto_25

    .line 725
    :pswitch_8a
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    # invokes: Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v1, v0}, Landroid/media/RemoteControlClient;->access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    goto :goto_25

    .line 694
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_26
        :pswitch_37
        :pswitch_48
        :pswitch_59
        :pswitch_6a
        :pswitch_78
        :pswitch_80
        :pswitch_8a
    .end packed-switch
.end method
