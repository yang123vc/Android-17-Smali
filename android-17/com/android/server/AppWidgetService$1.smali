.class Lcom/android/server/AppWidgetService$1;
.super Ljava/lang/Object;
.source "AppWidgetService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppWidgetService;->destroyRemoteViewsService(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iput-object p2, p0, Lcom/android/server/AppWidgetService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 599
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    .line 602
    .local v0, "cb":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/AppWidgetService$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_16

    .line 608
    :goto_9
    iget-object v2, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v2, v2, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 609
    return-void

    .line 603
    :catch_11
    move-exception v1

    .line 604
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 605
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_9
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 613
    return-void
.end method
