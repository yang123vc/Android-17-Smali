.class Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$15;->onShown(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$15;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$15;)V
    .registers 2

    .prologue
    .line 3066
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3068
    const-string v0, "WindowManager"

    const-string v1, "Lock screen displayed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 3070
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3071
    :try_start_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 3072
    monitor-exit v1

    .line 3073
    return-void

    .line 3072
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v0
.end method
