.class Landroid/content/SyncManager$SyncAlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncAlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .registers 2

    .prologue
    .line 712
    iput-object p1, p0, Landroid/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 714
    iget-object v0, p0, Landroid/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Landroid/content/SyncManager;

    # getter for: Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 715
    iget-object v0, p0, Landroid/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Landroid/content/SyncManager;

    # invokes: Landroid/content/SyncManager;->sendSyncAlarmMessage()V
    invoke-static {v0}, Landroid/content/SyncManager;->access$900(Landroid/content/SyncManager;)V

    .line 716
    return-void
.end method
