.class Lcom/android/server/MountService$ShutdownCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownCallBack"
.end annotation


# instance fields
.field observer:Landroid/os/storage/IMountShutdownObserver;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V
    .registers 6
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    .line 341
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 342
    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    .line 343
    return-void
.end method


# virtual methods
.method handleFinished()V
    .registers 7

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/MountService$ShutdownCallBack;->removeEncryption:Z

    # invokes: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    move-result v1

    .line 348
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_14

    .line 350
    :try_start_f
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    invoke-interface {v2, v1}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 355
    :cond_14
    :goto_14
    return-void

    .line 351
    :catch_15
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
