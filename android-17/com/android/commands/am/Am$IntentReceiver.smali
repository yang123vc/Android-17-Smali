.class Lcom/android/commands/am/Am$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field private mFinished:Z

.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method private constructor <init>(Lcom/android/commands/am/Am;)V
    .registers 3

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/commands/am/Am$IntentReceiver;->this$0:Lcom/android/commands/am/Am;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/am/Am$IntentReceiver;->mFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/commands/am/Am;
    .param p2, "x1"    # Lcom/android/commands/am/Am$1;

    .prologue
    .line 1099
    invoke-direct {p0, p1}, Lcom/android/commands/am/Am$IntentReceiver;-><init>(Lcom/android/commands/am/Am;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rc"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "ext"    # Landroid/os/Bundle;
    .param p5, "ord"    # Z
    .param p6, "sticky"    # Z

    .prologue
    .line 1105
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast completed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "line":Ljava/lang/String;
    if-eqz p3, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    :cond_33
    if-eqz p4, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    :cond_4c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/commands/am/Am$IntentReceiver;->mFinished:Z

    .line 1110
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 1111
    monitor-exit p0

    return-void

    .line 1105
    .end local v0    # "line":Ljava/lang/String;
    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 3

    .prologue
    .line 1115
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/commands/am/Am$IntentReceiver;->mFinished:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_9
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    goto :goto_1

    .line 1116
    :catch_9
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_10

    .line 1115
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1119
    :cond_13
    monitor-exit p0

    return-void
.end method
