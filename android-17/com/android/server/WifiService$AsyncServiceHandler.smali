.class Lcom/android/server/WifiService$AsyncServiceHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    .line 232
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v5, 0x16

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_146

    .line 305
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiServicehandler.handleMessage ignoring msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_23
    :goto_23
    return-void

    .line 239
    :sswitch_24
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3d

    .line 240
    const-string v1, "WifiService"

    const-string v2, "New client listening to asynchronous messages"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 243
    :cond_3d
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client connection failure, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 248
    :sswitch_58
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_72

    .line 249
    const-string v1, "WifiService"

    const-string v2, "Send failed, client connection lost"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_64
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    .line 251
    :cond_72
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client connection lost with reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 257
    :sswitch_8d
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 258
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_23

    .line 262
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_9e
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_c8

    :goto_a4
    # setter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v3, v1}, Lcom/android/server/WifiService;->access$302(Lcom/android/server/WifiService;Z)Z

    .line 263
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # operator++ for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/android/server/WifiService;->access$408(Lcom/android/server/WifiService;)I

    .line 264
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 265
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # invokes: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v1

    invoke-static {p0, v5, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_23

    :cond_c8
    move v1, v2

    .line 262
    goto :goto_a4

    .line 272
    :sswitch_ca
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v3

    if-ne v1, v3, :cond_23

    .line 273
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # invokes: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v1

    invoke-static {p0, v5, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_23

    .line 280
    :sswitch_e8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_fb

    .line 281
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiStateMachine;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_23

    .line 283
    :cond_fb
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->connectNetwork(I)V

    goto/16 :goto_23

    .line 288
    :sswitch_108
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiStateMachine;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_23

    .line 292
    :sswitch_117
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->forgetNetwork(I)V

    goto/16 :goto_23

    .line 297
    :sswitch_124
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WpsInfo;

    invoke-virtual {v2, v3, v1}, Landroid/net/wifi/WifiStateMachine;->startWps(Landroid/os/Messenger;Landroid/net/wifi/WpsInfo;)V

    goto/16 :goto_23

    .line 301
    :sswitch_135
    iget-object v1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    # getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->disableNetwork(Landroid/os/Messenger;II)V

    goto/16 :goto_23

    .line 237
    :sswitch_data_146
    .sparse-switch
        0x1 -> :sswitch_e8
        0x2 -> :sswitch_117
        0x3 -> :sswitch_108
        0x4 -> :sswitch_124
        0x5 -> :sswitch_135
        0x15 -> :sswitch_9e
        0x16 -> :sswitch_ca
        0x11000 -> :sswitch_24
        0x11001 -> :sswitch_8d
        0x11004 -> :sswitch_58
    .end sparse-switch
.end method
