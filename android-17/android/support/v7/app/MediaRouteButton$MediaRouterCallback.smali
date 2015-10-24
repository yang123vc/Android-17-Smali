.class final Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteButton;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteButton;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteButton;Landroid/support/v7/app/MediaRouteButton$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/app/MediaRouteButton;
    .param p2, "x1"    # Landroid/support/v7/app/MediaRouteButton$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 543
    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 553
    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 548
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 518
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 528
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 523
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 533
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 537
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 538
    return-void
.end method
