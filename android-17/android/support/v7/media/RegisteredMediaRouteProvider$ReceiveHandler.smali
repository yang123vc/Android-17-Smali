.class final Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .registers 3
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .prologue
    .line 602
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 603
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 604
    return-void
.end method

.method private processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    .param p2, "what"    # I
    .param p3, "requestId"    # I
    .param p4, "arg"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 629
    packed-switch p2, :pswitch_data_4c

    .line 666
    :cond_4
    const/4 v1, 0x0

    .end local p5    # "obj":Ljava/lang/Object;
    :goto_5
    return v1

    .line 631
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericFailure(I)Z

    goto :goto_5

    .line 635
    :pswitch_a
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericSuccess(I)Z

    goto :goto_5

    .line 639
    :pswitch_e
    if-eqz p5, :cond_14

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 640
    :cond_14
    check-cast p5, Landroid/os/Bundle;

    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3, p4, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onRegistered(IILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_5

    .line 645
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_1b
    if-eqz p5, :cond_21

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 646
    :cond_21
    check-cast p5, Landroid/os/Bundle;

    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onDescriptorChanged(Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_5

    .line 651
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_28
    if-eqz p5, :cond_2e

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 652
    :cond_2e
    check-cast p5, Landroid/os/Bundle;

    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestSucceeded(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_5

    .line 658
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_35
    if-eqz p5, :cond_3b

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 659
    :cond_3b
    if-nez p6, :cond_45

    const/4 v0, 0x0

    .line 661
    .local v0, "error":Ljava/lang/String;
    :goto_3e
    check-cast p5, Landroid/os/Bundle;

    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3, v0, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_5

    .line 659
    .end local v0    # "error":Ljava/lang/String;
    .restart local p5    # "obj":Ljava/lang/Object;
    :cond_45
    const-string v1, "error"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 629
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_28
        :pswitch_35
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 608
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 612
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 613
    .local v1, "connection":Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    if-eqz v1, :cond_3b

    .line 614
    iget v2, p1, Landroid/os/Message;->what:I

    .line 615
    .local v2, "what":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 616
    .local v3, "requestId":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 617
    .local v4, "arg":I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 618
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    .local v6, "data":Landroid/os/Bundle;
    move-object v0, p0

    .line 619
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 620
    # getter for: Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->access$800()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 621
    const-string v0, "MediaRouteProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled message from server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v2    # "what":I
    .end local v3    # "requestId":I
    .end local v4    # "arg":I
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "data":Landroid/os/Bundle;
    :cond_3b
    return-void
.end method
