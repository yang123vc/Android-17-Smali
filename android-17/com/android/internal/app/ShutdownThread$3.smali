.class Lcom/android/internal/app/ShutdownThread$3;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownThread;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/app/ShutdownThread;->actionDone()V

    .line 245
    return-void
.end method
