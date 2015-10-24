.class public Lcom/android/server/am/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final ACTIVITY_LAUNCH_TIME:I = 0x7539

.field public static final AM_ANR:I = 0x7538

.field public static final AM_BROADCAST_DISCARD_APP:I = 0x7549

.field public static final AM_BROADCAST_DISCARD_FILTER:I = 0x7548

.field public static final AM_CRASH:I = 0x7557

.field public static final AM_CREATE_ACTIVITY:I = 0x7535

.field public static final AM_CREATE_SERVICE:I = 0x754e

.field public static final AM_CREATE_TASK:I = 0x7534

.field public static final AM_DESTROY_ACTIVITY:I = 0x7542

.field public static final AM_DESTROY_SERVICE:I = 0x754f

.field public static final AM_DROP_PROCESS:I = 0x7551

.field public static final AM_FAILED_TO_PAUSE:I = 0x753c

.field public static final AM_FINISH_ACTIVITY:I = 0x7531

.field public static final AM_KILL:I = 0x7547

.field public static final AM_LOW_MEMORY:I = 0x7541

.field public static final AM_NEW_INTENT:I = 0x7533

.field public static final AM_ON_PAUSED_CALLED:I = 0x7545

.field public static final AM_ON_RESUME_CALLED:I = 0x7546

.field public static final AM_PAUSE_ACTIVITY:I = 0x753d

.field public static final AM_PROCESS_CRASHED_TOO_MUCH:I = 0x7550

.field public static final AM_PROCESS_START_TIMEOUT:I = 0x7555

.field public static final AM_PROC_BAD:I = 0x753f

.field public static final AM_PROC_BOUND:I = 0x753a

.field public static final AM_PROC_DIED:I = 0x753b

.field public static final AM_PROC_GOOD:I = 0x7540

.field public static final AM_PROC_START:I = 0x753e

.field public static final AM_PROVIDER_LOST_PROCESS:I = 0x7554

.field public static final AM_RELAUNCH_ACTIVITY:I = 0x7544

.field public static final AM_RELAUNCH_RESUME_ACTIVITY:I = 0x7543

.field public static final AM_RESTART_ACTIVITY:I = 0x7536

.field public static final AM_RESUME_ACTIVITY:I = 0x7537

.field public static final AM_SCHEDULE_SERVICE_RESTART:I = 0x7553

.field public static final AM_SERVICE_CRASHED_TOO_MUCH:I = 0x7552

.field public static final AM_TASK_TO_FRONT:I = 0x7532

.field public static final AM_WTF:I = 0x7558

.field public static final BOOT_PROGRESS_AMS_READY:I = 0xbe0

.field public static final BOOT_PROGRESS_ENABLE_SCREEN:I = 0xbea

.field public static final CONFIGURATION_CHANGED:I = 0xa9f

.field public static final CPU:I = 0xaa1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeActivityLaunchTime(ILjava/lang/String;J)V
    .registers 8
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 179
    const/16 v0, 0x7539

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 180
    return-void
.end method

