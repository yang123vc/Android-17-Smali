.class final Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProviderService;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .registers 2

    .prologue
    .line 636
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p2, "x1"    # Landroid/support/v7/media/MediaRouteProviderService$1;

    .prologue
    .line 636
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 639
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 644
    :goto_5
    return-void

    .line 641
    :pswitch_6
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onBinderDied(Landroid/os/Messenger;)V
    invoke-static {v1, v0}, Landroid/support/v7/media/MediaRouteProviderService;->access$500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)V

    goto :goto_5

    .line 639
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
