.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final ANDROID_SHARED_MEDIA:Ljava/lang/String; = "com.android.process.media"

.field public static final BLUETOOTH_GID:I = 0x7d0

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final GOOGLE_SHARED_APP_CONTENT:Ljava/lang/String; = "com.google.process.content"

.field public static final LAST_APPLICATION_UID:I = 0x1869f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFC_UID:I = 0x403

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final SDCARD_RW_GID:I = 0x3f7

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x1

.field public static final THREAD_GROUP_DEFAULT:I = 0x0

.field public static final THREAD_GROUP_FG_BOOST:I = 0x2

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field private static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static sPreviousZygoteOpenFailed:Z

.field static sZygoteInputStream:Ljava/io/DataInputStream;

.field static sZygoteSocket:Landroid/net/LocalSocket;

.field static sZygoteWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    return-void
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .registers 6
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 591
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "PPid:"

    aput-object v2, v0, v4

    .line 592
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 593
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 595
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPss(I)J
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .registers 6
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 577
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "Uid:"

    aput-object v2, v0, v4

    .line 578
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 579
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 581
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final killProcess(I)V
    .registers 2
    .param p0, "pid"    # I

    .prologue
    .line 733
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 734
    return-void
.end method

.method public static final killProcessQuiet(I)V
    .registers 2
    .param p0, "pid"    # I

    .prologue
    .line 757
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 758
    return-void
.end method

.method public static final native myPid()I
.end method

.method public static final native myTid()I
.end method

.method public static final native myUid()I
.end method

.method private static openZygoteSocketIfNeeded()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 314
    sget-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z

    if-eqz v4, :cond_6c

    .line 319
    const/4 v3, 0x0

    .line 329
    .local v3, "retryCount":I
    :goto_5
    const/4 v2, 0x0

    .line 330
    .local v2, "retry":I
    :goto_6
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_5d

    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_5d

    .line 333
    if-lez v2, :cond_1c

    .line 335
    :try_start_10
    const-string v4, "Zygote"

    const-string v5, "Zygote not up yet, sleeping..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1c} :catch_89

    .line 343
    :cond_1c
    :goto_1c
    :try_start_1c
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    sput-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    .line 345
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "zygote"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 348
    new-instance v4, Ljava/io/DataInputStream;

    sget-object v5, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v4, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    .line 351
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v4, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    .line 357
    const-string v4, "Zygote"

    const-string v5, "Process: zygote socket opened"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v4, 0x0

    sput-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_5d} :catch_6f

    .line 375
    :cond_5d
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_88

    .line 376
    const/4 v4, 0x1

    sput-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z

    .line 377
    new-instance v4, Landroid/os/ZygoteStartFailedEx;

    const-string v5, "connect failed"

    invoke-direct {v4, v5}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    .end local v2    # "retry":I
    .end local v3    # "retryCount":I
    :cond_6c
    const/16 v3, 0xa

    .restart local v3    # "retryCount":I
    goto :goto_5

    .line 361
    .restart local v2    # "retry":I
    :catch_6f
    move-exception v0

    .line 362
    .local v0, "ex":Ljava/io/IOException;
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_79

    .line 364
    :try_start_74
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_7f

    .line 371
    :cond_79
    :goto_79
    const/4 v4, 0x0

    sput-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 365
    :catch_7f
    move-exception v1

    .line 366
    .local v1, "ex2":Ljava/io/IOException;
    const-string v4, "Process"

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 379
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ex2":Ljava/io/IOException;
    :cond_88
    return-void

    .line 337
    :catch_89
    move-exception v4

    goto :goto_1c
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setOomAdj(II)Z
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[IIILjava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 12
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "targetSdkVersion"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "zygoteArgs"    # [Ljava/lang/String;

    .prologue
    .line 292
    :try_start_0
    invoke-static/range {p0 .. p8}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIILjava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_3
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 294
    :catch_5
    move-exception v0

    .line 295
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string v1, "Process"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Starting VM process through Zygote failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIILjava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 21
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "targetSdkVersion"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 469
    const-class v10, Landroid/os/Process;

    monitor-enter v10

    .line 470
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "--runtime-init"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setuid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setgid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    and-int/lit8 v9, p5, 0x10

    if-eqz v9, :cond_42

    .line 478
    const-string v9, "--enable-jni-logging"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_42
    and-int/lit8 v9, p5, 0x8

    if-eqz v9, :cond_4b

    .line 481
    const-string v9, "--enable-safemode"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_4b
    and-int/lit8 v9, p5, 0x1

    if-eqz v9, :cond_54

    .line 484
    const-string v9, "--enable-debugger"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_54
    and-int/lit8 v9, p5, 0x2

    if-eqz v9, :cond_5d

    .line 487
    const-string v9, "--enable-checkjni"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_5d
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_66

    .line 490
    const-string v9, "--enable-assert"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--target-sdk-version="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    if-eqz p4, :cond_ab

    move-object/from16 v0, p4

    array-length v9, v0

    if-lez v9, :cond_ab

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "--setgroups="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    move-object/from16 v0, p4

    array-length v8, v0

    .line 503
    .local v8, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_93
    if-ge v4, v8, :cond_a4

    .line 504
    if-eqz v4, :cond_9c

    .line 505
    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    :cond_9c
    aget v9, p4, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 510
    :cond_a4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v4    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sz":I
    :cond_ab
    if-eqz p1, :cond_c3

    .line 514
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--nice-name="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_c3
    if-eqz p7, :cond_dd

    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--seinfo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_dd
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    if-eqz p8, :cond_f0

    .line 524
    move-object/from16 v3, p8

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_e6
    if-ge v5, v6, :cond_f0

    aget-object v1, v3, v5

    .line 525
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v5, v5, 0x1

    goto :goto_e6

    .line 529
    .end local v1    # "arg":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_f0
    invoke-static {v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v9

    monitor-exit v10

    return-object v9

    .line 530
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_f6
    move-exception v9

    monitor-exit v10
    :try_end_f8
    .catchall {:try_start_3 .. :try_end_f8} :catchall_f6

    throw v9
.end method

.method public static final supportsProcesses()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method private static zygoteSendArgsAndGetResult(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Process;->openZygoteSocketIfNeeded()V

    .line 405
    :try_start_3
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 406
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 408
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 409
    .local v5, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v5, :cond_52

    .line 410
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    .local v0, "arg":Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_45

    .line 412
    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    const-string v7, "embedded newlines not allowed"

    invoke-direct {v6, v7}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_32} :catch_32

    .line 429
    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "sz":I
    :catch_32
    move-exception v1

    .line 431
    .local v1, "ex":Ljava/io/IOException;
    :try_start_33
    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-eqz v6, :cond_3c

    .line 432
    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_79

    .line 439
    :cond_3c
    :goto_3c
    const/4 v6, 0x0

    sput-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    .line 441
    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v6, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 415
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "sz":I
    :cond_45
    :try_start_45
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 416
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 419
    .end local v0    # "arg":Ljava/lang/String;
    :cond_52
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 422
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 423
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    sget-object v6, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 424
    iget v6, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v6, :cond_70

    .line 425
    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    const-string v7, "fork() failed"

    invoke-direct {v6, v7}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v6

    .line 427
    :cond_70
    sget-object v6, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_78} :catch_32

    .line 428
    return-object v4

    .line 434
    .end local v3    # "i":I
    .end local v4    # "result":Landroid/os/Process$ProcessStartResult;
    .end local v5    # "sz":I
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_79
    move-exception v2

    .line 436
    .local v2, "ex2":Ljava/io/IOException;
    const-string v6, "Process"

    const-string v7, "I/O exception on routine close"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method
