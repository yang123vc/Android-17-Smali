.class public final Ldalvik/system/VMRuntime;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# static fields
.field private static final THE_ONE:Ldalvik/system/VMRuntime;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ldalvik/system/VMRuntime;

    invoke-direct {v0}, Ldalvik/system/VMRuntime;-><init>()V

    sput-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getRuntime()Ldalvik/system/VMRuntime;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method private native nativeSetTargetHeapUtilization(F)V
.end method


# virtual methods
.method public native addressOf(Ljava/lang/Object;)J
.end method

.method public native bootClassPath()Ljava/lang/String;
.end method

.method public native classPath()Ljava/lang/String;
.end method

.method public native clearGrowthLimit()V
.end method

.method public native disableJitCompilation()V
.end method

.method public gcSoftReferences()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    return-void
.end method

.method public getExternalBytesAllocated()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinimumHeapSize()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public native getTargetHeapUtilization()F
.end method

.method public native isDebuggerActive()Z
.end method

.method public native newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native properties()[Ljava/lang/String;
.end method

.method public runFinalizationSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 150
    return-void
.end method

.method public setMinimumHeapSize(J)J
    .registers 5
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setTargetHeapUtilization(F)F
    .registers 7
    .param p1, "newTarget"    # F

    .prologue
    .line 94
    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_e

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_27

    .line 95
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range (0,1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_27
    monitor-enter p0

    .line 103
    :try_start_28
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v0

    .line 104
    .local v0, "oldTarget":F
    invoke-direct {p0, p1}, Ldalvik/system/VMRuntime;->nativeSetTargetHeapUtilization(F)V

    .line 105
    monitor-exit p0

    return v0

    .line 106
    .end local v0    # "oldTarget":F
    :catchall_31
    move-exception v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public native setTargetSdkVersion(I)V
.end method

.method public native startJitCompilation()V
.end method

.method public trackExternalAllocation(J)Z
    .registers 4
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public trackExternalFree(J)V
    .registers 3
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method public native vmVersion()Ljava/lang/String;
.end method
