.class Lcom/android/server/PowerManagerService$TimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field remainingTimeoutOverride:J

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/PowerManagerService$1;

    .prologue
    .line 1294
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    # getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 1305
    :try_start_7
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_e

    .line 1306
    monitor-exit v6

    .line 1326
    :goto_d
    return-void

    .line 1309
    :cond_e
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    # setter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$2602(Lcom/android/server/PowerManagerService;I)I

    .line 1310
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    # getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)I

    move-result v4

    or-int/2addr v3, v4

    # invokes: Lcom/android/server/PowerManagerService;->setPowerState(I)V
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;I)V

    .line 1312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1314
    .local v1, "now":J
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    packed-switch v0, :pswitch_data_4c

    .line 1325
    :goto_2c
    :pswitch_2c
    monitor-exit v6

    goto :goto_d

    .end local v1    # "now":J
    :catchall_2e
    move-exception v0

    monitor-exit v6
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0

    .line 1317
    .restart local v1    # "now":J
    :pswitch_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    # getter for: Lcom/android/server/PowerManagerService;->mDimDelay:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-ltz v0, :cond_42

    .line 1318
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x1

    # invokes: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_2c

    .line 1322
    :cond_42
    :pswitch_42
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x0

    # invokes: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;JJI)V
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_2e

    goto :goto_2c

    .line 1314
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_42
        :pswitch_2c
        :pswitch_31
    .end packed-switch
.end method
