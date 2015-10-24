.class public abstract Landroid/support/v7/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroid/support/v7/media/MediaRouter$ControlRequestCallback;

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease()V
    .registers 1

    .prologue
    .line 311
    return-void
.end method

.method public onSelect()V
    .registers 1

    .prologue
    .line 317
    return-void
.end method

.method public onSetVolume(I)V
    .registers 2
    .param p1, "volume"    # I

    .prologue
    .line 331
    return-void
.end method

.method public onUnselect()V
    .registers 1

    .prologue
    .line 323
    return-void
.end method

.method public onUpdateVolume(I)V
    .registers 2
    .param p1, "delta"    # I

    .prologue
    .line 339
    return-void
.end method
