.class Landroid/webkit/HTML5VideoFullScreen$1;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 84
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 86
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 88
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 90
    :cond_2a
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 92
    :cond_33
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # setter for: Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/webkit/HTML5VideoFullScreen;->access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 97
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x2

    # setter for: Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$402(Landroid/webkit/HTML5VideoFullScreen;I)I

    .line 99
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # invokes: Landroid/webkit/HTML5VideoFullScreen;->prepareForFullScreen()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$500(Landroid/webkit/HTML5VideoFullScreen;)V

    .line 100
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 107
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 108
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x0

    # setter for: Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 109
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 110
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 112
    :cond_27
    return-void
.end method
