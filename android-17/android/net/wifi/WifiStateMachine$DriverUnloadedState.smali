.class Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverUnloadedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2

    .prologue
    .line 2154
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2158
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2159
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2163
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_36

    .line 2172
    const/4 v0, 0x0

    .line 2175
    :goto_6
    return v0

    .line 2165
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20083

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2166
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2174
    :goto_1e
    const v0, 0xc366

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2175
    const/4 v0, 0x1

    goto :goto_6

    .line 2169
    :sswitch_28
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20084

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto :goto_1e

    .line 2163
    nop

    :sswitch_data_36
    .sparse-switch
        0x20001 -> :sswitch_7
        0x23001 -> :sswitch_28
    .end sparse-switch
.end method
