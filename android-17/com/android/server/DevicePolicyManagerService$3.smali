.class Lcom/android/server/DevicePolicyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$result:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V
    .registers 3

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$3;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$3;->val$result:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1734
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService$3;->val$result:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService$3;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1737
    :goto_a
    return-void

    .line 1735
    :catch_b
    move-exception v0

    goto :goto_a
.end method
