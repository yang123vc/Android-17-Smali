.class Lcom/android/internal/policy/impl/PhoneWindowManager$15;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3

    .prologue
    .line 3061
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 3063
    if-eqz p1, :cond_f

    .line 3065
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$15;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_2a

    .line 3084
    :goto_e
    return-void

    .line 3078
    :cond_f
    const-string v0, "WindowManager"

    const-string v1, "No lock screen!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 3080
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3081
    :try_start_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 3082
    monitor-exit v1

    goto :goto_e

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v0

    .line 3075
    :catch_2a
    move-exception v0

    goto :goto_e
.end method
