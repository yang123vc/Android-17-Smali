.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field autoStopProfiler:Z

.field handlingProfiling:Z

.field profileFd:Landroid/os/ParcelFileDescriptor;

.field profileFile:Ljava/lang/String;

.field profiling:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProfiler(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 394
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_a

    .line 395
    if-eqz p2, :cond_9

    .line 397
    :try_start_6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_18

    .line 411
    :cond_9
    :goto_9
    return-void

    .line 403
    :cond_a
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_13

    .line 405
    :try_start_e
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1a

    .line 409
    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 410
    iput-object p2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    goto :goto_9

    .line 398
    :catch_18
    move-exception v0

    goto :goto_9

    .line 406
    :catch_1a
    move-exception v0

    goto :goto_13
.end method

.method public startProfiling()V
    .registers 7

    .prologue
    .line 413
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v2, :cond_9

    .line 429
    :cond_8
    :goto_8
    return-void

    .line 417
    :cond_9
    :try_start_9
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/high16 v4, 0x800000

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    .line 419
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 420
    :catch_1b
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profiling failed on path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_36
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 424
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_3f

    goto :goto_8

    .line 425
    :catch_3f
    move-exception v1

    .line 426
    .local v1, "e2":Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public stopProfiling()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_18

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 433
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 434
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_14

    .line 436
    :try_start_f
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_19

    .line 440
    :cond_14
    :goto_14
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 441
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 443
    :cond_18
    return-void

    .line 437
    :catch_19
    move-exception v0

    goto :goto_14
.end method
