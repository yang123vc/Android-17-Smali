.class Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 2081
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2085
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2087
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20005

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2089
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_74

    .line 2114
    :goto_22
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2115
    return-void

    .line 2092
    :sswitch_2e
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_22

    .line 2096
    :sswitch_3a
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_22

    .line 2100
    :cond_46
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Failed to unload driver!"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2101
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20006

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2103
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_86

    goto :goto_22

    .line 2106
    :sswitch_61
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x4

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_22

    .line 2110
    :sswitch_6a
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, 0xe

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_22

    .line 2089
    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_2e
        0x4 -> :sswitch_2e
        0xb -> :sswitch_3a
        0xe -> :sswitch_3a
    .end sparse-switch

    .line 2103
    :sswitch_data_86
    .sparse-switch
        0x1 -> :sswitch_61
        0x4 -> :sswitch_61
        0xb -> :sswitch_6a
        0xe -> :sswitch_6a
    .end sparse-switch
.end method
