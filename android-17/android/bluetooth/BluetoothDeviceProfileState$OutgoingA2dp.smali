.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingA2dp"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 3

    .prologue
    .line 657
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/bluetooth/BluetoothDeviceProfileState;
    .param p2, "x1"    # Landroid/bluetooth/BluetoothDeviceProfileState$1;

    .prologue
    .line 657
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 663
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering OutgoingA2dp state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    .line 665
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_4f

    .line 667
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: OutgoingA2DP state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_4f
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    .line 670
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-nez v0, :cond_70

    .line 671
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 672
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 675
    :cond_70
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 679
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutgoingA2dp State->Processing Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2100(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 680
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 681
    .local v0, "deferMsg":Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_b4

    .line 761
    const/4 v1, 0x0

    .line 763
    :cond_26
    :goto_26
    :sswitch_26
    return v1

    .line 683
    :sswitch_27
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    .line 691
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_26

    .line 692
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 693
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 697
    :sswitch_3a
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    .line 702
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_26

    .line 703
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 704
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 710
    :sswitch_4e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v3

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_26

    .line 716
    :sswitch_5a
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 723
    :sswitch_60
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_26

    .line 724
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 725
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 729
    :sswitch_6e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 736
    :sswitch_74
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 739
    :sswitch_7a
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v3

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    .line 740
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_26

    .line 741
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 742
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 746
    :sswitch_93
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_26

    .line 747
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 748
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 755
    :sswitch_a1
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 758
    :sswitch_a7
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    # getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v3

    # invokes: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_26

    .line 681
    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_26
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_74
        0x6 -> :sswitch_7a
        0x32 -> :sswitch_5a
        0x33 -> :sswitch_60
        0x34 -> :sswitch_6e
        0x35 -> :sswitch_26
        0x36 -> :sswitch_74
        0x37 -> :sswitch_93
        0x38 -> :sswitch_a1
        0x64 -> :sswitch_a1
        0x65 -> :sswitch_a1
        0x66 -> :sswitch_a7
        0x67 -> :sswitch_a1
    .end sparse-switch
.end method
