.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V
    .registers 3

    .prologue
    .line 155
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 158
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$000(Landroid/widget/RemoteViewsAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 160
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$100(Landroid/widget/RemoteViewsAdapter;)V

    .line 204
    :goto_d
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$700(Landroid/widget/RemoteViewsAdapter;)V

    .line 205
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x1

    # setter for: Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    invoke-static {v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$802(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 206
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x0

    # setter for: Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    invoke-static {v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$902(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 207
    :goto_1e
    return-void

    .line 162
    :cond_1f
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$200(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 165
    .local v1, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_29
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result v2

    if-nez v2, :cond_32

    .line 168
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_32} :catch_64

    .line 184
    :cond_32
    :goto_32
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$300(Landroid/widget/RemoteViewsAdapter;)V

    .line 187
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$600(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    .line 170
    :catch_46
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_64
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method
