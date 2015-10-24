.class public Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;,
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
    }
.end annotation


# static fields
.field private static final sequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile continueExistingPeriodicTasksAfterShutdown:Z

.field private volatile executeExistingDelayedTasksAfterShutdown:Z

.field private volatile removeOnCancel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9
    .param p1, "corePoolSize"    # I

    .prologue
    .line 399
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 401
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .registers 11
    .param p1, "corePoolSize"    # I
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 433
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 435
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 11
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 416
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 418
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 13
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 454
    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 456
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .prologue
    .line 91
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return v0
.end method

.method private delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 297
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    .line 307
    :goto_9
    return-void

    .line 299
    :cond_a
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 303
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    goto :goto_9

    .line 305
    :cond_2c
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartCoreThread()Z

    goto :goto_9
.end method

.method private overflowFree(J)J
    .registers 10
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v5, 0x0

    .line 481
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 482
    .local v0, "head":Ljava/util/concurrent/Delayed;
    if-eqz v0, :cond_25

    .line 483
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 484
    .local v1, "headDelay":J
    cmp-long v3, v1, v5

    if-gez v3, :cond_25

    sub-long v3, p1, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_25

    .line 485
    const-wide v3, 0x7fffffffffffffffL

    add-long p1, v3, v1

    .line 487
    .end local v1    # "headDelay":J
    :cond_25
    return-wide p1
.end method

.method private triggerTime(JLjava/util/concurrent/TimeUnit;)J
    .registers 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v0, 0x0

    .line 462
    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    move-wide p1, v0

    .end local p1    # "delay":J
    :cond_7
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method canRunInCurrentRunState(Z)Z
    .registers 3
    .param p1, "periodic"    # Z

    .prologue
    .line 279
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    :goto_4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isRunningOrShutdown(Z)Z

    move-result v0

    return v0

    :cond_9
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    goto :goto_4
.end method

.method protected decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    return-object p2
.end method

.method protected decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    return-object p2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 591
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 592
    return-void
.end method

.method public getContinueExistingPeriodicTasksAfterShutdownPolicy()Z
    .registers 2

    .prologue
    .line 650
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    return v0
.end method

.method public getExecuteExistingDelayedTasksAfterShutdownPolicy()Z
    .registers 2

    .prologue
    .line 682
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method getRemoveOnCancelPolicy()Z
    .registers 2

    .prologue
    .line 709
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return v0
.end method

.method final now()J
    .registers 3

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method onShutdown()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 330
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    .line 331
    .local v6, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getExecuteExistingDelayedTasksAfterShutdownPolicy()Z

    move-result v3

    .line 333
    .local v3, "keepDelayed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    move-result v4

    .line 335
    .local v4, "keepPeriodic":Z
    if-nez v3, :cond_2e

    if-nez v4, :cond_2e

    .line 336
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_17
    if-ge v2, v5, :cond_27

    aget-object v1, v0, v2

    .line 337
    .local v1, "e":Ljava/lang/Object;
    instance-of v8, v1, Ljava/util/concurrent/RunnableScheduledFuture;

    if-eqz v8, :cond_24

    .line 338
    check-cast v1, Ljava/util/concurrent/RunnableScheduledFuture;

    .end local v1    # "e":Ljava/lang/Object;
    invoke-interface {v1, v9}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    .line 336
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 339
    :cond_27
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 355
    :cond_2a
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->tryTerminate()V

    .line 356
    return-void

    .line 343
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    :cond_2e
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_34
    if-ge v2, v5, :cond_2a

    aget-object v1, v0, v2

    .line 344
    .restart local v1    # "e":Ljava/lang/Object;
    instance-of v8, v1, Ljava/util/concurrent/RunnableScheduledFuture;

    if-eqz v8, :cond_50

    move-object v7, v1

    .line 345
    check-cast v7, Ljava/util/concurrent/RunnableScheduledFuture;

    .line 347
    .local v7, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-interface {v7}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_53

    if-nez v4, :cond_55

    .line 349
    :cond_47
    :goto_47
    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 350
    invoke-interface {v7, v9}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    .line 343
    .end local v7    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 347
    .restart local v7    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_53
    if-eqz v3, :cond_47

    :cond_55
    invoke-interface {v7}, Ljava/util/concurrent/RunnableScheduledFuture;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_50

    goto :goto_47
.end method

.method reExecutePeriodic(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    const/4 v1, 0x1

    .line 316
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 317
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 319
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    .line 323
    :cond_1e
    :goto_1e
    return-void

    .line 321
    :cond_1f
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartCoreThread()Z

    goto :goto_1e
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 12
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 497
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 498
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 499
    :cond_a
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v6

    .line 502
    .local v6, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-direct {p0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 503
    return-object v6
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 9
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 514
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 515
    :cond_a
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;J)V

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    .line 518
    .local v0, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 519
    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 16
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 531
    if-eqz p1, :cond_4

    if-nez p6, :cond_a

    .line 532
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 533
    :cond_a
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gtz v1, :cond_16

    .line 534
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 535
    :cond_16
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, p6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    .line 540
    .local v0, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v8

    .line 541
    .local v8, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v8, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 542
    invoke-direct {p0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 543
    return-object v8
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 16
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 555
    if-eqz p1, :cond_4

    if-nez p6, :cond_a

    .line 556
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 557
    :cond_a
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gtz v1, :cond_16

    .line 558
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 559
    :cond_16
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, p6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    neg-long v1, p4

    invoke-virtual {p6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    .line 564
    .local v0, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v8

    .line 565
    .local v8, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v8, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 566
    invoke-direct {p0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 567
    return-object v8
.end method

.method public setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    .line 634
    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 635
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    .line 636
    :cond_d
    return-void
.end method

.method public setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 666
    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 667
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    .line 668
    :cond_d
    return-void
.end method

.method setRemoveOnCancelPolicy(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 696
    return-void
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 731
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 732
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 601
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 609
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method triggerTime(J)J
    .registers 7
    .param p1, "delay"    # J

    .prologue
    .line 469
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v0

    const-wide v2, 0x3fffffffffffffffL

    cmp-long v2, p1, v2

    if-gez v2, :cond_f

    .end local p1    # "delay":J
    :goto_d
    add-long/2addr v0, p1

    return-wide v0

    .restart local p1    # "delay":J
    :cond_f
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->overflowFree(J)J

    move-result-wide p1

    goto :goto_d
.end method
