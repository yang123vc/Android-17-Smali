.class Landroid/server/BluetoothService$3;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2

    .prologue
    .line 1950
    iput-object p1, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 1952
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1953
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1959
    :cond_a
    :goto_a
    return-void

    .line 1954
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    .line 1955
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_a

    .line 1956
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_16
    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    .line 1957
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_a
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .prologue
    const/4 v1, 0x0

    .line 1961
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 1962
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    # setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1968
    :cond_9
    :goto_9
    return-void

    .line 1963
    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 1964
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    # setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_9

    .line 1965
    :cond_13
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    .line 1966
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    # setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_9
.end method
