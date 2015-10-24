.class Landroid/support/v7/app/MediaRouteControllerDialog$1$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/MediaRouteControllerDialog$1;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog$1;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$1$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$1$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$1;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog$1;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$100(Landroid/support/v7/app/MediaRouteControllerDialog;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 149
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$1$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$1;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog$1;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z
    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$102(Landroid/support/v7/app/MediaRouteControllerDialog;Z)Z

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$1$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$1;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog$1;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    # invokes: Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolume()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$200(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    .line 152
    :cond_19
    return-void
.end method
