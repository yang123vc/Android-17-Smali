.class Landroid/widget/ViewFlipper$2;
.super Landroid/os/Handler;
.source "ViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/ViewFlipper;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_20

    .line 205
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    # getter for: Landroid/widget/ViewFlipper;->mRunning:Z
    invoke-static {v0}, Landroid/widget/ViewFlipper;->access$300(Landroid/widget/ViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 206
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 207
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 208
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    # getter for: Landroid/widget/ViewFlipper;->mFlipInterval:I
    invoke-static {v0}, Landroid/widget/ViewFlipper;->access$400(Landroid/widget/ViewFlipper;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ViewFlipper$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    :cond_20
    return-void
.end method
