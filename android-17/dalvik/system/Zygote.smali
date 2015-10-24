.class public Ldalvik/system/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static systemInSafeMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Ldalvik/system/Zygote;->systemInSafeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 9
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 208
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_21

    aget-object v0, v1, v2

    .line 209
    .local v0, "arg":Ljava/lang/String;
    const-string v4, " \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'\\\'\'"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 211
    .end local v0    # "arg":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .registers 1
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0}, Ldalvik/system/Zygote;->nativeExecShell(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static fork()I
    .registers 1

    .prologue
    .line 86
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 87
    invoke-static {}, Ldalvik/system/Zygote;->nativeFork()I

    move-result v0

    .line 88
    .local v0, "pid":I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 89
    return v0
.end method

.method public static forkAndSpecialize(II[II[[ILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "niceName"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 120
    invoke-static/range {p0 .. p6}, Ldalvik/system/Zygote;->nativeForkAndSpecialize(II[II[[ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "pid":I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 122
    return v0
.end method

.method public static forkAndSpecialize(II[IZ[[I)I
    .registers 12
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "enableDebugger"    # Z
    .param p4, "rlimits"    # [[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 135
    if-eqz p3, :cond_e

    const/4 v3, 0x1

    .local v3, "debugFlags":I
    :goto_4
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    .line 136
    invoke-static/range {v0 .. v6}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 135
    .end local v3    # "debugFlags":I
    :cond_e
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .registers 10
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .prologue
    .line 165
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 166
    invoke-static/range {p0 .. p8}, Ldalvik/system/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 169
    .local v0, "pid":I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 170
    return v0
.end method

.method public static forkSystemServer(II[IZ[[I)I
    .registers 12
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "enableDebugger"    # Z
    .param p4, "rlimits"    # [[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 180
    if-eqz p3, :cond_e

    const/4 v3, 0x1

    .local v3, "debugFlags":I
    :goto_4
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    .line 181
    invoke-static/range {v0 .. v6}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 180
    .end local v3    # "debugFlags":I
    :cond_e
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private static native nativeExecShell(Ljava/lang/String;)V
.end method

.method public static native nativeFork()I
.end method

.method public static native nativeForkAndSpecialize(II[II[[ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static postFork()V
    .registers 0

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/Daemons;->start()V

    .line 75
    return-void
.end method

.method private static preFork()V
    .registers 0

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/Daemons;->stop()V

    .line 54
    invoke-static {}, Ldalvik/system/Zygote;->waitUntilAllThreadsStopped()V

    .line 55
    return-void
.end method

.method private static waitUntilAllThreadsStopped()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "tasks":Ljava/io/File;
    :goto_7
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_17

    .line 67
    const-wide/16 v1, 0xa

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_7

    .line 68
    :catch_15
    move-exception v1

    goto :goto_7

    .line 71
    :cond_17
    return-void
.end method
