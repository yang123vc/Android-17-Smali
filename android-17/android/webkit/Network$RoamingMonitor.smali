.class Landroid/webkit/Network$RoamingMonitor;
.super Landroid/content/BroadcastReceiver;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamingMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/Network;


# direct methods
.method private constructor <init>(Landroid/webkit/Network;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Landroid/webkit/Network$RoamingMonitor;->this$0:Landroid/webkit/Network;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/Network;Landroid/webkit/Network$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/webkit/Network;
    .param p2, "x1"    # Landroid/webkit/Network$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/webkit/Network$RoamingMonitor;-><init>(Landroid/webkit/Network;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 175
    :cond_c
    :goto_c
    return-void

    .line 172
    :cond_d
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 173
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_c

    .line 174
    iget-object v1, p0, Landroid/webkit/Network$RoamingMonitor;->this$0:Landroid/webkit/Network;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    # setter for: Landroid/webkit/Network;->mRoaming:Z
    invoke-static {v1, v2}, Landroid/webkit/Network;->access$002(Landroid/webkit/Network;Z)Z

    goto :goto_c
.end method
