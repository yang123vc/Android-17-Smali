.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteControlClientRecord"
.end annotation


# instance fields
.field private mDisconnected:Z

.field private final mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V
    .registers 4
    .param p2, "rcc"    # Ljava/lang/Object;

    .prologue
    .line 1946
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1947
    # getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1000(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v7/media/RemoteControlClientCompat;->obtain(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v7/media/RemoteControlClientCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    .line 1948
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/RemoteControlClientCompat;->setVolumeCallback(Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;)V

    .line 1949
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    .line 1950
    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 3

    .prologue
    .line 1957
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mDisconnected:Z

    .line 1958
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RemoteControlClientCompat;->setVolumeCallback(Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;)V

    .line 1959
    return-void
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    invoke-virtual {v0}, Landroid/support/v7/media/RemoteControlClientCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onVolumeSetRequest(I)V
    .registers 3
    .param p1, "volume"    # I

    .prologue
    .line 1967
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mDisconnected:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    # getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1200(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1968
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    # getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1200(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 1970
    :cond_15
    return-void
.end method

.method public onVolumeUpdateRequest(I)V
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 1974
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mDisconnected:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    # getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1200(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1975
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    # getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1200(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 1977
    :cond_15
    return-void
.end method

.method public updatePlaybackInfo()V
    .registers 3

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    # getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;
    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1100(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RemoteControlClientCompat;->setPlaybackInfo(Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;)V

    .line 1963
    return-void
.end method
