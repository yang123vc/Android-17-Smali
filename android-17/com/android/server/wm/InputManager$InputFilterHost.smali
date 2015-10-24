.class final Lcom/android/server/wm/InputManager$InputFilterHost;
.super Ljava/lang/Object;
.source "InputManager.java"

# interfaces
.implements Lcom/android/server/wm/InputFilter$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/wm/InputManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputManager;)V
    .registers 2

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->this$0:Lcom/android/server/wm/InputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/InputManager;
    .param p2, "x1"    # Lcom/android/server/wm/InputManager$1;

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputManager$InputFilterHost;-><init>(Lcom/android/server/wm/InputManager;)V

    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .registers 2

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->mDisconnected:Z

    .line 505
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 10
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 508
    if-nez p1, :cond_a

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->this$0:Lcom/android/server/wm/InputManager;

    iget-object v6, v0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v6

    .line 513
    :try_start_f
    iget-boolean v0, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->mDisconnected:Z

    if-nez v0, :cond_1f

    .line 514
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v0, 0x4000000

    or-int v5, p2, v0

    move-object v0, p1

    # invokes: Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->access$200(Landroid/view/InputEvent;IIIII)I

    .line 517
    :cond_1f
    monitor-exit v6

    .line 518
    return-void

    .line 517
    :catchall_21
    move-exception v0

    monitor-exit v6
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v0
.end method
