.class final Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouteProvider;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProvider$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/media/MediaRouteProvider;
    .param p2, "x1"    # Landroid/support/v7/media/MediaRouteProvider$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 385
    :goto_5
    return-void

    .line 379
    :pswitch_6
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    # invokes: Landroid/support/v7/media/MediaRouteProvider;->deliverDescriptorChanged()V
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProvider;->access$100(Landroid/support/v7/media/MediaRouteProvider;)V

    goto :goto_5

    .line 382
    :pswitch_c
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    # invokes: Landroid/support/v7/media/MediaRouteProvider;->deliverDiscoveryRequestChanged()V
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProvider;->access$200(Landroid/support/v7/media/MediaRouteProvider;)V

    goto :goto_5

    .line 377
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
