.class Lcom/android/server/PowerManagerService$3;
.super Landroid/database/ContentObserver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService;->initInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/PowerManagerService$3;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/server/PowerManagerService$3;->this$0:Lcom/android/server/PowerManagerService;

    # invokes: Lcom/android/server/PowerManagerService;->updateSettingsValues()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)V

    .line 655
    return-void
.end method
