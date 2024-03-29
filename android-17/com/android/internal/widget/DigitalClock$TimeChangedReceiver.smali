.class Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/widget/DigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/DigitalClock;)V
    .registers 3
    .param p1, "clock"    # Lcom/android/internal/widget/DigitalClock;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 84
    .local v1, "timezoneChanged":Z
    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DigitalClock;

    .line 85
    .local v0, "clock":Lcom/android/internal/widget/DigitalClock;
    if-eqz v0, :cond_21

    .line 86
    # getter for: Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$200(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;-><init>(Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;ZLcom/android/internal/widget/DigitalClock;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :goto_20
    return-void

    .line 96
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_20

    .line 97
    :catch_27
    move-exception v2

    goto :goto_20
.end method
