.class public Landroid/server/BluetoothA2dpService;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "BluetoothA2dpService.java"


# static fields
.field public static final BLUETOOTH_A2DP_SERVICE:Ljava/lang/String; = "bluetooth_a2dp"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final PROPERTY_STATE:Ljava/lang/String; = "State"

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetA2dpState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetoothService"    # Landroid/server/BluetoothService;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 69
    new-instance v0, Landroid/server/BluetoothA2dpService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothA2dpService$1;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    .line 134
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 136
    iput-object p2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 137
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_24

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_24
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initNative()Z

    move-result v0

    if-nez v0, :cond_32

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init BluetoothA2dpService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 155
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 156
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    .line 157
    :cond_71
    const/4 v0, -0x1

    iput v0, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 158
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p0}, Landroid/server/BluetoothService;->setA2dpService(Landroid/server/BluetoothA2dpService;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothA2dpService;)V
    .registers 1
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothA2dpService;)V
    .registers 1
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/server/BluetoothA2dpService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addAudioSink(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 192
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 194
    :cond_13
    monitor-exit p0

    return-void

    .line 191
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "connectedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 543
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 544
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_a

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 546
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_a

    .line 549
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2a
    return-void
.end method

.method private synchronized native declared-synchronized avrcpVolumeDownNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized avrcpVolumeUpNative(Ljava/lang/String;)Z
.end method

.method private checkSinkSuspendState(I)Z
    .registers 6
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x2

    .line 552
    const/4 v0, 0x1

    .line 554
    .local v0, "result":Z
    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-eq p1, v1, :cond_15

    .line 555
    if-ne p1, v3, :cond_16

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v2, :cond_16

    .line 557
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 565
    :cond_15
    :goto_15
    return v0

    .line 558
    :cond_16
    if-ne p1, v2, :cond_24

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v3, :cond_24

    .line 560
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_15

    .line 562
    :cond_24
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private native cleanupNative()V
.end method

.method private synchronized native declared-synchronized connectSinkNative(Ljava/lang/String;)Z
.end method

.method private convertBluezSinkStringToState(Ljava/lang/String;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    const/4 v0, 0x0

    .line 179
    :goto_9
    return v0

    .line 173
    :cond_a
    const-string v0, "connecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 174
    const/4 v0, 0x1

    goto :goto_9

    .line 175
    :cond_14
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 176
    const/4 v0, 0x2

    goto :goto_9

    .line 177
    :cond_1e
    const-string/jumbo v0, "playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 178
    const/16 v0, 0xa

    goto :goto_9

    .line 179
    :cond_2a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private synchronized native declared-synchronized disconnectSinkNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized getSinkPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 534
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 537
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method private handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "prevState"    # I
    .param p3, "state"    # I

    .prologue
    const/4 v3, 0x2

    .line 501
    if-eq p3, p2, :cond_73

    .line 502
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z

    .line 505
    const/4 v1, -0x1

    iput v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 507
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_22

    if-ne p3, v3, :cond_22

    .line 511
    const/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 514
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V

    .line 517
    :cond_22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 519
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 522
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1, v3, p3, p2}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 529
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_73
    return-void
.end method

.method private native initNative()Z
.end method

.method private declared-synchronized isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 243
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_29

    move-result v2

    if-nez v2, :cond_18

    .line 254
    :cond_16
    :goto_16
    monitor-exit p0

    return v1

    .line 248
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 250
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_29

    move-result-object v0

    .line 251
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 254
    const/4 v1, 0x1

    goto :goto_16

    .line 243
    .end local v0    # "path":Ljava/lang/String;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 318
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_19

    move-result-object v0

    .line 319
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 329
    :goto_e
    :pswitch_e
    monitor-exit p0

    return v2

    .line 323
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    move-result v1

    .line 324
    .local v1, "state":I
    packed-switch v1, :pswitch_data_1c

    .line 329
    :pswitch_17
    const/4 v2, 0x1

    goto :goto_e

    .line 318
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "state":I
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2

    .line 324
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_17
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 119
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_2a

    .line 120
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 121
    .local v2, "state":I
    if-eqz v2, :cond_2a

    .line 122
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 123
    .local v0, "dockDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2a

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 124
    const/4 v3, 0x1

    .line 128
    .end local v0    # "dockDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
    :cond_2a
    return v3
.end method

.method private isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 183
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 184
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_16

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 185
    const/4 v1, 0x1

    .line 187
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 600
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .registers 9

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 218
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v2, v6, [Landroid/bluetooth/BluetoothDevice;

    .line 219
    .local v2, "devices":[Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "devices":[Landroid/bluetooth/BluetoothDevice;
    check-cast v2, [Landroid/bluetooth/BluetoothDevice;

    .line 220
    .restart local v2    # "devices":[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v2

    .local v0, "arr$":[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_20
    if-ge v3, v4, :cond_49

    aget-object v1, v0, v3

    .line 221
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 222
    .local v5, "state":I
    sparse-switch v5, :sswitch_data_58

    .line 220
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 226
    :sswitch_2e
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    .line 228
    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_40

    goto :goto_2b

    .line 217
    .end local v0    # "arr$":[Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "devices":[Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "state":I
    :catchall_40
    move-exception v6

    monitor-exit p0

    throw v6

    .line 231
    .restart local v0    # "arr$":[Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "devices":[Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "state":I
    :sswitch_43
    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_45
    invoke-direct {p0, v1, v6, v7}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_2b

    .line 236
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "state":I
    :cond_49
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 239
    .end local v0    # "arr$":[Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "devices":[Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4e
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "bluetooth_enabled=false"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    .line 240
    monitor-exit p0

    return-void

    .line 222
    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_43
        0xa -> :sswitch_2e
    .end sparse-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .registers 13

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Devices"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "devices":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 199
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "paths":[Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_15
    if-ge v4, v5, :cond_46

    aget-object v6, v1, v4

    .line 201
    .local v6, "path":Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "address":Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 203
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 204
    .local v8, "remoteUuids":[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_43

    .line 205
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 208
    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 200
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 212
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "paths":[Ljava/lang/String;
    .end local v8    # "remoteUuids":[Landroid/os/ParcelUuid;
    :cond_46
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "bluetooth_enabled=true"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 213
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "A2dpSuspended=false"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 214
    monitor-exit p0

    return-void

    .line 197
    .end local v3    # "devices":Ljava/lang/String;
    :catchall_56
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private onConnectSinkResult(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "deviceObjectPath"    # Ljava/lang/String;
    .param p2, "result"    # Z

    .prologue
    .line 578
    if-nez p2, :cond_c

    .line 579
    if-eqz p1, :cond_c

    .line 580
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 587
    .end local v0    # "address":Ljava/lang/String;
    :cond_c
    :goto_c
    return-void

    .line 582
    .restart local v0    # "address":Ljava/lang/String;
    :cond_d
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 583
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 584
    .local v2, "state":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_c
.end method

.method private declared-synchronized onSinkPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "propValues"    # [Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 461
    monitor-enter p0

    :try_start_3
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_21

    move-result v5

    if-nez v5, :cond_d

    .line 498
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 465
    :cond_d
    const/4 v5, 0x0

    :try_start_e
    aget-object v2, p2, v5

    .line 466
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 468
    const-string v5, "BluetoothA2dpService"

    const-string/jumbo v6, "onSinkPropertyChanged: Address of the remote device in null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_21

    goto :goto_b

    .line 461
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :catchall_21
    move-exception v5

    monitor-exit p0

    throw v5

    .line 472
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_24
    :try_start_24
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 474
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "State"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 475
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-direct {p0, v5}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v4

    .line 476
    .local v4, "state":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 478
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6b

    .line 481
    invoke-direct {p0, v1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 482
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_b

    .line 484
    :cond_6b
    if-ne v4, v7, :cond_79

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_79

    .line 485
    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 486
    const/16 v5, 0xb

    invoke-direct {p0, v1, v4, v5}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_b

    .line 487
    :cond_79
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8b

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_8b

    .line 488
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 489
    const/16 v5, 0xb

    const/16 v6, 0xa

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_b

    .line 492
    :cond_8b
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 493
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 494
    .local v3, "prevState":I
    invoke-direct {p0, v1, v3, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_9d
    .catchall {:try_start_24 .. :try_end_9d} :catchall_21

    goto/16 :goto_b
.end method

.method private synchronized native declared-synchronized resumeSinkNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized suspendSinkNative(Ljava/lang/String;)Z
.end method


# virtual methods
.method public declared-synchronized allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 437
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_3e

    move-result v3

    if-nez v3, :cond_17

    .line 449
    :goto_15
    monitor-exit p0

    return v2

    .line 443
    :cond_17
    :try_start_17
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 444
    .local v1, "data":Ljava/lang/Integer;
    if-nez v1, :cond_41

    .line 445
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_3e

    goto :goto_15

    .line 437
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/Integer;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 448
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/Integer;
    :cond_41
    :try_start_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingConnect: A2DP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, p2, v3}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z
    :try_end_6a
    .catchall {:try_start_41 .. :try_end_6a} :catchall_3e

    move-result v2

    goto :goto_15
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectSink("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_4f

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    .line 277
    :goto_2d
    monitor-exit p0

    return v2

    .line 271
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 272
    .local v1, "sinkDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_39

    .line 273
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_4f

    goto :goto_39

    .line 266
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sinkDevice":Landroid/bluetooth/BluetoothDevice;
    :catchall_4f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 277
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_52
    :try_start_52
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->connectSink(Ljava/lang/String;)Z
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_4f

    move-result v2

    goto :goto_2d
.end method

.method public declared-synchronized connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_67

    move-result v2

    if-nez v2, :cond_10

    move v2, v3

    .line 314
    :goto_e
    monitor-exit p0

    return v2

    .line 283
    :cond_10
    :try_start_10
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 286
    .local v1, "state":I
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6a

    invoke-virtual {p0, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v3

    .line 290
    goto :goto_e

    .line 293
    :cond_2e
    packed-switch v1, :pswitch_data_74

    .line 301
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ge v2, v6, :cond_46

    .line 305
    const/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 307
    :cond_46
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 309
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->connectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 311
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_5f
    .catchall {:try_start_10 .. :try_end_5f} :catchall_67

    move v2, v3

    .line 312
    goto :goto_e

    .end local v0    # "path":Ljava/lang/String;
    :pswitch_61
    move v2, v3

    .line 296
    goto :goto_e

    :pswitch_63
    move v2, v4

    .line 298
    goto :goto_e

    .restart local v0    # "path":Ljava/lang/String;
    :cond_65
    move v2, v4

    .line 314
    goto :goto_e

    .line 281
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "state":I
    :catchall_67
    move-exception v2

    monitor-exit p0

    throw v2

    .line 286
    :array_6a
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 293
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_63
        :pswitch_61
        :pswitch_61
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 333
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_3a

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    .line 337
    :goto_2d
    monitor-exit p0

    return v0

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->disconnectSink(Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3a

    move-result v0

    goto :goto_2d

    .line 333
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 341
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 342
    .local v1, "state":I
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "path":Ljava/lang/String;
    packed-switch v1, :pswitch_data_36

    .line 350
    :pswitch_13
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 351
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 353
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_33

    move v2, v3

    .line 356
    :goto_2d
    monitor-exit p0

    return v2

    :pswitch_2f
    move v2, v3

    .line 347
    goto :goto_2d

    .line 356
    :cond_31
    const/4 v2, 0x1

    goto :goto_2d

    .line 341
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "state":I
    :catchall_33
    move-exception v2

    monitor-exit p0

    throw v2

    .line 344
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_13
        :pswitch_13
        :pswitch_2f
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 591
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_51

    move-result v3

    if-eqz v3, :cond_b

    .line 597
    :cond_9
    monitor-exit p0

    return-void

    .line 592
    :cond_b
    :try_start_b
    const-string v3, "Cached audio devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 594
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 595
    .local v2, "state":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_51

    goto :goto_1a

    .line 591
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":I
    :catchall_51
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->cleanupNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 166
    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    .line 168
    return-void

    .line 166
    :catchall_7
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedDevices()Ljava/util/List;
    .registers 5
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
    .line 401
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    .line 404
    .local v0, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 401
    .end local v0    # "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    .line 395
    .local v0, "state":Ljava/lang/Integer;
    if-nez v0, :cond_17

    .line 396
    const/4 v1, 0x0

    .line 397
    :goto_15
    monitor-exit p0

    return v1

    :cond_17
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    move-result v1

    goto :goto_15

    .line 393
    .end local v0    # "state":Ljava/lang/Integer;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 13
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
    .line 408
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v6, "sinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 411
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 412
    .local v5, "sinkState":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2c
    if-ge v3, v4, :cond_19

    aget v7, v0, v3

    .line 413
    .local v7, "state":I
    if-ne v7, v5, :cond_39

    .line 414
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_19

    .line 408
    .end local v0    # "arr$":[I
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "sinkState":I
    .end local v6    # "sinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7    # "state":I
    :catchall_36
    move-exception v8

    monitor-exit p0

    throw v8

    .line 412
    .restart local v0    # "arr$":[I
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "sinkState":I
    .restart local v6    # "sinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v7    # "state":I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 419
    .end local v0    # "arr$":[I
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "sinkState":I
    .end local v7    # "state":I
    :cond_3c
    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result v0

    monitor-exit p0

    return v0

    .line 423
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_33

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    .line 262
    :goto_2f
    monitor-exit p0

    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_2f

    .line 258
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 377
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 380
    if-eqz p1, :cond_34

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_59

    if-nez v3, :cond_36

    .line 389
    :cond_34
    :goto_34
    monitor-exit p0

    return v2

    .line 383
    :cond_36
    :try_start_36
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "path":Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 385
    .local v1, "state":Ljava/lang/Integer;
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 388
    const/16 v2, 0xa

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 389
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_59

    move-result v2

    goto :goto_34

    .line 377
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/Integer;
    :catchall_59
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 430
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    move-result v0

    monitor-exit p0

    return v0

    .line 430
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 360
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suspendSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 363
    if-eqz p1, :cond_34

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_58

    if-nez v3, :cond_36

    .line 373
    :cond_34
    :goto_34
    monitor-exit p0

    return v2

    .line 366
    :cond_36
    :try_start_36
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "path":Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 368
    .local v1, "state":Ljava/lang/Integer;
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 372
    const/4 v2, 0x2

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 373
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_58

    move-result v2

    goto :goto_34

    .line 360
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/Integer;
    :catchall_58
    move-exception v2

    monitor-exit p0

    throw v2
.end method
