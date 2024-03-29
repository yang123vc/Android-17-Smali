.class public abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    }
.end annotation


# static fields
.field private static final headOffset:J

.field private static final nextOffset:J

.field private static final serialVersionUID:J = 0x6655a843753f52e4L

.field static final spinForTimeoutThreshold:J = 0x3e8L

.field private static final stateOffset:J

.field private static final tailOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final waitStatusOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private volatile state:J

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 2024
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    .line 2033
    :try_start_6
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

    .line 2035
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    .line 2037
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "tail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

    .line 2039
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const-string v3, "waitStatus"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    .line 2041
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const-string v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_56} :catch_57

    .line 2045
    return-void

    .line 2044
    :catch_57
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 30
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .registers 5
    .param p1, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 354
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 356
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 357
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_18

    .line 358
    iput-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 359
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 360
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 365
    :goto_17
    return-object v0

    .line 364
    :cond_18
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_17
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 9
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 490
    if-nez p1, :cond_5

    .line 530
    :goto_4
    return-void

    .line 493
    :cond_5
    iput-object v6, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 496
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 497
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_9
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-lez v4, :cond_12

    .line 498
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_9

    .line 503
    :cond_12
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 508
    .local v2, "predNext":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v4, 0x1

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 511
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne p1, v4, :cond_25

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 512
    invoke-static {v1, v2, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    goto :goto_4

    .line 517
    :cond_25
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v1, v4, :cond_47

    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .local v3, "ws":I
    if-eq v3, v5, :cond_35

    if-gtz v3, :cond_47

    invoke-static {v1, v3, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_35
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_47

    .line 521
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 522
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_44

    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v4, :cond_44

    .line 523
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 528
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "ws":I
    :cond_44
    :goto_44
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_4

    .line 525
    :cond_47
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_44
.end method

.method private final compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 8
    .param p1, "update"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 2051
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 9
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 2077
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 9
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 2058
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z
    .registers 9
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 2067
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private doAcquireInterruptibly(J)V
    .registers 7
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 631
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 632
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 635
    .local v0, "failed":Z
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 636
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_22

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 637
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 638
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_34

    .line 639
    const/4 v0, 0x0

    .line 647
    if-eqz v0, :cond_21

    .line 648
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_21
    return-void

    .line 642
    :cond_22
    :try_start_22
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 644
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_34

    .line 647
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_34
    move-exception v3

    if-eqz v0, :cond_3a

    .line 648
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3a
    throw v3
.end method

.method private doAcquireNanos(JJ)Z
    .registers 14
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 662
    .local v1, "lastTime":J
    sget-object v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 663
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 666
    .local v0, "failed":Z
    :cond_b
    :try_start_b
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v6

    .line 667
    .local v6, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_27

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 668
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 669
    const/4 v7, 0x0

    iput-object v7, v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_57

    .line 670
    const/4 v0, 0x0

    .line 671
    const/4 v7, 0x1

    .line 685
    if-eqz v0, :cond_26

    .line 686
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_26
    :goto_26
    return v7

    .line 673
    :cond_27
    const-wide/16 v7, 0x0

    cmp-long v7, p3, v7

    if-gtz v7, :cond_34

    .line 674
    const/4 v7, 0x0

    .line 685
    if-eqz v0, :cond_26

    .line 686
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_26

    .line 675
    :cond_34
    :try_start_34
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v7

    if-eqz v7, :cond_43

    const-wide/16 v7, 0x3e8

    cmp-long v7, p3, v7

    if-lez v7, :cond_43

    .line 677
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 678
    :cond_43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 679
    .local v4, "now":J
    sub-long v7, v4, v1

    sub-long/2addr p3, v7

    .line 680
    move-wide v1, v4

    .line 681
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 682
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_57

    .line 685
    .end local v4    # "now":J
    .end local v6    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_57
    move-exception v7

    if-eqz v0, :cond_5d

    .line 686
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_5d
    throw v7
.end method

.method private doAcquireShared(J)V
    .registers 11
    .param p1, "arg"    # J

    .prologue
    .line 695
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 696
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 698
    .local v0, "failed":Z
    const/4 v1, 0x0

    .line 700
    .local v1, "interrupted":Z
    :cond_8
    :goto_8
    :try_start_8
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 701
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v3, v6, :cond_2c

    .line 702
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v4

    .line 703
    .local v4, "r":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2c

    .line 704
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    .line 705
    const/4 v6, 0x0

    iput-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 706
    if-eqz v1, :cond_25

    .line 707
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3a

    .line 708
    :cond_25
    const/4 v0, 0x0

    .line 717
    if-eqz v0, :cond_2b

    .line 718
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_2b
    return-void

    .line 712
    .end local v4    # "r":J
    :cond_2c
    :try_start_2c
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_3a

    move-result v6

    if-eqz v6, :cond_8

    .line 714
    const/4 v1, 0x1

    goto :goto_8

    .line 717
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_3a
    move-exception v6

    if-eqz v0, :cond_40

    .line 718
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_40
    throw v6
.end method

.method private doAcquireSharedInterruptibly(J)V
    .registers 10
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 728
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 729
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 732
    .local v0, "failed":Z
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 733
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v5, :cond_26

    .line 734
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v3

    .line 735
    .local v3, "r":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_26

    .line 736
    invoke-direct {p0, v1, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    .line 737
    const/4 v5, 0x0

    iput-object v5, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_38

    .line 738
    const/4 v0, 0x0

    .line 747
    if-eqz v0, :cond_25

    .line 748
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_25
    return-void

    .line 742
    .end local v3    # "r":J
    :cond_26
    :try_start_26
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 744
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_38

    .line 747
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_38
    move-exception v5

    if-eqz v0, :cond_3e

    .line 748
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3e
    throw v5
.end method

.method private doAcquireSharedNanos(JJ)Z
    .registers 16
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 763
    .local v1, "lastTime":J
    sget-object v9, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 764
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 767
    .local v0, "failed":Z
    :cond_b
    :try_start_b
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v6

    .line 768
    .local v6, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v9, :cond_2b

    .line 769
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v7

    .line 770
    .local v7, "r":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_2b

    .line 771
    invoke-direct {p0, v3, v7, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    .line 772
    const/4 v9, 0x0

    iput-object v9, v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_5b

    .line 773
    const/4 v0, 0x0

    .line 774
    const/4 v9, 0x1

    .line 789
    if-eqz v0, :cond_2a

    .line 790
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .end local v7    # "r":J
    :cond_2a
    :goto_2a
    return v9

    .line 777
    :cond_2b
    const-wide/16 v9, 0x0

    cmp-long v9, p3, v9

    if-gtz v9, :cond_38

    .line 778
    const/4 v9, 0x0

    .line 789
    if-eqz v0, :cond_2a

    .line 790
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_2a

    .line 779
    :cond_38
    :try_start_38
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v9

    if-eqz v9, :cond_47

    const-wide/16 v9, 0x3e8

    cmp-long v9, p3, v9

    if-lez v9, :cond_47

    .line 781
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 782
    :cond_47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 783
    .local v4, "now":J
    sub-long v9, v4, v1

    sub-long/2addr p3, v9

    .line 784
    move-wide v1, v4

    .line 785
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 786
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_5b

    .line 789
    .end local v4    # "now":J
    .end local v6    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_5b
    move-exception v9

    if-eqz v0, :cond_61

    .line 790
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_61
    throw v9
.end method

.method private doReleaseShared()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 431
    :cond_2
    :goto_2
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 432
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_17

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, v2, :cond_17

    .line 433
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 434
    .local v1, "ws":I
    if-ne v1, v3, :cond_1c

    .line 435
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 443
    .end local v1    # "ws":I
    :cond_17
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v2, :cond_2

    .line 446
    return-void

    .line 439
    .restart local v1    # "ws":I
    :cond_1c
    if-nez v1, :cond_17

    const/4 v2, -0x3

    invoke-static {v0, v4, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_2
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 333
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 334
    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v0, :cond_14

    .line 335
    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 338
    :cond_14
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 339
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 341
    return-object v0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 1400
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1402
    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_2
    if-ne v0, p1, :cond_6

    .line 1403
    const/4 v1, 0x1

    .line 1405
    :goto_5
    return v1

    .line 1404
    :cond_6
    if-nez v0, :cond_a

    .line 1405
    const/4 v1, 0x0

    goto :goto_5

    .line 1406
    :cond_a
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_2
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .registers 9

    .prologue
    .line 1155
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_12

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v2, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v2, :cond_12

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_12

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .local v3, "st":Ljava/lang/Thread;
    if-nez v3, :cond_24

    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_26

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .restart local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v2, :cond_26

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_26

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .restart local v3    # "st":Ljava/lang/Thread;
    if-eqz v3, :cond_26

    :cond_24
    move-object v0, v3

    .line 1177
    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_25
    return-object v0

    .line 1169
    :cond_26
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1170
    .local v4, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x0

    .line 1171
    .local v0, "firstThread":Ljava/lang/Thread;
    :goto_29
    if-eqz v4, :cond_25

    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v4, v6, :cond_25

    .line 1172
    iget-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1173
    .local v5, "tt":Ljava/lang/Thread;
    if-eqz v5, :cond_34

    .line 1174
    move-object v0, v5

    .line 1175
    :cond_34
    iget-object v4, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1176
    goto :goto_29
.end method

.method private final parkAndCheckInterrupt()Z
    .registers 2

    .prologue
    .line 582
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 583
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    return v0
.end method

.method private static selfInterrupt()V
    .registers 1

    .prologue
    .line 573
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 574
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 3
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v0, 0x0

    .line 376
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 377
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 378
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 379
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V
    .registers 8
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "propagate"    # J

    .prologue
    .line 457
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 458
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 474
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_11

    if-eqz v0, :cond_11

    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gez v2, :cond_1e

    .line 475
    :cond_11
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 476
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 477
    :cond_1b
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    .line 479
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_1e
    return-void
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 4
    .param p0, "pred"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v1, -0x1

    .line 542
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 543
    .local v0, "ws":I
    if-ne v0, v1, :cond_7

    .line 548
    const/4 v1, 0x1

    .line 566
    :goto_6
    return v1

    .line 549
    :cond_7
    if-lez v0, :cond_15

    .line 555
    :cond_9
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 556
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v1, :cond_9

    .line 557
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 566
    :goto_13
    const/4 v1, 0x0

    goto :goto_6

    .line 564
    :cond_15
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    goto :goto_13
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 392
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 393
    .local v2, "ws":I
    if-gez v2, :cond_8

    .line 394
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    .line 402
    :cond_8
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 403
    .local v0, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_10

    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-lez v3, :cond_1f

    .line 404
    :cond_10
    const/4 v0, 0x0

    .line 405
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_13
    if-eqz v1, :cond_1f

    if-eq v1, p1, :cond_1f

    .line 406
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v3, :cond_1c

    .line 407
    move-object v0, v1

    .line 405
    :cond_1c
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_13

    .line 409
    .end local v1    # "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_1f
    if-eqz v0, :cond_26

    .line 410
    iget-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 411
    :cond_26
    return-void
.end method


# virtual methods
.method public final acquire(J)V
    .registers 4
    .param p1, "arg"    # J

    .prologue
    .line 945
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 947
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 948
    :cond_15
    return-void
.end method

.method public final acquireInterruptibly(J)V
    .registers 4
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 967
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 968
    :cond_c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_15

    .line 969
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireInterruptibly(J)V

    .line 970
    :cond_15
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z
    .registers 8
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "arg"    # J

    .prologue
    .line 604
    const/4 v0, 0x1

    .line 606
    .local v0, "failed":Z
    const/4 v1, 0x0

    .line 608
    .local v1, "interrupted":Z
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 609
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_1d

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 610
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 611
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_2b

    .line 612
    const/4 v0, 0x0

    .line 620
    if-eqz v0, :cond_1c

    .line 621
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1c
    return v1

    .line 615
    :cond_1d
    :try_start_1d
    invoke-static {v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2b

    move-result v3

    if-eqz v3, :cond_2

    .line 617
    const/4 v1, 0x1

    goto :goto_2

    .line 620
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_2b
    move-exception v3

    if-eqz v0, :cond_31

    .line 621
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_31
    throw v3
.end method

.method public final acquireShared(J)V
    .registers 7
    .param p1, "arg"    # J

    .prologue
    .line 1029
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 1030
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireShared(J)V

    .line 1031
    :cond_d
    return-void
.end method

.method public final acquireSharedInterruptibly(J)V
    .registers 7
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1049
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1050
    :cond_c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 1051
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedInterruptibly(J)V

    .line 1052
    :cond_19
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .registers 4

    .prologue
    .line 1210
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_14

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method protected final compareAndSetState(JJ)Z
    .registers 13
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .prologue
    .line 314
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J
    .registers 7
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v4, 0x1

    .line 1467
    const/4 v0, 0x1

    .line 1469
    .local v0, "failed":Z
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    .line 1470
    .local v1, "savedState":J
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_18

    move-result v3

    if-eqz v3, :cond_12

    .line 1471
    const/4 v0, 0x0

    .line 1477
    if-eqz v0, :cond_11

    .line 1478
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    :cond_11
    return-wide v1

    .line 1474
    :cond_12
    :try_start_12
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_18

    .line 1477
    .end local v1    # "savedState":J
    :catchall_18
    move-exception v3

    if-eqz v0, :cond_1d

    .line 1478
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    :cond_1d
    throw v3
.end method

.method public final getExclusiveQueuedThreads()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_19

    .line 1324
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1325
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1326
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_16

    .line 1327
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_16
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_7

    .line 1330
    :cond_19
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .registers 3

    .prologue
    .line 1138
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_7
.end method

.method public final getQueueLength()I
    .registers 4

    .prologue
    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_3
    if-eqz v1, :cond_e

    .line 1286
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_b

    .line 1287
    add-int/lit8 v0, v0, 0x1

    .line 1285
    :cond_b
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_3

    .line 1289
    :cond_e
    return v0
.end method

.method public final getQueuedThreads()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_13

    .line 1306
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1307
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_10

    .line 1308
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_10
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_7

    .line 1310
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_13
    return-object v0
.end method

.method public final getSharedQueuedThreads()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_19

    .line 1344
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1345
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1346
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_16

    .line 1347
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_16
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_7

    .line 1350
    :cond_19
    return-object v0
.end method

.method protected final getState()J
    .registers 3

    .prologue
    .line 289
    iget-wide v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    return-wide v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .prologue
    .line 1537
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1539
    :cond_e
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Ljava/util/Collection;
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_e
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasContended()Z
    .registers 2

    .prologue
    .line 1122
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final hasQueuedPredecessors()Z
    .registers 6

    .prologue
    .line 1263
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1264
    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1266
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eq v0, v2, :cond_14

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_12

    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_14

    :cond_12
    const/4 v3, 0x1

    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public final hasQueuedThreads()Z
    .registers 3

    .prologue
    .line 1109
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1517
    :cond_e
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0
.end method

.method protected isHeldExclusively()Z
    .registers 2

    .prologue
    .line 929
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 1379
    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_9

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_b

    .line 1380
    :cond_9
    const/4 v0, 0x0

    .line 1391
    :goto_a
    return v0

    .line 1381
    :cond_b
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_11

    .line 1382
    const/4 v0, 0x1

    goto :goto_a

    .line 1391
    :cond_11
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    goto :goto_a
.end method

.method public final isQueued(Ljava/lang/Thread;)Z
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1191
    if-nez p1, :cond_8

    .line 1192
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1193
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_a
    if-eqz v0, :cond_15

    .line 1194
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_12

    .line 1195
    const/4 v1, 0x1

    .line 1196
    :goto_11
    return v1

    .line 1193
    :cond_12
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_a

    .line 1196
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .registers 3
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .prologue
    .line 1493
    if-nez p1, :cond_8

    .line 1494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1495
    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final release(J)Z
    .registers 5
    .param p1, "arg"    # J

    .prologue
    .line 1008
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryRelease(J)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1009
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1010
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_11

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-eqz v1, :cond_11

    .line 1011
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1012
    :cond_11
    const/4 v1, 0x1

    .line 1014
    .end local v0    # "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public final releaseShared(J)Z
    .registers 4
    .param p1, "arg"    # J

    .prologue
    .line 1088
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryReleaseShared(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1089
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    .line 1090
    const/4 v0, 0x1

    .line 1092
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected final setState(J)V
    .registers 3
    .param p1, "newState"    # J

    .prologue
    .line 298
    iput-wide p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    .line 299
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1363
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    .line 1364
    .local v1, "s":J
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v0, "non"

    .line 1365
    .local v0, "q":Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "empty queue]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1364
    .end local v0    # "q":Ljava/lang/String;
    :cond_38
    const-string v0, ""

    goto :goto_c
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v0, 0x0

    .line 1445
    const/4 v1, -0x2

    invoke-static {p1, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1446
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1447
    const/4 v0, 0x1

    .line 1457
    :cond_c
    return v0

    .line 1455
    :cond_d
    :goto_d
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1456
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_d
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v2, 0x0

    .line 1421
    const/4 v3, -0x2

    invoke-static {p1, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1434
    :goto_8
    return v2

    .line 1430
    :cond_9
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    .line 1431
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 1432
    .local v1, "ws":I
    if-gtz v1, :cond_18

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1433
    :cond_18
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1434
    :cond_1d
    const/4 v2, 0x1

    goto :goto_8
.end method

.method protected tryAcquire(J)Z
    .registers 4
    .param p1, "arg"    # J

    .prologue
    .line 823
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireNanos(JJ)Z
    .registers 6
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 991
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 992
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 993
    :cond_c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireNanos(JJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected tryAcquireShared(J)J
    .registers 4
    .param p1, "arg"    # J

    .prologue
    .line 885
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireSharedNanos(JJ)Z
    .registers 9
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1072
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1073
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1074
    :cond_c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedNanos(JJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected tryRelease(J)Z
    .registers 4
    .param p1, "arg"    # J

    .prologue
    .line 849
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected tryReleaseShared(J)Z
    .registers 4
    .param p1, "arg"    # J

    .prologue
    .line 910
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
