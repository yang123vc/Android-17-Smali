.class Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsWatching:Z

.field private final mRotationChanged:Ljava/lang/Runnable;

.field private final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/PhoneWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3414
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 3416
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    .line 3421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 6
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 3431
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3432
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-nez v1, :cond_16

    .line 3434
    :try_start_7
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    .line 3435
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    .line 3436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_22
    .catchall {:try_start_7 .. :try_end_16} :catchall_2b

    .line 3441
    :cond_16
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3442
    monitor-exit v2

    .line 3443
    return-void

    .line 3437
    :catch_22
    move-exception v0

    .line 3438
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v3, "Couldn\'t start watching for device rotation"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 3442
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method dispatchRotationChanged()V
    .registers 6

    .prologue
    .line 3461
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3462
    const/4 v0, 0x0

    .line 3463
    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 3464
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3465
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow;

    .line 3466
    .local v2, "win":Lcom/android/internal/policy/impl/PhoneWindow;
    if-eqz v2, :cond_22

    .line 3467
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onOptionsPanelRotationChanged()V

    .line 3468
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3470
    :cond_22
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 3473
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v3

    :cond_2b
    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 3474
    return-void
.end method

.method public onRotationChanged(I)V
    .registers 4
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3428
    return-void
.end method

.method public removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 7
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 3446
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3447
    const/4 v0, 0x0

    .line 3448
    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 3449
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3450
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow;

    .line 3451
    .local v2, "win":Lcom/android/internal/policy/impl/PhoneWindow;
    if-eqz v2, :cond_1e

    if-ne v2, p1, :cond_27

    .line 3452
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 3457
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v3

    .line 3454
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .restart local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3457
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/impl/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/impl/PhoneWindow;
    :cond_2a
    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_24

    .line 3458
    return-void
.end method
