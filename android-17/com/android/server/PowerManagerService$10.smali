.class Lcom/android/server/PowerManagerService$10;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2

    .prologue
    .line 2471
    iput-object p1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2473
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    # getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 2474
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    # getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    # getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2475
    :cond_17
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    # getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)F

    move-result v1

    float-to-int v0, v1

    .line 2476
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$5202(Lcom/android/server/PowerManagerService;Z)Z

    .line 2477
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;Z)Z

    .line 2478
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    # invokes: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v1, v0}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;I)V

    .line 2480
    .end local v0    # "value":I
    :cond_2f
    monitor-exit v2

    .line 2481
    return-void

    .line 2480
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v1
.end method
