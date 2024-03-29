.class Lcom/android/server/ThrottleService$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;ILjava/lang/String;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    .line 173
    iput p2, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    .line 174
    iput-object p3, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 192
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    :cond_13
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 186
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 196
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 178
    if-eqz p2, :cond_15

    .line 179
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 180
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    :cond_15
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method
