.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .prologue
    .line 3781
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "finishedCallback"    # Landroid/view/InputQueue$FinishedCallback;

    .prologue
    .line 3783
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V

    .line 3784
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    # invokes: Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;Z)V

    .line 3785
    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "finishedCallback"    # Landroid/view/InputQueue$FinishedCallback;

    .prologue
    .line 3788
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V

    .line 3789
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    # invokes: Landroid/view/ViewRootImpl;->dispatchMotion(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;Z)V

    .line 3790
    return-void
.end method
