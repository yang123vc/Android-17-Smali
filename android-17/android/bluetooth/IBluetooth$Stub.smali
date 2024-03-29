.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x2a

.field static final TRANSACTION_allowIncomingProfileConnect:I = 0x2c

.field static final TRANSACTION_cancelBondProcess:I = 0x16

.field static final TRANSACTION_cancelDiscovery:I = 0xe

.field static final TRANSACTION_cancelPairingUserInput:I = 0x26

.field static final TRANSACTION_changeApplicationBluetoothState:I = 0x13

.field static final TRANSACTION_connectChannelToSink:I = 0x41

.field static final TRANSACTION_connectChannelToSource:I = 0x40

.field static final TRANSACTION_connectHeadset:I = 0x2d

.field static final TRANSACTION_connectInputDevice:I = 0x30

.field static final TRANSACTION_connectPanDevice:I = 0x3c

.field static final TRANSACTION_createBond:I = 0x14

.field static final TRANSACTION_createBondOutOfBand:I = 0x15

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disconnectChannel:I = 0x42

.field static final TRANSACTION_disconnectHeadset:I = 0x2e

.field static final TRANSACTION_disconnectInputDevice:I = 0x31

.field static final TRANSACTION_disconnectPanDevice:I = 0x3d

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_fetchRemoteUuids:I = 0x20

.field static final TRANSACTION_getAdapterConnectionState:I = 0x11

.field static final TRANSACTION_getAddress:I = 0x5

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x19

.field static final TRANSACTION_getConnectedHealthDevices:I = 0x44

.field static final TRANSACTION_getConnectedInputDevices:I = 0x32

.field static final TRANSACTION_getConnectedPanDevices:I = 0x3a

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xb

.field static final TRANSACTION_getHealthDeviceConnectionState:I = 0x46

.field static final TRANSACTION_getHealthDevicesMatchingConnectionStates:I = 0x45

.field static final TRANSACTION_getInputDeviceConnectionState:I = 0x34

.field static final TRANSACTION_getInputDevicePriority:I = 0x36

.field static final TRANSACTION_getInputDevicesMatchingConnectionStates:I = 0x33

.field static final TRANSACTION_getMainChannelFd:I = 0x43

.field static final TRANSACTION_getName:I = 0x6

.field static final TRANSACTION_getPanDeviceConnectionState:I = 0x39

.field static final TRANSACTION_getPanDevicesMatchingConnectionStates:I = 0x3b

.field static final TRANSACTION_getProfileConnectionState:I = 0x12

.field static final TRANSACTION_getRemoteAlias:I = 0x1c

.field static final TRANSACTION_getRemoteClass:I = 0x1e

.field static final TRANSACTION_getRemoteName:I = 0x1b

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x21

.field static final TRANSACTION_getRemoteUuids:I = 0x1f

.field static final TRANSACTION_getScanMode:I = 0x9

.field static final TRANSACTION_getTrustState:I = 0x28

.field static final TRANSACTION_getUuids:I = 0x8

.field static final TRANSACTION_isBluetoothDock:I = 0x29

.field static final TRANSACTION_isDiscovering:I = 0xf

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isTetheringOn:I = 0x37

.field static final TRANSACTION_listBonds:I = 0x18

.field static final TRANSACTION_notifyIncomingConnection:I = 0x2f

.field static final TRANSACTION_readOutOfBandData:I = 0x10

.field static final TRANSACTION_registerAppConfiguration:I = 0x3e

.field static final TRANSACTION_removeBond:I = 0x17

.field static final TRANSACTION_removeServiceRecord:I = 0x2b

.field static final TRANSACTION_sendConnectionStateChange:I = 0x47

.field static final TRANSACTION_setBluetoothTethering:I = 0x38

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x1a

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_setInputDevicePriority:I = 0x35

.field static final TRANSACTION_setName:I = 0x7

.field static final TRANSACTION_setPairingConfirmation:I = 0x24

.field static final TRANSACTION_setPasskey:I = 0x23

.field static final TRANSACTION_setPin:I = 0x22

.field static final TRANSACTION_setRemoteAlias:I = 0x1d

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x25

.field static final TRANSACTION_setScanMode:I = 0xa

.field static final TRANSACTION_setTrust:I = 0x27

.field static final TRANSACTION_startDiscovery:I = 0xd

