.class final Lcom/android/server/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/PowerManagerService$1;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 405
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 407
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    # invokes: Lcom/android/server/PowerManagerService;->dockStateChanged(I)V
    invoke-static {v1, v0}, Lcom/android/server/PowerManagerService;->access$1100(Lcom/android/server/PowerManagerService;I)V

    .line 408
    return-void
.end method