.method public static writeAmAnr(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p0, "pid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 175
    const/16 v0, 0x7538

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 176
    return-void
.end method

.method public static writeAmBroadcastDiscardApp(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p0, "broadcast"    # I
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiverNumber"    # I
    .param p3, "app"    # Ljava/lang/String;

    .prologue
    .line 243
    const/16 v0, 0x7549

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 244
    return-void
.end method

.method public static writeAmBroadcastDiscardFilter(ILjava/lang/String;II)V
    .registers 8
    .param p0, "broadcast"    # I
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiverNumber"    # I
    .param p3, "broadcastfilter"    # I

    .prologue
    .line 239
    const/16 v0, 0x7548

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 240
    return-void
.end method

.method public static writeAmCrash(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "exception"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "line"    # I

    .prologue
    .line 279
    const/16 v0, 0x7557

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 280
    return-void
.end method

.method public static writeAmCreateActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .prologue
    .line 163
    const/16 v0, 0x7535

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 164
    return-void
.end method

.method public static writeAmCreateService(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p0, "serviceRecord"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intent"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 247
    const/16 v0, 0x754e

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 248
    return-void
.end method

.method public static writeAmCreateTask(I)V
    .registers 2
    .param p0, "taskId"    # I

    .prologue
    .line 159
    const/16 v0, 0x7534

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 160
    return-void
.end method

.method public static writeAmDestroyActivity(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 215
    const/16 v0, 0x7542

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 216
    return-void
.end method

.method public static writeAmDestroyService(ILjava/lang/String;I)V
    .registers 7
    .param p0, "serviceRecord"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 251
    const/16 v0, 0x754f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 252
    return-void
.end method

.method public static writeAmDropProcess(I)V
    .registers 2
    .param p0, "pid"    # I

    .prologue
    .line 259
    const/16 v0, 0x7551

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 260
    return-void
.end method

.method public static writeAmFailedToPause(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "token"    # I
    .param p1, "wantingToPause"    # Ljava/lang/String;
    .param p2, "currentlyPausing"    # Ljava/lang/String;

    .prologue
    .line 191
    const/16 v0, 0x753c

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 192
    return-void
.end method

.method public static writeAmFinishActivity(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 147
    const/16 v0, 0x7531

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 148
    return-void
.end method

.method public static writeAmKill(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "oomadj"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 235
    const/16 v0, 0x7547

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 236
    return-void
.end method

.method public static writeAmLowMemory(I)V
    .registers 2
    .param p0, "numProcesses"    # I

    .prologue
    .line 211
    const/16 v0, 0x7541

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 212
    return-void
.end method

.method public static writeAmNewIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .prologue
    .line 155
    const/16 v0, 0x7533

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 156
    return-void
.end method

.method public static writeAmOnPausedCalled(Ljava/lang/String;)V
    .registers 2
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    .line 227
    const/16 v0, 0x7545

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 228
    return-void
.end method

.method public static writeAmOnResumeCalled(Ljava/lang/String;)V
    .registers 2
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    .line 231
    const/16 v0, 0x7546

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 232
    return-void
.end method

.method public static writeAmPauseActivity(ILjava/lang/String;)V
    .registers 6
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 195
    const/16 v0, 0x753d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 196
    return-void
.end method

.method public static writeAmProcBad(ILjava/lang/String;)V
    .registers 6
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 203
    const/16 v0, 0x753f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 204
    return-void
.end method

.method public static writeAmProcBound(ILjava/lang/String;)V
    .registers 6
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 183
    const/16 v0, 0x753a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 184
    return-void
.end method

.method public static writeAmProcDied(ILjava/lang/String;)V
    .registers 6
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 187
    const/16 v0, 0x753b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 188
    return-void
.end method

.method public static writeAmProcGood(ILjava/lang/String;)V
    .registers 6
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 207
    const/16 v0, 0x7540

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 208
    return-void
.end method

.method public static writeAmProcStart(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "component"    # Ljava/lang/String;

    .prologue
    .line 199
    const/16 v0, 0x753e

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 200
    return-void
.end method

.method public static writeAmProcessCrashedTooMuch(Ljava/lang/String;I)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "pid"    # I

    .prologue
    .line 255
    const/16 v0, 0x7550

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 256
    return-void
.end method

.method public static writeAmProcessStartTimeout(IILjava/lang/String;)V
    .registers 7
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 275
    const/16 v0, 0x7555

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 276
    return-void
.end method

.method public static writeAmProviderLostProcess(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    const/16 v0, 0x7554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 272
    return-void
.end method

.method public static writeAmRelaunchActivity(IILjava/lang/String;)V
    .registers 7
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 223
    const/16 v0, 0x7544

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 224
    return-void
.end method

.method public static writeAmRelaunchResumeActivity(IILjava/lang/String;)V
    .registers 7
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 219
    const/16 v0, 0x7543

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 220
    return-void
.end method

.method public static writeAmRestartActivity(IILjava/lang/String;)V
    .registers 7
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 167
    const/16 v0, 0x7536

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 168
    return-void
.end method

.method public static writeAmResumeActivity(IILjava/lang/String;)V
    .registers 7
    .param p0, "token"    # I
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 171
    const/16 v0, 0x7537

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 172
    return-void
.end method

.method public static writeAmScheduleServiceRestart(Ljava/lang/String;J)V
    .registers 7
    .param p0, "componentName"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 267
    const/16 v0, 0x7553

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 268
    return-void
.end method

.method public static writeAmServiceCrashedTooMuch(ILjava/lang/String;I)V
    .registers 7
    .param p0, "crashCount"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 263
    const/16 v0, 0x7552

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 264
    return-void
.end method

.method public static writeAmTaskToFront(I)V
    .registers 2
    .param p0, "task"    # I

    .prologue
    .line 151
    const/16 v0, 0x7532

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 152
    return-void
.end method

.method public static writeAmWtf(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 283
    const/16 v0, 0x7558

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 284
    return-void
.end method

.method public static writeBootProgressAmsReady(J)V
    .registers 3
    .param p0, "time"    # J

    .prologue
    .line 139
    const/16 v0, 0xbe0

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 140
    return-void
.end method

.method public static writeBootProgressEnableScreen(J)V
    .registers 3
    .param p0, "time"    # J

    .prologue
    .line 143
    const/16 v0, 0xbea

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 144
    return-void
.end method

.method public static writeConfigurationChanged(I)V
    .registers 2
    .param p0, "configMask"    # I

    .prologue
    .line 131
    const/16 v0, 0xa9f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 132
    return-void
.end method

.method public static writeCpu(IIIIII)V
    .registers 10
    .param p0, "total"    # I
    .param p1, "user"    # I
    .param p2, "system"    # I
    .param p3, "iowait"    # I
    .param p4, "irq"    # I
    .param p5, "softirq"    # I

    .prologue
    .line 135
    const/16 v0, 0xaa1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 136
    return-void
.end method
