.class final Landroid/server/BluetoothPanProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothPanProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_MAX_PAN_CONNECTIONS:I = 0x5

.field private static final BLUETOOTH_PREFIX_LENGTH:I = 0x18

.field private static final DBG:Z = true

.field static final NAP_BRIDGE:Ljava/lang/String; = "pan1"

.field static final NAP_ROLE:Ljava/lang/String; = "nap"

.field private static final TAG:Ljava/lang/String; = "BluetoothPanProfileHandler"

.field public static sInstance:Landroid/server/BluetoothPanProfileHandler;


# instance fields
.field private mBluetoothIfaceAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private mMaxPanDevices:I

.field private final mPanDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheringOn:Z

.field private mTetheringReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/server/BluetoothService;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    .line 69
    iput-object p2, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    .line 73
    :try_start_1b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_28} :catch_29

    .line 78
    :goto_28
    return-void

    .line 75
    :catch_29
    move-exception v0

    .line 76
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x5

    iput v1, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I

    goto :goto_28
.end method

.method static synthetic access$002(Landroid/server/BluetoothPanProfileHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothPanProfileHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    return p1
.end method

.method static synthetic access$100(Landroid/server/BluetoothPanProfileHandler;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothPanProfileHandler;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothPanProfileHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothPanProfileHandler;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createNewTetheringAddressLocked()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 326
    invoke-virtual {p0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I

    if-ne v3, v4, :cond_14

    .line 327
    const-string v3, "Max PAN device connections reached"

    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 328
    const/4 v1, 0x0

    .line 341
    :goto_13
    return-object v1

    .line 330
    :cond_14
    const-string v1, "192.168.44.1"

    .line 332
    .local v1, "address":Ljava/lang/String;
    :goto_16
    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 333
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "addr":[Ljava/lang/String;
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 335
    .local v2, "newIp":Ljava/lang/Integer;
    aget-object v3, v0, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 336
    goto :goto_16

    .line 340
    .end local v0    # "addr":[Ljava/lang/String;
    .end local v2    # "newIp":Ljava/lang/Integer;
    :cond_3b
    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private static debugLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v0, "BluetoothPanProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method private disconnectPanServerDevices()Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 164
    const-string v6, "disconnect all PAN devices"

    invoke-static {v6}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 167
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 168
    .local v3, "panDevice":Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$300(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v4

    .line 169
    .local v4, "state":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_10

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v6

    if-ne v6, v5, :cond_10

    .line 171
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "objectPath":Ljava/lang/String;
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v8

    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 176
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/server/BluetoothService;->disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not disconnect Pan Server Device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    .line 182
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v5

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v6

    invoke-virtual {p0, v0, v5, v4, v6}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 185
    const/4 v5, 0x0

    .line 189
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "objectPath":Ljava/lang/String;
    .end local v3    # "panDevice":Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    .end local v4    # "state":I
    :cond_7d
    return v5
.end method

.method private enableTethering(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateTetherState:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v16, "network_management"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 349
    .local v5, "b":Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v15

    .line 350
    .local v15, "service":Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "connectivity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 352
    .local v7, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "bluetoothRegexs":[Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v9, v0, [Ljava/lang/String;

    .line 357
    .local v9, "currentIfaces":[Ljava/lang/String;
    :try_start_3e
    invoke-interface {v15}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_57

    move-result-object v9

    .line 363
    const/4 v11, 0x0

    .line 364
    .local v11, "found":Z
    move-object v4, v9

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_46
    if-ge v12, v14, :cond_53

    aget-object v8, v4, v12

    .line 365
    .local v8, "currIface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_74

    .line 366
    const/4 v11, 0x1

    .line 371
    .end local v8    # "currIface":Ljava/lang/String;
    :cond_53
    if-nez v11, :cond_77

    const/4 v3, 0x0

    .line 399
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "found":Z
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    :cond_56
    :goto_56
    return-object v3

    .line 358
    :catch_57
    move-exception v10

    .line 359
    .local v10, "e":Ljava/lang/Exception;
    const-string v16, "BluetoothPanProfileHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error listing Interfaces :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v3, 0x0

    goto :goto_56

    .line 364
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "currIface":Ljava/lang/String;
    .restart local v11    # "found":Z
    .restart local v12    # "i$":I
    .restart local v14    # "len$":I
    :cond_74
    add-int/lit8 v12, v12, 0x1

    goto :goto_46

    .line 373
    .end local v8    # "currIface":Ljava/lang/String;
    :cond_77
    invoke-direct/range {p0 .. p0}, Landroid/server/BluetoothPanProfileHandler;->createNewTetheringAddressLocked()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "address":Ljava/lang/String;
    if-nez v3, :cond_7f

    const/4 v3, 0x0

    goto :goto_56

    .line 376
    :cond_7f
    const/4 v13, 0x0

    .line 378
    .local v13, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_80
    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v13

    .line 379
    if-eqz v13, :cond_56

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "addr":Ljava/net/InetAddress;
    iget-object v0, v13, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b5

    iget-object v0, v13, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_b5

    const-string v16, "0.0.0.0"

    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b5

    const-string v16, "::0"

    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b9

    .line 384
    :cond_b5
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 386
    :cond_b9
    iget-object v0, v13, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "down"

    const-string/jumbo v18, "up"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 387
    new-instance v16, Landroid/net/LinkAddress;

    const/16 v17, 0x18

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 388
    iget-object v0, v13, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "running"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 389
    iget-object v0, v13, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "  "

    const-string v18, " "

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 390
    move-object/from16 v0, p1

    invoke-interface {v15, v0, v13}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 391
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_56

    .line 392
    const-string v16, "BluetoothPanProfileHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error tethering "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_123} :catch_125

    goto/16 :goto_56

    .line 395
    .end local v2    # "addr":Ljava/net/InetAddress;
    :catch_125
    move-exception v10

    .line 396
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v16, "BluetoothPanProfileHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error configuring interface "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v3, 0x0

    goto/16 :goto_56
.end method

.method private static errorLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v0, "BluetoothPanProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method static getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/server/BluetoothService;

    .prologue
    .line 82
    sget-object v0, Landroid/server/BluetoothPanProfileHandler;->sInstance:Landroid/server/BluetoothPanProfileHandler;

    if-nez v0, :cond_b

    new-instance v0, Landroid/server/BluetoothPanProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothPanProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothPanProfileHandler;->sInstance:Landroid/server/BluetoothPanProfileHandler;

    .line 83
    :cond_b
    sget-object v0, Landroid/server/BluetoothPanProfileHandler;->sInstance:Landroid/server/BluetoothPanProfileHandler;

    return-object v0
.end method


# virtual methods
.method allowIncomingTethering()Z
    .registers 3

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/server/BluetoothPanProfileHandler;->mMaxPanDevices:I

    if-ge v0, v1, :cond_14

    .line 92
    const/4 v0, 0x1

    .line 93
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v4, 0x0

    .line 131
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "objectPath":Ljava/lang/String;
    const-string v6, "BluetoothPanProfileHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect PAN("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-eqz v6, :cond_48

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already connected to PAN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    .line 137
    :cond_48
    const/4 v0, 0x0

    .line 138
    .local v0, "connectedCount":I
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 139
    .local v3, "panDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v3}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-ne v6, v9, :cond_53

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 143
    .end local v3    # "panDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_68
    const/16 v6, 0x8

    if-le v0, v6, :cond_89

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not connect to PAN because 8 other devices are"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "already connected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 159
    :goto_88
    return v4

    .line 150
    :cond_89
    invoke-virtual {p0, p1, v10, v5, v9}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 152
    iget-object v6, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    const-string/jumbo v7, "nap"

    invoke-virtual {v6, v2, v7}, Landroid/server/BluetoothService;->connectPanDeviceNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 153
    const-string v4, "connecting to PAN"

    invoke-static {v4}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    move v4, v5

    .line 154
    goto :goto_88

    .line 156
    :cond_9e
    invoke-virtual {p0, p1, v10, v4, v9}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 158
    const-string v5, "could not connect to PAN"

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_88
.end method

.method disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "objectPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect PAN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 223
    .local v2, "state":I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_46

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already disconnected from PAN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 251
    :goto_45
    return v3

    .line 228
    :cond_46
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 230
    .local v1, "panDevice":Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    if-nez v1, :cond_67

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No record for this Pan device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothPanProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_45

    .line 235
    :cond_67
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v7

    invoke-virtual {p0, p1, v5, v6, v7}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 237
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v5

    if-ne v5, v4, :cond_95

    .line 238
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v6, v7}, Landroid/server/BluetoothService;->disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 241
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v4

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v5

    invoke-virtual {p0, p1, v4, v2, v5}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_45

    .line 245
    :cond_95
    iget-object v5, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->disconnectPanDeviceNative(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 247
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v4

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$400(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v5

    invoke-virtual {p0, p1, v4, v2, v5}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_45

    :cond_a9
    move v3, v4

    .line 251
    goto :goto_45
.end method

.method getConnectedPanDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 196
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 197
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 200
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_26
    return-object v1
.end method

.method getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 123
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 124
    .local v0, "panDevice":Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    if-nez v0, :cond_c

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_b
    return v1

    :cond_c
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$300(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v1

    goto :goto_b
.end method

.method getPanDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 11
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 207
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 208
    .local v6, "panDeviceState":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_22
    if-ge v4, v5, :cond_f

    aget v7, v0, v4

    .line 209
    .local v7, "state":I
    if-ne v7, v6, :cond_2c

    .line 210
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 208
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 215
    .end local v0    # "arr$":[I
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "panDeviceState":I
    .end local v7    # "state":I
    :cond_2f
    return-object v2
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "role"    # I

    .prologue
    const/4 v2, 0x2

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, "ifaceAddr":Ljava/lang/String;
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .line 260
    .local v0, "panDevice":Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    if-nez v0, :cond_10

    .line 261
    const/4 v7, 0x0

    .line 266
    .local v7, "prevState":I
    :goto_d
    if-ne v7, p3, :cond_19

    .line 309
    :goto_f
    return-void

    .line 263
    .end local v7    # "prevState":I
    :cond_10
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$300(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)I

    move-result v7

    .line 264
    .restart local v7    # "prevState":I
    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$600(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 268
    :cond_19
    const/4 v1, 0x1

    if-ne p4, v1, :cond_99

    .line 269
    if-ne p3, v2, :cond_8e

    .line 270
    invoke-direct {p0, p2}, Landroid/server/BluetoothPanProfileHandler;->enableTethering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    if-nez v3, :cond_2b

    const-string v1, "BluetoothPanProfileHandler"

    const-string v2, "Error seting up tether interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2b
    :goto_2b
    if-nez v0, :cond_b7

    .line 290
    new-instance v0, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;

    .end local v0    # "panDevice":Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    move-object v1, p0

    move v2, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;-><init>(Landroid/server/BluetoothPanProfileHandler;ILjava/lang/String;Ljava/lang/String;I)V

    .line 291
    .restart local v0    # "panDevice":Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :goto_3b
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {v6, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pan Device state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, p3, v7}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_f

    .line 272
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_8e
    if-nez p3, :cond_2b

    .line 273
    if-eqz v3, :cond_2b

    .line 274
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    const/4 v3, 0x0

    goto :goto_2b

    .line 280
    :cond_99
    if-ne p3, v2, :cond_a3

    .line 281
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2b

    .line 282
    :cond_a3
    if-nez p3, :cond_2b

    if-eq v7, v2, :cond_aa

    const/4 v1, 0x3

    if-ne v7, v1, :cond_2b

    .line 285
    :cond_aa
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v1

    # getter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$500(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 293
    :cond_b7
    # setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mState:I
    invoke-static {v0, p3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$302(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;I)I

    .line 294
    # setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$602(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    # setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v0, p4}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$402(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;I)I

    .line 296
    # setter for: Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;->access$502(Landroid/server/BluetoothPanProfileHandler$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3b
.end method

.method isTetheringOn()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    return v0
.end method

.method setBluetoothTethering(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 99
    if-nez p1, :cond_5

    .line 100
    invoke-direct {p0}, Landroid/server/BluetoothPanProfileHandler;->disconnectPanServerDevices()Z

    .line 103
    :cond_5
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2a

    if-eqz p1, :cond_2a

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/server/BluetoothPanProfileHandler$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothPanProfileHandler$1;-><init>(Landroid/server/BluetoothPanProfileHandler;)V

    iput-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_29
    return-void

    .line 118
    :cond_2a
    iput-boolean p1, p0, Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z

    goto :goto_29
.end method
