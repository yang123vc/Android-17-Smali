.class final Landroid/os/StrictMode$5;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 7

    .prologue
    .line 1420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1421
    .local v0, "now":J
    # getter for: Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J
    invoke-static {}, Landroid/os/StrictMode;->access$1500()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    .line 1422
    # setter for: Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J
    invoke-static {v0, v1}, Landroid/os/StrictMode;->access$1502(J)J

    .line 1423
    invoke-static {}, Landroid/os/StrictMode;->conditionallyCheckInstanceCounts()V

    .line 1425
    :cond_16
    const/4 v2, 0x1

    return v2
.end method