.field static final TRANSACTION_unregisterAppConfiguration:I = 0x3f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_7d6

    .line 910
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 47
    :sswitch_a
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_1f

    move v6, v7

    :cond_1f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v4    # "_result":Z
    :sswitch_23
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v4

    .line 62
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v4    # "_result":I
    :sswitch_33
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v4

    .line 70
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_42

    move v6, v7

    :cond_42
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 76
    .end local v4    # "_result":Z
    :sswitch_46
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_60

    move v0, v7

    .line 79
    .local v0, "_arg0":Z
    :goto_52
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v4

    .line 80
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_5c

    move v6, v7

    :cond_5c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_60
    move v0, v6

    .line 78
    goto :goto_52

    .line 86
    :sswitch_62
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 94
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_72
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 102
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v4

    .line 106
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_95

    move v6, v7

    :cond_95
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_9a
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 114
    .local v4, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 120
    .end local v4    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_ab
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v4

    .line 122
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 128
    .end local v4    # "_result":I
    :sswitch_bc
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v4

    .line 134
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_d3

    move v6, v7

    :cond_d3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 140
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_d8
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v4

    .line 142
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 148
    .end local v4    # "_result":I
    :sswitch_e9
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v4

    .line 152
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v4, :cond_fc

    move v6, v7

    :cond_fc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 158
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_101
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v4

    .line 160
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v4, :cond_110

    move v6, v7

    :cond_110
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 166
    .end local v4    # "_result":Z
    :sswitch_115
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v4

    .line 168
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v4, :cond_124

    move v6, v7

    :cond_124
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 174
    .end local v4    # "_result":Z
    :sswitch_129
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v4

    .line 176
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_138

    move v6, v7

    :cond_138
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v4    # "_result":Z
    :sswitch_13d
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v4

    .line 184
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 190
    .end local v4    # "_result":[B
    :sswitch_14e
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v4

    .line 192
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 198
    .end local v4    # "_result":I
    :sswitch_15f
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v4

    .line 202
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 208
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_174
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19b

    move v0, v7

    .line 212
    .local v0, "_arg0":Z
    :goto_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v1

    .line 214
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 215
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z

    move-result v4

    .line 216
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_196

    move v6, v7

    :cond_196
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :cond_19b
    move v0, v6

    .line 210
    goto :goto_180

    .line 222
    :sswitch_19d
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v4

    .line 226
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v4, :cond_1b0

    move v6, v7

    :cond_1b0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1b5
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 238
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 239
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 240
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_1d0

    move v6, v7

    :cond_1d0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 246
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":Z
    :sswitch_1d5
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v4

    .line 250
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_1e8

    move v6, v7

    :cond_1e8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1ed
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v4

    .line 260
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v4, :cond_200

    move v6, v7

    :cond_200
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_205
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 274
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_216
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v4

    .line 278
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 284
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_22b
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 290
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 291
    .restart local v2    # "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 292
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v4, :cond_246

    move v6, v7

    :cond_246
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 298
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":Z
    :sswitch_24b
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 308
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_260
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 318
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_275
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 324
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v4, :cond_28c

    move v6, v7

    :cond_28c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 330
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_291
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    .line 334
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_2a6
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 344
    .local v4, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_2bb
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2e9

    .line 355
    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 361
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    :goto_2d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v2

    .line 362
    .local v2, "_arg2":Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v4

    .line 363
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v4, :cond_2e4

    move v6, v7

    :cond_2e4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 358
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Landroid/bluetooth/IBluetoothCallback;
    .end local v4    # "_result":Z
    :cond_2e9
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_2d2

    .line 369
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_2eb
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30e

    .line 374
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 379
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_302
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v4

    .line 380
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 377
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v4    # "_result":I
    :cond_30e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_302

    .line 386
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_310
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 391
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v4

    .line 392
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v4, :cond_327

    move v6, v7

    :cond_327
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 398
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v4    # "_result":Z
    :sswitch_32c
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v4

    .line 404
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v4, :cond_343

    move v6, v7

    :cond_343
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 410
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_348
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_367

    move v1, v7

    .line 415
    .local v1, "_arg1":Z
    :goto_358
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v4

    .line 416
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v4, :cond_362

    move v6, v7

    :cond_362
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_367
    move v1, v6

    .line 414
    goto :goto_358

    .line 422
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_369
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v4

    .line 426
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v4, :cond_37c

    move v6, v7

    :cond_37c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 432
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_381
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v4

    .line 436
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v4, :cond_394

    move v6, v7

    :cond_394
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 442
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_399
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3b8

    move v1, v7

    .line 447
    .restart local v1    # "_arg1":Z
    :goto_3a9
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v4

    .line 448
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v4, :cond_3b3

    move v6, v7

    :cond_3b3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_3b8
    move v1, v6

    .line 446
    goto :goto_3a9

    .line 454
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3ba
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v4

    .line 458
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v4, :cond_3cd

    move v6, v7

    :cond_3cd
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 464
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3d2
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v4

    .line 468
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v4, :cond_3e5

    move v6, v7

    :cond_3e5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 474
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3ea
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_415

    .line 479
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 485
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    :goto_401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 488
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v4

    .line 489
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 482
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :cond_415
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_401

    .line 495
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_417
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 498
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 504
    .end local v0    # "_arg0":I
    :sswitch_428
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_451

    .line 507
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 513
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_43b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_453

    move v1, v7

    .line 514
    .local v1, "_arg1":Z
    :goto_442
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v4

    .line 515
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    if-eqz v4, :cond_44c

    move v6, v7

    :cond_44c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 510
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_451
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_43b

    :cond_453
    move v1, v6

    .line 513
    goto :goto_442

    .line 521
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_455
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 525
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v4, :cond_468

    move v6, v7

    :cond_468
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 531
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_46d
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 535
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v4, :cond_480

    move v6, v7

    :cond_480
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 541
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_485
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4a4

    move v1, v7

    .line 546
    .restart local v1    # "_arg1":Z
    :goto_495
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;Z)Z

    move-result v4

    .line 547
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v4, :cond_49f

    move v6, v7

    :cond_49f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_4a4
    move v1, v6

    .line 545
    goto :goto_495

    .line 553
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4a6
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4c8

    .line 556
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 561
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4b9
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 562
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v4, :cond_4c3

    move v6, v7

    :cond_4c3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 559
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Z
    :cond_4c8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4b9

    .line 568
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4ca
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4ec

    .line 571
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 576
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4dd
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 577
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v4, :cond_4e7

    move v6, v7

    :cond_4e7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 574
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Z
    :cond_4ec
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4dd

    .line 583
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4ee
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v5

    .line 585
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 591
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4ff
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 594
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v5

    .line 595
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 601
    .end local v0    # "_arg0":[I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_514
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_533

    .line 604
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 609
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_527
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 610
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 607
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":I
    :cond_533
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_527

    .line 616
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_535
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_55b

    .line 619
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 625
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 626
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    .line 627
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    if-eqz v4, :cond_556

    move v6, v7

    :cond_556
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 622
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_55b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_548

    .line 633
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_55d
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57c

    .line 636
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 641
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_570
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 642
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 639
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":I
    :cond_57c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_570

    .line 648
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_57e
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isTetheringOn()Z

    move-result v4

    .line 650
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v4, :cond_58d

    move v6, v7

    :cond_58d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 656
    .end local v4    # "_result":Z
    :sswitch_592
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5a6

    move v0, v7

    .line 659
    .local v0, "_arg0":Z
    :goto_59e
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothTethering(Z)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_5a6
    move v0, v6

    .line 658
    goto :goto_59e

    .line 665
    :sswitch_5a8
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c7

    .line 668
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 673
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_5bb
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 674
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 671
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":I
    :cond_5c7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5bb

    .line 680
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5c9
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v5

    .line 682
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 688
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5da
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 691
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v5

    .line 692
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 698
    .end local v0    # "_arg0":[I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5ef
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_611

    .line 701
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 706
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_602
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 707
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    if-eqz v4, :cond_60c

    move v6, v7

    :cond_60c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 704
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Z
    :cond_611
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_602

    .line 713
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_613
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_635

    .line 716
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 721
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_626
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 722
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    if-eqz v4, :cond_630

    move v6, v7

    :cond_630
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 719
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Z
    :cond_635
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_626

    .line 728
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_637
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_661

    .line 731
    sget-object v8, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 737
    .local v0, "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_64a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v1

    .line 738
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v4

    .line 739
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    if-eqz v4, :cond_65c

    move v6, v7

    :cond_65c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 734
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v4    # "_result":Z
    :cond_661
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_64a

    .line 745
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_663
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_685

    .line 748
    sget-object v8, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 753
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_676
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v4

    .line 754
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-eqz v4, :cond_680

    move v6, v7

    :cond_680
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 751
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4    # "_result":Z
    :cond_685
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_676

    .line 760
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_687
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6b7

    .line 763
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 769
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_69a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6b9

    .line 770
    sget-object v8, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 775
    .local v1, "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_6a8
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v4

    .line 776
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v4, :cond_6b2

    move v6, v7

    :cond_6b2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 766
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4    # "_result":Z
    :cond_6b7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_69a

    .line 773
    :cond_6b9
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_6a8

    .line 782
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_6bb
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6ef

    .line 785
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 791
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_6ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6f1

    .line 792
    sget-object v8, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 798
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_6dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 799
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v4

    .line 800
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    if-eqz v4, :cond_6ea

    move v6, v7

    :cond_6ea
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 788
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :cond_6ef
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6ce

    .line 795
    :cond_6f1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_6dc

    .line 806
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_6f3
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_727

    .line 809
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 815
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_729

    .line 816
    sget-object v8, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 822
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v4

    .line 824
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    if-eqz v4, :cond_722

    move v6, v7

    :cond_722
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 812
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :cond_727
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_706

    .line 819
    :cond_729
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_714

    .line 830
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_72b
    const-string v8, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_75d

    .line 833
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 839
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_73e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_75f

    .line 840
    sget-object v8, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 845
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_74c
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 846
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    if-eqz v4, :cond_761

    .line 848
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    invoke-virtual {v4, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 836
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_75d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_73e

    .line 843
    :cond_75f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_74c

    .line 852
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_761
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 858
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_766
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v5

    .line 860
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 866
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_777
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 869
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v5

    .line 870
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 876
    .end local v0    # "_arg0":[I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_78c
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7ab

    .line 879
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 884
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_79f
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 885
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 882
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":I
    :cond_7ab
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_79f

    .line 891
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_7ad
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d4

    .line 894
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 900
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 902
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 904
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 905
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 897
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :cond_7d4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7c0

    .line 43
    :sswitch_data_7d6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_33
        0x4 -> :sswitch_46
        0x5 -> :sswitch_62
        0x6 -> :sswitch_72
        0x7 -> :sswitch_82
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_ab
        0xa -> :sswitch_bc
        0xb -> :sswitch_d8
        0xc -> :sswitch_e9
        0xd -> :sswitch_101
        0xe -> :sswitch_115
        0xf -> :sswitch_129
        0x10 -> :sswitch_13d
        0x11 -> :sswitch_14e
        0x12 -> :sswitch_15f
        0x13 -> :sswitch_174
        0x14 -> :sswitch_19d
        0x15 -> :sswitch_1b5
        0x16 -> :sswitch_1d5
        0x17 -> :sswitch_1ed
        0x18 -> :sswitch_205
        0x19 -> :sswitch_216
        0x1a -> :sswitch_22b
        0x1b -> :sswitch_24b
        0x1c -> :sswitch_260
        0x1d -> :sswitch_275
        0x1e -> :sswitch_291
        0x1f -> :sswitch_2a6
        0x20 -> :sswitch_2bb
        0x21 -> :sswitch_2eb
        0x22 -> :sswitch_310
        0x23 -> :sswitch_32c
        0x24 -> :sswitch_348
        0x25 -> :sswitch_369
        0x26 -> :sswitch_381
        0x27 -> :sswitch_399
        0x28 -> :sswitch_3ba
        0x29 -> :sswitch_3d2
        0x2a -> :sswitch_3ea
        0x2b -> :sswitch_417
        0x2c -> :sswitch_428
        0x2d -> :sswitch_455
        0x2e -> :sswitch_46d
        0x2f -> :sswitch_485
        0x30 -> :sswitch_4a6
        0x31 -> :sswitch_4ca
        0x32 -> :sswitch_4ee
        0x33 -> :sswitch_4ff
        0x34 -> :sswitch_514
        0x35 -> :sswitch_535
        0x36 -> :sswitch_55d
        0x37 -> :sswitch_57e
        0x38 -> :sswitch_592
        0x39 -> :sswitch_5a8
        0x3a -> :sswitch_5c9
        0x3b -> :sswitch_5da
        0x3c -> :sswitch_5ef
        0x3d -> :sswitch_613
        0x3e -> :sswitch_637
        0x3f -> :sswitch_663
        0x40 -> :sswitch_687
        0x41 -> :sswitch_6bb
        0x42 -> :sswitch_6f3
        0x43 -> :sswitch_72b
        0x44 -> :sswitch_766
        0x45 -> :sswitch_777
        0x46 -> :sswitch_78c
        0x47 -> :sswitch_7ad
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
