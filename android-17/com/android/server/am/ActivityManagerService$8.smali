.class Lcom/android/server/am/ActivityManagerService$8;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$doneReceivers:Ljava/util/ArrayList;

.field final synthetic val$goingCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 6948
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$8;->val$doneReceivers:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$8;->val$goingCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z

    .prologue
    .line 6955
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$8$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerService$8$1;-><init>(Lcom/android/server/am/ActivityManagerService$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6967
    return-void
.end method
