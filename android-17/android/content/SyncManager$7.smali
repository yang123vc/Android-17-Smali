.class Landroid/content/SyncManager$7;
.super Landroid/content/ISyncStatusObserver$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .registers 2

    .prologue
    .line 368
    iput-object p1, p0, Landroid/content/SyncManager$7;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/ISyncStatusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 371
    iget-object v0, p0, Landroid/content/SyncManager$7;->this$0:Landroid/content/SyncManager;

    # invokes: Landroid/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v0}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)V

    .line 372
    return-void
.end method
