.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$RemoteService;,
        Landroid/server/BluetoothService$ServiceRecordClient;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final INCOMING_CONNECTION_FILE:Ljava/lang/String; = "/data/misc/bluetooth/incoming_connection.conf"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x2

.field private static final MESSAGE_REMOVE_SERVICE_RECORD:I = 0x3

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final RFCOMM_RECORD_REAPER:I = 0xa

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final STATE_CHANGE_REAPER:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mDockAddress:Ljava/lang/String;


# instance fields
.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterConnectionState:I

.field private final mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

.field private mAdapterSdpHandles:[I

.field private mAdapterUuids:[Landroid/os/ParcelUuid;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

.field private mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mBondState:Landroid/server/BluetoothBondState;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDockPin:Ljava/lang/String;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIncomingConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mNativeData:I

.field private mPan:Landroid/bluetooth/BluetoothPan;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/BluetoothService$ServiceRecordClient;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChangeTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 202
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    .line 162
    iput v3, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    iput v3, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    iput v3, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 167
    iput v3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 510
    new-instance v1, Landroid/server/BluetoothService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 1658
    new-instance v1, Landroid/server/BluetoothService$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1949
    new-instance v1, Landroid/server/BluetoothService$3;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$3;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 206
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 212
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 214
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 216
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v1

    if-ne v1, v4, :cond_4e

    .line 217
    const-string v1, "BluetoothService"

    const-string v2, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 221
    :cond_4e
    new-instance v1, Landroid/server/BluetoothBondState;

    invoke-direct {v1, p1, p0}, Landroid/server/BluetoothBondState;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    .line 222
    new-instance v1, Landroid/server/BluetoothAdapterProperties;

    invoke-direct {v1, p1, p0}, Landroid/server/BluetoothAdapterProperties;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    .line 223
    new-instance v1, Landroid/server/BluetoothDeviceProperties;

    invoke-direct {v1, p0}, Landroid/server/BluetoothDeviceProperties;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 229
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 230
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 231
    new-instance v1, Landroid/bluetooth/BluetoothProfileState;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 232
    new-instance v1, Landroid/bluetooth/BluetoothProfileState;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 234
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 235
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 240
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 243
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/server/BluetoothPanProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    .line 244
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/server/BluetoothHealthProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothHealthProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    .line 245
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    .line 247
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;II)V
    .registers 3
    .param p0, "x0"    # Landroid/server/BluetoothService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$1002(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$300(Landroid/server/BluetoothService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 86
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/server/BluetoothService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .registers 2
    .param p0, "x0"    # Landroid/server/BluetoothService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothInputDevice;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method private declared-synchronized addReservedSdpRecords(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 548
    .local v1, "svcIdentifiers":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 549
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    aput v2, v1, v0

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 551
    :cond_1d
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 552
    monitor-exit p0

    return-void

    .line 547
    .end local v0    # "i":I
    .end local v1    # "svcIdentifiers":[I
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native addReservedServiceRecordsNative([I)[I
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method private autoConnect()V
    .registers 10

    .prologue
    .line 2433
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 2434
    .local v2, "bonds":[Ljava/lang/String;
    if-nez v2, :cond_7

    .line 2446
    :cond_6
    return-void

    .line 2437
    :cond_7
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_a
    if-ge v3, v4, :cond_6

    aget-object v6, v1, v3

    .line 2438
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2439
    .local v0, "address":Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2440
    .local v7, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v7, :cond_28

    .line 2441
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 2442
    .local v5, "msg":Landroid/os/Message;
    const/16 v8, 0x65

    iput v8, v5, Landroid/os/Message;->what:I

    .line 2443
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2437
    .end local v5    # "msg":Landroid/os/Message;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method static bluezStringToScanMode(ZZ)I
    .registers 3
    .param p0, "pairable"    # Z
    .param p1, "discoverable"    # Z

    .prologue
    .line 1972
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 1973
    const/16 v0, 0x17

    .line 1977
    :goto_6
    return v0

    .line 1974
    :cond_7
    if-eqz p0, :cond_e

    if-nez p1, :cond_e

    .line 1975
    const/16 v0, 0x15

    goto :goto_6

    .line 1977
    :cond_e
    const/16 v0, 0x14

    goto :goto_6
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "pid"    # I

    .prologue
    .line 1561
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothService$ServiceRecordClient;

    .line 1562
    .local v0, "client":Landroid/server/BluetoothService$ServiceRecordClient;
    if-eqz v0, :cond_51

    iget v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    if-ne p2, v1, :cond_51

    .line 1563
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_45

    .line 1567
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1570
    :cond_45
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 1573
    :cond_51
    monitor-exit p0

    return-void

    .line 1561
    .end local v0    # "client":Landroid/server/BluetoothService$ServiceRecordClient;
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 870
    const/4 v1, 0x0

    .line 872
    .local v1, "uuidStrings":[Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 873
    array-length v3, v1

    new-array v2, v3, [Landroid/os/ParcelUuid;

    .line 875
    .local v2, "uuids":[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v3, v1

    if-ge v0, v3, :cond_19

    .line 876
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    aput-object v3, v2, v0

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 878
    :cond_19
    return-object v2
.end method

.method private convertToAdapterState(I)I
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 2619
    packed-switch p1, :pswitch_data_14

    .line 2629
    const-string v0, "BluetoothService"

    const-string v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    const/4 v0, -0x1

    :goto_b
    return v0

    .line 2621
    :pswitch_c
    const/4 v0, 0x0

    goto :goto_b

    .line 2623
    :pswitch_e
    const/4 v0, 0x3

    goto :goto_b

    .line 2625
    :pswitch_10
    const/4 v0, 0x2

    goto :goto_b

    .line 2627
    :pswitch_12
    const/4 v0, 0x1

    goto :goto_b

    .line 2619
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private createIncomingConnectionStateFile()V
    .registers 5

    .prologue
    .line 2670
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2671
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2673
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 2678
    :cond_10
    :goto_10
    return-void

    .line 2674
    :catch_11
    move-exception v0

    .line 2675
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothService"

    const-string v3, "IOException: cannot create file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private dumpAclConnectedDevices(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1905
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 1906
    .local v2, "devicesObjectPath":[Ljava/lang/String;
    const-string v5, "\n--ACL connected devices--"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    if-eqz v2, :cond_1c

    .line 1908
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v4, :cond_1c

    aget-object v1, v0, v3

    .line 1909
    .local v1, "device":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1912
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "device":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1c
    return-void
.end method

.method private dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1897
    const-string v3, "\n--Application Service Records--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1899
    .local v0, "handle":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$ServiceRecordClient;

    iget v3, v3, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1900
    .local v2, "pid":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tpid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 1902
    .end local v0    # "handle":Ljava/lang/Integer;
    .end local v2    # "pid":Ljava/lang/Integer;
    :cond_52
    return-void
.end method

.method private dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1880
    iget-object v0, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    sparse-switch v0, :sswitch_data_22

    .line 1894
    :goto_9
    return-void

    .line 1882
    :sswitch_a
    const-string v0, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 1885
    :sswitch_10
    const-string v0, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 1888
    :sswitch_16
    const-string v0, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 1891
    :sswitch_1c
    const-string v0, "getConnectionState() = STATE_AUDIO_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 1880
    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_10
        0x3 -> :sswitch_16
        0xc -> :sswitch_1c
    .end sparse-switch
.end method

.method private dumpHeadsetService(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1785
    const-string v3, "\n--Headset Service--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_9e

    .line 1787
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1788
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_60

    .line 1789
    const-string v3, "No headsets connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1799
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_a0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 1801
    const-string v3, "--Connected and Disconnected Headsets"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1803
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1804
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO audio connected to device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 1791
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_60
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1792
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ngetConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V

    .line 1794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryUsageHint() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1809
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_9e
    return-void

    .line 1799
    nop

    :array_a0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method private dumpInputDeviceProfile(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1812
    const-string v3, "\n--Bluetooth Service- Input Device Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v3, :cond_b5

    .line 1814
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1815
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_42

    .line 1816
    const-string v3, "No input devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1836
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_b6

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothInputDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 1838
    const-string v3, "--Connected and Disconnected input devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1840
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 1818
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1819
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1820
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority of Connected device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1823
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_be

    goto/16 :goto_1a

    .line 1825
    :pswitch_a0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1828
    :pswitch_a7
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1831
    :pswitch_ae
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1843
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_b5
    return-void

    .line 1836
    :array_b6
    .array-data 4
        0x2
        0x0
    .end array-data

    .line 1823
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_a7
        :pswitch_ae
    .end packed-switch
.end method

.method private dumpKnownDevices(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1915
    const-string v8, "\n--Known devices--"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1916
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v8}, Landroid/server/BluetoothDeviceProperties;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1917
    .local v0, "address":Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    .line 1918
    .local v1, "bondState":I
    const-string v8, "%s %10s (%d) %s\n"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v11, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1923
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1924
    .local v7, "uuidChannels":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v7, :cond_8d

    .line 1925
    const-string v8, "\tuuids = null"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    :cond_56
    iget-object v8, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothService$RemoteService;

    .line 1937
    .local v5, "service":Landroid/server/BluetoothService$RemoteService;
    iget-object v8, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 1938
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tPENDING CALLBACK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    .line 1927
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Landroid/server/BluetoothService$RemoteService;
    :cond_8d
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_95
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 1928
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1929
    .local v2, "channel":Ljava/lang/Integer;
    if-nez v2, :cond_c0

    .line 1930
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 1932
    :cond_c0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RFCOMM channel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 1942
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "bondState":I
    .end local v2    # "channel":Ljava/lang/Integer;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    .end local v7    # "uuidChannels":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_e1
    return-void
.end method

.method private dumpPanProfile(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1846
    const-string v3, "\n--Bluetooth Service- Pan Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1847
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v3, :cond_95

    .line 1848
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1849
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_42

    .line 1850
    const-string v3, "No Pan devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1869
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_96

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 1871
    const-string v3, "--Connected and Disconnected Pan devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1873
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 1852
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1854
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_9e

    goto :goto_1a

    .line 1858
    :pswitch_83
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 1861
    :pswitch_89
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 1864
    :pswitch_8f
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 1876
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_95
    return-void

    .line 1869
    :array_96
    .array-data 4
        0x2
        0x0
    .end array-data

    .line 1856
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_83
        :pswitch_89
        :pswitch_8f
    .end packed-switch
.end method

.method private dumpProfileState(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1773
    const-string v0, "\n--Profile State dump--"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n Headset profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n A2dp profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n HID profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n PAN profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    return-void
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1506
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private getProfileProxy()V
    .registers 5

    .prologue
    .line 1945
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1947
    return-void
.end method

.method private initProfileState()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2418
    const/4 v2, 0x0

    .line 2419
    .local v2, "bonds":[Ljava/lang/String;
    const-string v7, "Devices"

    invoke-virtual {p0, v7, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 2420
    .local v6, "val":Ljava/lang/String;
    if-eqz v6, :cond_10

    .line 2421
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2423
    :cond_10
    if-nez v2, :cond_13

    .line 2430
    :cond_12
    return-void

    .line 2426
    :cond_13
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_16
    if-ge v3, v4, :cond_12

    aget-object v5, v1, v3

    .line 2427
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2428
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0, v0, v8}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2426
    add-int/lit8 v3, v3, 0x1

    goto :goto_16
.end method

.method private native initializeNativeDataNative()V
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 989
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1018
    :cond_10
    :goto_10
    return v0

    .line 993
    :cond_11
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 996
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 998
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 999
    const-string v1, "BluetoothService"

    const-string v2, "Ignoring createBond(): another device is bonding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1006
    :cond_2b
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_45

    .line 1008
    const-string v1, "BluetoothService"

    const-string v2, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1012
    :cond_45
    sget-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1013
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1014
    const-string v1, "BluetoothService"

    const-string v2, "Error while writing Pin for the dock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1018
    :cond_5b
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private isEnabledInternal()Z
    .registers 3

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private native isEnabledNative()I
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2780
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .registers 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 683
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 684
    .local v0, "attempt":I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1b

    .line 686
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 701
    :cond_1a
    :goto_1a
    return-void

    .line 691
    :cond_1b
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 692
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 695
    .local v2, "postResult":Z
    if-nez v2, :cond_1a

    .line 696
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_1a
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 250
    const-class v6, Landroid/server/BluetoothService;

    monitor-enter v6

    :try_start_4
    sget-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v7, :cond_c

    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_5d

    .line 281
    :cond_a
    :goto_a
    monitor-exit v6

    return-object v5

    .line 252
    :cond_c
    const/4 v3, 0x0

    .line 255
    .local v3, "file":Ljava/io/BufferedInputStream;
    :try_start_d
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_63
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_73
    .catchall {:try_start_d .. :try_end_19} :catchall_83

    .line 256
    .end local v3    # "file":Ljava/io/BufferedInputStream;
    .local v4, "file":Ljava/io/BufferedInputStream;
    const/16 v7, 0x11

    :try_start_1b
    new-array v0, v7, [B

    .line 257
    .local v0, "address":[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 258
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 259
    .local v1, "dockAddress":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 261
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 262
    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_33} :catch_92
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_33} :catch_8f
    .catchall {:try_start_1b .. :try_end_33} :catchall_8c

    .line 272
    if-eqz v4, :cond_a

    .line 274
    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_5d

    goto :goto_a

    .line 275
    :catch_39
    move-exception v7

    goto :goto_a

    .line 264
    :cond_3b
    :try_start_3b
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckBluetoothAddress failed for car dock address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_53} :catch_92
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_53} :catch_8f
    .catchall {:try_start_3b .. :try_end_53} :catchall_8c

    .line 272
    if-eqz v4, :cond_95

    .line 274
    :try_start_55
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_60
    .catchall {:try_start_55 .. :try_end_58} :catchall_5d

    move-object v3, v4

    .line 280
    .end local v0    # "address":[B
    .end local v1    # "dockAddress":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/BufferedInputStream;
    .restart local v3    # "file":Ljava/io/BufferedInputStream;
    :cond_59
    :goto_59
    const/4 v7, 0x0

    :try_start_5a
    sput-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_5d

    goto :goto_a

    .line 250
    :catchall_5d
    move-exception v5

    monitor-exit v6

    throw v5

    .line 275
    .end local v3    # "file":Ljava/io/BufferedInputStream;
    .restart local v0    # "address":[B
    .restart local v1    # "dockAddress":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/BufferedInputStream;
    :catch_60
    move-exception v7

    move-object v3, v4

    .line 277
    .end local v4    # "file":Ljava/io/BufferedInputStream;
    .restart local v3    # "file":Ljava/io/BufferedInputStream;
    goto :goto_59

    .line 267
    .end local v0    # "address":[B
    .end local v1    # "dockAddress":Ljava/lang/String;
    :catch_63
    move-exception v2

    .line 268
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_64
    :try_start_64
    const-string v7, "BluetoothService"

    const-string v8, "FileNotFoundException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_83

    .line 272
    if-eqz v3, :cond_59

    .line 274
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71
    .catchall {:try_start_6d .. :try_end_70} :catchall_5d

    goto :goto_59

    .line 275
    :catch_71
    move-exception v7

    goto :goto_59

    .line 269
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_73
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    :goto_74
    :try_start_74
    const-string v7, "BluetoothService"

    const-string v8, "IOException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_83

    .line 272
    if-eqz v3, :cond_59

    .line 274
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81
    .catchall {:try_start_7d .. :try_end_80} :catchall_5d

    goto :goto_59

    .line 275
    :catch_81
    move-exception v7

    goto :goto_59

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_83
    move-exception v5

    :goto_84
    if-eqz v3, :cond_89

    .line 274
    :try_start_86
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_5d

    .line 277
    :cond_89
    :goto_89
    :try_start_89
    throw v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_5d

    .line 275
    :catch_8a
    move-exception v7

    goto :goto_89

    .line 272
    .end local v3    # "file":Ljava/io/BufferedInputStream;
    .restart local v4    # "file":Ljava/io/BufferedInputStream;
    :catchall_8c
    move-exception v5

    move-object v3, v4

    .end local v4    # "file":Ljava/io/BufferedInputStream;
    .restart local v3    # "file":Ljava/io/BufferedInputStream;
    goto :goto_84

    .line 269
    .end local v3    # "file":Ljava/io/BufferedInputStream;
    .restart local v4    # "file":Ljava/io/BufferedInputStream;
    :catch_8f
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/BufferedInputStream;
    .restart local v3    # "file":Ljava/io/BufferedInputStream;
    goto :goto_74

    .line 267
    .end local v3    # "file":Ljava/io/BufferedInputStream;
    .restart local v4    # "file":Ljava/io/BufferedInputStream;
    :catch_92
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/BufferedInputStream;
    .restart local v3    # "file":Ljava/io/BufferedInputStream;
    goto :goto_64

    .end local v3    # "file":Ljava/io/BufferedInputStream;
    .restart local v0    # "address":[B
    .restart local v1    # "dockAddress":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/BufferedInputStream;
    :cond_95
    move-object v3, v4

    .end local v4    # "file":Ljava/io/BufferedInputStream;
    .restart local v3    # "file":Ljava/io/BufferedInputStream;
    goto :goto_59
.end method

.method private readIncomingConnectionState()V
    .registers 13

    .prologue
    .line 2690
    iget-object v10, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v10

    .line 2691
    const/4 v2, 0x0

    .line 2693
    .local v2, "fstream":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_b9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_7f
    .catchall {:try_start_4 .. :try_end_b} :catchall_a2

    .line 2694
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .local v3, "fstream":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2695
    .local v4, "in":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2697
    .local v1, "file":Ljava/io/BufferedReader;
    :cond_1a
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_75

    .line 2698
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2699
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1a

    .line 2700
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2701
    .local v8, "value":[Ljava/lang/String;
    if-eqz v8, :cond_1a

    array-length v9, v8

    const/4 v11, 0x3

    if-ne v9, v11, :cond_1a

    .line 2702
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2703
    .local v7, "val1":Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-direct {v6, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2704
    .local v6, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_51} :catch_b6
    .catchall {:try_start_b .. :try_end_51} :catchall_b3

    goto :goto_1a

    .line 2707
    .end local v1    # "file":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "val1":Ljava/lang/Integer;
    .end local v8    # "value":[Ljava/lang/String;
    :catch_52
    move-exception v0

    move-object v2, v3

    .line 2708
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :goto_54
    :try_start_54
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: readIncomingConnectionState"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_a2

    .line 2712
    if-eqz v2, :cond_73

    .line 2714
    :try_start_70
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_ac
    .catchall {:try_start_70 .. :try_end_73} :catchall_a9

    .line 2720
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_73
    :goto_73
    :try_start_73
    monitor-exit v10
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_a9

    .line 2721
    return-void

    .line 2712
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_75
    if-eqz v3, :cond_bb

    .line 2714
    :try_start_77
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7c
    .catchall {:try_start_77 .. :try_end_7a} :catchall_b0

    move-object v2, v3

    .line 2717
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_73

    .line 2715
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catch_7c
    move-exception v9

    move-object v2, v3

    .line 2717
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_73

    .line 2709
    .end local v1    # "file":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "line":Ljava/lang/String;
    :catch_7f
    move-exception v0

    .line 2710
    .local v0, "e":Ljava/io/IOException;
    :goto_80
    :try_start_80
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: readIncomingConnectionState"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_80 .. :try_end_9a} :catchall_a2

    .line 2712
    if-eqz v2, :cond_73

    .line 2714
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a9

    goto :goto_73

    .line 2715
    :catch_a0
    move-exception v9

    goto :goto_73

    .line 2712
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a2
    move-exception v9

    :goto_a3
    if-eqz v2, :cond_a8

    .line 2714
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_ae
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    .line 2717
    :cond_a8
    :goto_a8
    :try_start_a8
    throw v9

    .line 2720
    :catchall_a9
    move-exception v9

    :goto_aa
    monitor-exit v10
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_a9

    throw v9

    .line 2715
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_ac
    move-exception v9

    goto :goto_73

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_ae
    move-exception v11

    goto :goto_a8

    .line 2720
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :catchall_b0
    move-exception v9

    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_aa

    .line 2712
    .end local v1    # "file":Ljava/io/BufferedReader;
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catchall_b3
    move-exception v9

    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_a3

    .line 2709
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catch_b6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_80

    .line 2707
    :catch_b9
    move-exception v0

    goto :goto_54

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_bb
    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_73
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .registers 6
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1692
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1693
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1698
    .local v2, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_26

    const/4 v3, 0x1

    :goto_15
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 1700
    if-nez v2, :cond_2d

    const/4 v3, 0x0

    :goto_1a
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 1703
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_25

    .line 1704
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    :cond_25
    return-void

    .line 1698
    :cond_26
    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_15

    .line 1700
    :cond_2d
    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1a
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private native removeReservedServiceRecordsNative([I)Z
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 1981
    packed-switch p0, :pswitch_data_10

    .line 1989
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1983
    :pswitch_5
    const-string/jumbo v0, "off"

    goto :goto_4

    .line 1985
    :pswitch_9
    const-string v0, "connectable"

    goto :goto_4

    .line 1987
    :pswitch_c
    const-string v0, "discoverable"

    goto :goto_4

    .line 1981
    nop

    :pswitch_data_10
    .packed-switch 0x14
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v0, 0x0

    .line 746
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_11

    .line 748
    :goto_10
    return v0

    :cond_11
    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_10
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 740
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 742
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_10
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 734
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 736
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "bondState"    # I

    .prologue
    .line 708
    packed-switch p0, :pswitch_data_10

    .line 716
    const-string v0, "??????"

    :goto_5
    return-object v0

    .line 710
    :pswitch_6
    const-string/jumbo v0, "not bonded"

    goto :goto_5

    .line 712
    :pswitch_a
    const-string v0, "bonding"

    goto :goto_5

    .line 714
    :pswitch_d
    const-string v0, "bonded"

    goto :goto_5

    .line 708
    :pswitch_data_10
    .packed-switch 0xa
        :pswitch_6
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method private truncateIncomingConnectionFile()V
    .registers 6

    .prologue
    .line 2724
    const/4 v1, 0x0

    .line 2726
    .local v1, "r":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/bluetooth/incoming_connection.conf"

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_3d
    .catchall {:try_start_1 .. :try_end_b} :catchall_60

    .line 2727
    .end local v1    # "r":Ljava/io/RandomAccessFile;
    .local v2, "r":Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    :try_start_d
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_6f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_6c
    .catchall {:try_start_d .. :try_end_10} :catchall_69

    .line 2733
    if-eqz v2, :cond_72

    .line 2735
    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_17

    move-object v1, v2

    .line 2741
    .end local v2    # "r":Ljava/io/RandomAccessFile;
    .restart local v1    # "r":Ljava/io/RandomAccessFile;
    :cond_16
    :goto_16
    return-void

    .line 2736
    .end local v1    # "r":Ljava/io/RandomAccessFile;
    .restart local v2    # "r":Ljava/io/RandomAccessFile;
    :catch_17
    move-exception v3

    move-object v1, v2

    .line 2738
    .end local v2    # "r":Ljava/io/RandomAccessFile;
    .restart local v1    # "r":Ljava/io/RandomAccessFile;
    goto :goto_16

    .line 2728
    :catch_1a
    move-exception v0

    .line 2729
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1b
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_60

    .line 2733
    if-eqz v1, :cond_16

    .line 2735
    :try_start_37
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_16

    .line 2736
    :catch_3b
    move-exception v3

    goto :goto_16

    .line 2730
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v0

    .line 2731
    .local v0, "e":Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_60

    .line 2733
    if-eqz v1, :cond_16

    .line 2735
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_16

    .line 2736
    :catch_5e
    move-exception v3

    goto :goto_16

    .line 2733
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v3

    :goto_61
    if-eqz v1, :cond_66

    .line 2735
    :try_start_63
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 2738
    :cond_66
    :goto_66
    throw v3

    .line 2736
    :catch_67
    move-exception v4

    goto :goto_66

    .line 2733
    .end local v1    # "r":Ljava/io/RandomAccessFile;
    .restart local v2    # "r":Ljava/io/RandomAccessFile;
    :catchall_69
    move-exception v3

    move-object v1, v2

    .end local v2    # "r":Ljava/io/RandomAccessFile;
    .restart local v1    # "r":Ljava/io/RandomAccessFile;
    goto :goto_61

    .line 2730
    .end local v1    # "r":Ljava/io/RandomAccessFile;
    .restart local v2    # "r":Ljava/io/RandomAccessFile;
    :catch_6c
    move-exception v0

    move-object v1, v2

    .end local v2    # "r":Ljava/io/RandomAccessFile;
    .restart local v1    # "r":Ljava/io/RandomAccessFile;
    goto :goto_3e

    .line 2728
    .end local v1    # "r":Ljava/io/RandomAccessFile;
    .restart local v2    # "r":Ljava/io/RandomAccessFile;
    :catch_6f
    move-exception v0

    move-object v1, v2

    .end local v2    # "r":Ljava/io/RandomAccessFile;
    .restart local v1    # "r":Ljava/io/RandomAccessFile;
    goto :goto_1b

    .end local v1    # "r":Ljava/io/RandomAccessFile;
    .restart local v2    # "r":Ljava/io/RandomAccessFile;
    :cond_72
    move-object v1, v2

    .end local v2    # "r":Ljava/io/RandomAccessFile;
    .restart local v1    # "r":Ljava/io/RandomAccessFile;
    goto :goto_16
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .registers 6
    .param p1, "state"    # I
    .param p2, "prevState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2634
    packed-switch p2, :pswitch_data_54

    .line 2648
    :goto_5
    packed-switch p1, :pswitch_data_5e

    .line 2665
    :cond_8
    :goto_8
    return v0

    .line 2636
    :pswitch_9
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    goto :goto_5

    .line 2640
    :pswitch_10
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    goto :goto_5

    .line 2644
    :pswitch_17
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    goto :goto_5

    .line 2650
    :pswitch_1e
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 2651
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_2c

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eq v2, v0, :cond_8

    :cond_2c
    move v0, v1

    goto :goto_8

    .line 2654
    :pswitch_2e
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 2655
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-eq v2, v0, :cond_8

    move v0, v1

    goto :goto_8

    .line 2658
    :pswitch_3a
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 2659
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_48

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    if-eq v2, v0, :cond_8

    :cond_48
    move v0, v1

    goto :goto_8

    .line 2662
    :pswitch_4a
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_52

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eqz v2, :cond_8

    :cond_52
    move v0, v1

    goto :goto_8

    .line 2634
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_9
        :pswitch_10
        :pswitch_17
    .end packed-switch

    .line 2648
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_1e
        :pswitch_2e
        :pswitch_3a
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .registers 14
    .param p1, "profile"    # I
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2528
    const/4 v2, 0x1

    .line 2529
    .local v2, "numDev":I
    move v1, p2

    .line 2530
    .local v1, "newHashState":I
    const/4 v4, 0x1

    .line 2542
    .local v4, "update":Z
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2543
    .local v3, "stateNumDev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_27

    .line 2544
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2545
    .local v0, "currHashState":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2547
    if-ne p2, v0, :cond_40

    .line 2548
    add-int/lit8 v2, v2, 0x1

    .line 2567
    .end local v0    # "currHashState":I
    :cond_27
    :goto_27
    if-eqz v4, :cond_3f

    .line 2568
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2571
    :cond_3f
    return-void

    .line 2549
    .restart local v0    # "currHashState":I
    :cond_40
    if-eq p2, v8, :cond_46

    if-ne p2, v7, :cond_48

    if-eq v0, v8, :cond_48

    .line 2552
    :cond_46
    const/4 v2, 0x1

    goto :goto_27

    .line 2553
    :cond_48
    if-ne v2, v7, :cond_4e

    if-ne p3, v0, :cond_4e

    .line 2554
    const/4 v4, 0x1

    goto :goto_27

    .line 2555
    :cond_4e
    if-le v2, v7, :cond_5a

    if-ne p3, v0, :cond_5a

    .line 2556
    add-int/lit8 v2, v2, -0x1

    .line 2558
    if-eq v0, v8, :cond_58

    if-ne v0, v7, :cond_27

    .line 2560
    :cond_58
    move v1, v0

    goto :goto_27

    .line 2563
    :cond_5a
    const/4 v4, 0x0

    goto :goto_27
.end method

.method private declared-synchronized updateSdpRecords()V
    .registers 6

    .prologue
    .line 555
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 563
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_29
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->addReservedSdpRecords(Ljava/util/ArrayList;)V

    .line 571
    const/4 v2, 0x1

    const-string/jumbo v3, "nap"

    const-string/jumbo v4, "pan1"

    invoke-virtual {p0, v2, v3, v4}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 575
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/ParcelUuid;

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 581
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_61

    .line 582
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    aput-object v2, v3, v0
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_63

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 584
    :cond_61
    monitor-exit p0

    return-void

    .line 555
    .end local v0    # "i":I
    .end local v1    # "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :catchall_63
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private validateProfileConnectionState(I)Z
    .registers 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 2612
    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private declared-synchronized writeDockPin()Z
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 285
    monitor-enter p0

    const/4 v1, 0x0

    .line 287
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_3e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_50
    .catchall {:try_start_4 .. :try_end_10} :catchall_60

    .line 291
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_10
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 293
    .local v3, "pin":I
    const-string v6, "%04d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 294
    iget-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_36} :catch_76
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_36} :catch_73
    .catchall {:try_start_10 .. :try_end_36} :catchall_70

    .line 301
    if-eqz v2, :cond_3b

    .line 303
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_6a
    .catchall {:try_start_38 .. :try_end_3b} :catchall_79

    :cond_3b
    :goto_3b
    move-object v1, v2

    .line 310
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .end local v3    # "pin":I
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :goto_3c
    monitor-exit p0

    return v4

    .line 296
    :catch_3e
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3f
    :try_start_3f
    const-string v4, "BluetoothService"

    const-string v6, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_60

    .line 301
    if-eqz v1, :cond_4b

    .line 303
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_6c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_67

    .line 309
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4b
    :goto_4b
    const/4 v4, 0x0

    :try_start_4c
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_67

    move v4, v5

    .line 310
    goto :goto_3c

    .line 298
    :catch_50
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    :goto_51
    :try_start_51
    const-string v4, "BluetoothService"

    const-string v6, "IOException while while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_60

    .line 301
    if-eqz v1, :cond_4b

    .line 303
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_67

    goto :goto_4b

    .line 304
    :catch_5e
    move-exception v4

    goto :goto_4b

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v4

    :goto_61
    if-eqz v1, :cond_66

    .line 303
    :try_start_63
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6e
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 306
    :cond_66
    :goto_66
    :try_start_66
    throw v4
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 285
    :catchall_67
    move-exception v4

    :goto_68
    monitor-exit p0

    throw v4

    .line 304
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "pin":I
    :catch_6a
    move-exception v5

    goto :goto_3b

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .end local v3    # "pin":I
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :catch_6c
    move-exception v4

    goto :goto_4b

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_6e
    move-exception v5

    goto :goto_66

    .line 301
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_70
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_61

    .line 298
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_73
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_51

    .line 296
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_76
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_3f

    .line 285
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "pin":I
    :catchall_79
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_68
.end method


# virtual methods
.method addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "setTrust"    # Z

    .prologue
    .line 2393
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V

    .line 2395
    .local v0, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    .line 2397
    return-object v0
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .registers 16
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "channel"    # I
    .param p4, "b"    # Landroid/os/IBinder;

    .prologue
    const/4 v10, -0x1

    .line 1517
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_b3

    move-result v0

    if-nez v0, :cond_14

    move v9, v10

    .line 1547
    :goto_12
    monitor-exit p0

    return v9

    .line 1520
    :cond_14
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1f

    const/16 v0, 0x1e

    if-le p3, v0, :cond_21

    :cond_1f
    move v9, v10

    .line 1522
    goto :goto_12

    .line 1524
    :cond_21
    :try_start_21
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1525
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to register a reserved UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 1526
    goto :goto_12

    .line 1528
    :cond_43
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    int-to-short v6, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v9

    .line 1531
    .local v9, "handle":I
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    if-ne v9, v10, :cond_7b

    move v9, v10

    .line 1533
    goto :goto_12

    .line 1536
    :cond_7b
    new-instance v7, Landroid/server/BluetoothService$ServiceRecordClient;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/server/BluetoothService$ServiceRecordClient;-><init>(Landroid/server/BluetoothService$1;)V

    .line 1537
    .local v7, "client":Landroid/server/BluetoothService$ServiceRecordClient;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    .line 1538
    iput-object p4, v7, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    .line 1539
    new-instance v0, Landroid/server/BluetoothService$Reaper;

    iget v1, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    const/16 v2, 0xa

    invoke-direct {v0, p0, v9, v1, v2}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;III)V

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    .line 1540
    iget-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_21 .. :try_end_9e} :catchall_b3

    .line 1542
    :try_start_9e
    iget-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a4} :catch_a6
    .catchall {:try_start_9e .. :try_end_a4} :catchall_b3

    goto/16 :goto_12

    .line 1543
    :catch_a6
    move-exception v8

    .line 1544
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_a7
    const-string v0, "BluetoothService"

    const-string v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_b3

    goto/16 :goto_12

    .line 1517
    .end local v7    # "client":Landroid/server/BluetoothService$ServiceRecordClient;
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "handle":I
    :catchall_b3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "allow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2187
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2190
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2201
    :goto_14
    return v2

    .line 2194
    :cond_15
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2195
    .local v1, "data":Ljava/lang/Integer;
    if-nez v1, :cond_3a

    .line 2196
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingProfileConnect("

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

    goto :goto_14

    .line 2200
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingProfileConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_14
.end method

.method allowIncomingTethering()Z
    .registers 3

    .prologue
    .line 2040
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2041
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->allowIncomingTethering()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2042
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 636
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 638
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 639
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    .line 640
    const/4 v0, 0x1

    .line 642
    :goto_20
    monitor-exit p0

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_20

    .line 636
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1080
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_34

    move-result v1

    if-nez v1, :cond_13

    .line 1095
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 1084
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1087
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1088
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_11

    .line 1092
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 1094
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_34

    .line 1095
    const/4 v0, 0x1

    goto :goto_11

    .line 1080
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .registers 4

    .prologue
    .line 970
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 974
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 970
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1420
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_5e

    move-result v2

    if-nez v2, :cond_13

    .line 1437
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 1424
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1427
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-virtual {v2, p1, v3, v4}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 1429
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1430
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1431
    .local v0, "data":Ljava/lang/Integer;
    if-nez v0, :cond_61

    .line 1432
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelUserInputNative("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "available, ignoring. Maybe the PasskeyAgent Request was already cancelled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "by the remote or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_5e

    goto :goto_11

    .line 1420
    .end local v0    # "data":Ljava/lang/Integer;
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1437
    .restart local v0    # "data":Ljava/lang/Integer;
    :cond_61
    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5e

    move-result v1

    goto :goto_11
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "on"    # Z
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 1608
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1612
    .local v1, "pid":I
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1613
    if-eqz p1, :cond_3b

    .line 1614
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    :cond_25
    :goto_25
    if-eqz p3, :cond_32

    .line 1624
    :try_start_27
    new-instance v4, Landroid/server/BluetoothService$Reaper;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v1, v5}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v5, 0x0

    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_48

    .line 1632
    :cond_32
    if-eqz p1, :cond_51

    .line 1633
    const/4 v2, 0x3

    .line 1638
    .local v2, "type":I
    :goto_35
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3, v2, p2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1639
    const/4 v3, 0x1

    .end local v2    # "type":I
    :cond_3b
    :goto_3b
    return v3

    .line 1618
    :cond_3c
    if-nez p1, :cond_25

    .line 1619
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 1625
    :catch_48
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 1635
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_51
    const/4 v2, 0x4

    .restart local v2    # "type":I
    goto :goto_35
.end method

.method declared-synchronized cleanNativeAfterShutoffBluetooth()V
    .registers 2

    .prologue
    .line 468
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 469
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 470
    monitor-exit p0

    return-void

    .line 468
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cleanupAfterFinishDisable()V
    .registers 6

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v4}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 428
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 429
    .local v3, "srHandle":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_10

    .line 426
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "srHandle":Ljava/lang/Integer;
    :catchall_24
    move-exception v4

    monitor-exit p0

    throw v4

    .line 431
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_27
    :try_start_27
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 433
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 434
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 435
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 436
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 437
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 438
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    .line 441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_24

    move-result-wide v1

    .line 443
    .local v1, "ident":J
    :try_start_42
    iget-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_4c
    .catchall {:try_start_42 .. :try_end_47} :catchall_51

    .line 446
    :try_start_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_24

    .line 448
    :goto_4a
    monitor-exit p0

    return-void

    .line 444
    :catch_4c
    move-exception v4

    .line 446
    :try_start_4d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4a

    :catchall_51
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_24
.end method

.method clearApplicationStateChangeTracker()V
    .registers 2

    .prologue
    .line 1647
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1648
    return-void
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelType"    # I

    .prologue
    .line 2249
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2252
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2254
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 2239
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2242
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2244
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2337
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_b

    .line 2347
    :cond_a
    :goto_a
    return v2

    .line 2339
    :cond_b
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2340
    .local v1, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_a

    .line 2341
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2342
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2343
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2344
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 2345
    goto :goto_a
.end method

.method public connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2110
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2113
    .local v0, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 2114
    :try_start_18
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2115
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2119
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2120
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2121
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method native connectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2060
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2063
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2064
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method native connectPanDeviceNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public connectSink(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2365
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 2375
    :cond_9
    :goto_9
    return v2

    .line 2367
    :cond_a
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2368
    .local v1, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_9

    .line 2369
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2370
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2371
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2372
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2373
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1022
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_21

    move-result v1

    if-nez v1, :cond_a

    .line 1031
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 1024
    :cond_a
    const v1, 0xea60

    :try_start_d
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1028
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_21

    .line 1031
    const/4 v0, 0x1

    goto :goto_8

    .line 1022
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "hash"    # [B
    .param p3, "randomizer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1036
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v1

    if-nez v1, :cond_a

    .line 1046
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 1038
    :cond_a
    const v1, 0xea60

    :try_start_d
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1042
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1043
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    .line 1046
    const/4 v0, 0x1

    goto :goto_8

    .line 1036
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native createChannelNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method native destroyChannelNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public disable()Z
    .registers 2

    .prologue
    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disable(Z)Z
    .registers 7
    .param p1, "saveSetting"    # Z

    .prologue
    const/4 v1, 0x1

    .line 373
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_20

    move-result v0

    .line 377
    .local v0, "adapterState":I
    packed-switch v0, :pswitch_data_24

    .line 383
    :pswitch_12
    const/4 v1, 0x0

    .line 387
    :goto_13
    :pswitch_13
    monitor-exit p0

    return v1

    .line 386
    :pswitch_15
    :try_start_15
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 373
    .end local v0    # "adapterState":I
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1

    .line 377
    nop

    :pswitch_data_24
    .packed-switch 0xa
        :pswitch_13
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method native disableNative()I
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "id"    # I

    .prologue
    .line 2259
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2262
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2263
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method declared-synchronized disconnectDevices()V
    .registers 4

    .prologue
    .line 392
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 393
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 392
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2

    .line 396
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 397
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_19

    goto :goto_24

    .line 399
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_34
    monitor-exit p0

    return-void
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2351
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 2361
    :cond_9
    :goto_9
    return v2

    .line 2353
    :cond_a
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2354
    .local v1, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_9

    .line 2355
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2356
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2357
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2358
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2359
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2125
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2128
    .local v0, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 2129
    :try_start_18
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2130
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2134
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2135
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2136
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method native disconnectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2083
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2086
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2087
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method native disconnectPanDeviceNative(Ljava/lang/String;)Z
.end method

.method native disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2379
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 2389
    :cond_9
    :goto_9
    return v2

    .line 2381
    :cond_a
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2382
    .local v1, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_9

    .line 2383
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2384
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x34

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2385
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2386
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2387
    const/4 v2, 0x1

    goto :goto_9
.end method

.method native discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1745
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    .line 1770
    :goto_8
    return-void

    .line 1749
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneSensitive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneToggleable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDiscovering() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1758
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1760
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1763
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpKnownDevices(Ljava/io/PrintWriter;)V

    .line 1764
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpAclConnectedDevices(Ljava/io/PrintWriter;)V

    .line 1765
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpHeadsetService(Ljava/io/PrintWriter;)V

    .line 1766
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpInputDeviceProfile(Ljava/io/PrintWriter;)V

    .line 1767
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpPanProfile(Ljava/io/PrintWriter;)V

    .line 1768
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V

    .line 1769
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpProfileState(Ljava/io/PrintWriter;)V

    goto/16 :goto_8
.end method

.method public enable()Z
    .registers 2

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .registers 6
    .param p1, "saveSetting"    # Z

    .prologue
    const/4 v0, 0x1

    .line 485
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_27

    if-nez v1, :cond_1c

    .line 490
    const/4 v0, 0x0

    .line 493
    :goto_1a
    monitor-exit p0

    return v0

    .line 492
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 485
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native enableNative()I
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "callback"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1263
    monitor-enter p0

    :try_start_3
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_65

    move-result v4

    if-nez v4, :cond_14

    .line 1298
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    .line 1266
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1270
    new-instance v2, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v2, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 1271
    .local v2, "service":Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_29

    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_12

    .line 1277
    :cond_29
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1280
    if-eqz p2, :cond_3d

    .line 1281
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    move v1, v3

    .line 1283
    goto :goto_12

    .line 1288
    :cond_3f
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    move-result v1

    .line 1290
    .local v1, "ret":Z
    iget-object v3, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    if-eqz p2, :cond_54

    .line 1292
    iget-object v3, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v4, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v4, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_54
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1296
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1297
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1770

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_65

    goto :goto_12

    .line 1263
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "ret":Z
    .end local v2    # "service":Landroid/server/BluetoothService$RemoteService;
    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    :try_start_7
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 338
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 340
    return-void

    .line 338
    :catchall_e
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method declared-synchronized finishDisable()V
    .registers 9

    .prologue
    .line 406
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v4, :cond_1a

    aget-object v0, v1, v2

    .line 407
    .local v0, "address":Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-virtual {v5, v0, v6, v7}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 412
    .end local v0    # "address":Ljava/lang/String;
    :cond_1a
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v4, :cond_2e

    aget-object v0, v1, v2

    .line 413
    .restart local v0    # "address":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->removeProfileState(Ljava/lang/String;)V

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 417
    .end local v0    # "address":Ljava/lang/String;
    :cond_2e
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 420
    monitor-exit p0

    return-void

    .line 406
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "len$":I
    :catchall_45
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getAdapterConnectionState()I
    .registers 2

    .prologue
    .line 2510
    iget v0, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    return v0
.end method

.method native getAdapterPathNative()Ljava/lang/String;
.end method

.method getAdapterProperties()Landroid/server/BluetoothAdapterProperties;
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    return-object v0
.end method

.method native getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 851
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v0, "Address"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 851
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "objectPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1993
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 1994
    .local v0, "adapterObjectPath":Ljava/lang/String;
    if-eqz v0, :cond_b

    if-nez p1, :cond_34

    .line 1995
    :cond_b
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  or deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :goto_33
    return-object v2

    .line 1999
    :cond_34
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 2000
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bluetoothd crashed ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2005
    :cond_63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2006
    .local v1, "address":Ljava/lang/String;
    if-eqz v1, :cond_76

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 2008
    :cond_76
    const-string v3, "BluetoothService"

    const-string v4, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method getApplicationStateChangeCallbacks()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1651
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2495
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2496
    .local v0, "data":Ljava/lang/Integer;
    return-object v0
.end method

.method public getBluetoothState()I
    .registers 4

    .prologue
    .line 352
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    return v0
.end method

.method getBluetoothStateInternal()I
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothAdapterState()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    move-result v0

    if-nez v0, :cond_14

    .line 1133
    const/high16 v0, -0x80000000

    .line 1135
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1f

    move-result v0

    goto :goto_12

    .line 1131
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native getChannelApplicationNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native getChannelFdNative(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
    .registers 4
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
    .line 2308
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2311
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothHealthProfileHandler;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2312
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getConnectedInputDevices()Ljava/util/List;
    .registers 4
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
    .line 2147
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2149
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothInputProfileHandler;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2150
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getConnectedPanDevices()Ljava/util/List;
    .registers 4
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
    .line 2068
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2070
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2071
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method getDeviceProperties()Landroid/server/BluetoothDeviceProperties;
    .registers 2

    .prologue
    .line 835
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    return-object v0
.end method

.method public getDiscoverableTimeout()I
    .registers 5

    .prologue
    .line 943
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v1, "DiscoverableTimeout"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "timeout":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 946
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 948
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2300
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2303
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2304
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 5
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
    .line 2317
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2320
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2322
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getIncomingState(Ljava/lang/String;)Landroid/util/Pair;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2682
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2683
    invoke-direct {p0}, Landroid/server/BluetoothService;->createIncomingConnectionStateFile()V

    .line 2684
    invoke-direct {p0}, Landroid/server/BluetoothService;->readIncomingConnectionState()V

    .line 2686
    :cond_e
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2140
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2142
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2143
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2163
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2165
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2166
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 5
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
    .line 2155
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2157
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2158
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method getKnownDevices()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 2409
    const/4 v0, 0x0

    .line 2410
    .local v0, "bonds":[Ljava/lang/String;
    const-string v2, "Devices"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2411
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 2412
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2414
    :cond_10
    return-object v0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 2268
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2271
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2272
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method native getMainChannelNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 857
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v0, "Name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 857
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNumberOfApplicationStateChangeTrackers()I
    .registers 2

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2013
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2015
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/4 v1, 0x0

    .line 2019
    :goto_10
    return-object v1

    .line 2018
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2019
    goto :goto_10
.end method

.method public getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2053
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2055
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2056
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getPanDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 5
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
    .line 2076
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2078
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2079
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 672
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileConnectionState(I)I
    .registers 6
    .param p1, "profile"    # I

    .prologue
    .line 2514
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iget-object v1, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2517
    .local v0, "state":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_19

    const/4 v1, 0x0

    .line 2519
    :goto_18
    return v1

    :cond_19
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_18
.end method

.method getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checkState"    # Z

    .prologue
    const/4 v0, 0x0

    .line 821
    if-eqz p2, :cond_a

    .line 822
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_12

    .line 827
    :cond_9
    :goto_9
    return-object v0

    .line 823
    :cond_a
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 827
    :cond_12
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public declared-synchronized getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 910
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    move-result v0

    if-nez v0, :cond_13

    .line 912
    const/4 v0, 0x0

    .line 914
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Alias"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_11

    .line 910
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x1000000

    .line 1211
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1212
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_27

    .line 1219
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    .line 1215
    :cond_14
    :try_start_14
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Class"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 1219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_27

    move-result v1

    goto :goto_12

    .line 1211
    .end local v0    # "val":Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1155
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 1158
    :goto_7
    return-object v1

    .line 1157
    :cond_8
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "objectPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_7
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 893
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    move-result v0

    if-nez v0, :cond_13

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Name"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_11

    .line 893
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v1, -0x1

    .line 1312
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1327
    :cond_10
    :goto_10
    return v1

    .line 1315
    :cond_11
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1316
    const/high16 v1, -0x80000000

    goto :goto_10

    .line 1319
    :cond_1a
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceProperties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1320
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1324
    :cond_2a
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1325
    .local v0, "value":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_10

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1326
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10
.end method

.method public declared-synchronized getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1232
    const/4 v0, 0x0

    .line 1234
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1230
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScanMode()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 952
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_13

    .line 954
    const/16 v2, 0x14

    .line 958
    :goto_12
    return v2

    .line 956
    :cond_13
    const-string v2, "Pairable"

    invoke-virtual {p0, v2, v5}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 957
    .local v1, "pairable":Z
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2, v5}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 958
    .local v0, "discoverable":Z
    invoke-static {v1, v0}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v2

    goto :goto_12
.end method

.method public declared-synchronized getTrustState(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1187
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1188
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_25

    .line 1196
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 1192
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Trusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 1196
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    move-result v1

    goto :goto_11

    .line 1187
    .end local v0    # "val":Ljava/lang/String;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1238
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "UUIDs"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1239
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_c

    const/4 v2, 0x0

    .line 1249
    :cond_b
    return-object v2

    .line 1241
    :cond_c
    const/4 v1, 0x0

    .line 1243
    .local v1, "uuidStrings":[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1244
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 1246
    .local v2, "uuids":[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v4, v1

    if-ge v0, v4, :cond_b

    .line 1247
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1246
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .registers 5

    .prologue
    .line 863
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v1, "UUIDs"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    .line 866
    :goto_13
    return-object v1

    :cond_14
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_13
.end method

.method handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connected"    # Z

    .prologue
    .line 2211
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2212
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    .line 2213
    monitor-exit v1

    .line 2214
    return-void

    .line 2213
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "role"    # I

    .prologue
    .line 2101
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2102
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 2103
    monitor-exit v1

    .line 2104
    return-void

    .line 2103
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "role"    # I

    .prologue
    .line 2094
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2095
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 2096
    monitor-exit v1

    .line 2097
    return-void

    .line 2096
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized initAfterA2dpRegistration()V
    .registers 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop;->getProfileProxy()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 330
    monitor-exit p0

    return-void

    .line 329
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initAfterRegistration()V
    .registers 4

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 319
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, v1, p0, v2}, Landroid/server/BluetoothAdapterStateMachine;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 320
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->start()V

    .line 321
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 323
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 325
    :cond_2c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothEventLoop()Landroid/server/BluetoothEventLoop;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 326
    monitor-exit p0

    return-void

    .line 318
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initBluetoothAfterTurningOn()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 606
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "discoverable":Ljava/lang/String;
    const-string v2, "DiscoverableTimeout"

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "timeout":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_25

    .line 609
    const-string v2, "Discoverable"

    invoke-direct {p0, v2, v3}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    .line 611
    :cond_25
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2}, Landroid/server/BluetoothBondState;->initBondState()V

    .line 612
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    .line 613
    invoke-direct {p0}, Landroid/server/BluetoothService;->getProfileProxy()V

    .line 614
    return-void
.end method

.method final isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1710
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method isApplicationStateChangeTrackerEmpty()Z
    .registers 2

    .prologue
    .line 1643
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1148
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1151
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-result v1

    monitor-exit p0

    return v1

    .line 1148
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isDiscovering()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 978
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v2, "Discovering"

    invoke-virtual {p0, v2, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "discoveringProperty":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 985
    :goto_12
    return v1

    :cond_13
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_12
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 647
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 839
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->isInCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTetheringOn()Z
    .registers 4

    .prologue
    .line 2033
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2035
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2036
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1122
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1122
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 1127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .registers 4
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
    .line 2205
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2206
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2207
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1725
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1726
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1727
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$RemoteService;

    .line 1728
    .local v3, "service":Landroid/server/BluetoothService$RemoteService;
    iget-object v4, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1729
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothCallback;
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_57

    .line 1732
    .local v0, "callback":Landroid/bluetooth/IBluetoothCallback;
    if-eqz v0, :cond_53

    .line 1734
    const/4 v4, -0x1

    :try_start_50
    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_5a
    .catchall {:try_start_50 .. :try_end_53} :catchall_57

    .line 1738
    :cond_53
    :goto_53
    :try_start_53
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_b

    .line 1725
    .end local v0    # "callback":Landroid/bluetooth/IBluetoothCallback;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v3    # "service":Landroid/server/BluetoothService$RemoteService;
    :catchall_57
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1735
    .restart local v0    # "callback":Landroid/bluetooth/IBluetoothCallback;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v3    # "service":Landroid/server/BluetoothService$RemoteService;
    :catch_5a
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5b
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_57

    goto :goto_53

    .line 1741
    .end local v0    # "callback":Landroid/bluetooth/IBluetoothCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "service":Landroid/server/BluetoothService$RemoteService;
    :cond_63
    monitor-exit p0

    return-void
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rejected"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2470
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2471
    .local v1, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_33

    .line 2472
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2473
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_2c

    .line 2474
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2b

    .line 2476
    const/16 v3, 0x67

    iput v3, v0, Landroid/os/Message;->what:I

    .line 2477
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2478
    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v0, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2487
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2b
    :goto_2b
    return v2

    .line 2482
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2c
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 2483
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_2b

    .line 2487
    .end local v0    # "msg":Landroid/os/Message;
    :cond_33
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public notifyIncomingConnection(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rejected"    # Z

    .prologue
    .line 2449
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2450
    .local v1, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_34

    .line 2451
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2452
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_2d

    .line 2453
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2b

    .line 2455
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2456
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2457
    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2464
    :cond_2b
    :goto_2b
    const/4 v2, 0x1

    .line 2466
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2c
    return v2

    .line 2461
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2d
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2462
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_2b

    .line 2466
    .end local v0    # "msg":Landroid/os/Message;
    :cond_34
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method notifyIncomingHidConnection(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2326
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2327
    .local v1, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v1, :cond_c

    .line 2328
    const/4 v2, 0x0

    .line 2333
    :goto_b
    return v2

    .line 2330
    :cond_c
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2331
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2332
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2333
    const/4 v2, 0x1

    goto :goto_b
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    const/4 v1, 0x1

    .line 651
    monitor-enter p0

    if-nez p2, :cond_18

    .line 652
    const/16 v0, 0xc

    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 653
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 654
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_2b

    .line 669
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 656
    :cond_18
    if-ne p2, v1, :cond_2e

    :try_start_1a
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 658
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2b

    goto :goto_16

    .line 651
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 660
    :cond_2e
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3d

    :try_start_31
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 662
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_16

    .line 664
    :cond_3d
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 665
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 666
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_2b

    goto :goto_16
.end method

.method onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "devicePath"    # Ljava/lang/String;
    .param p2, "channelPath"    # Ljava/lang/String;
    .param p3, "exists"    # Z

    .prologue
    .line 2285
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2286
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2288
    monitor-exit v1

    .line 2289
    return-void

    .line 2288
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method onHealthDeviceChannelConnectionError(II)V
    .registers 5
    .param p1, "channelCode"    # I
    .param p2, "newState"    # I

    .prologue
    .line 2293
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2294
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelConnectionError(II)V

    .line 2296
    monitor-exit v1

    .line 2297
    return-void

    .line 2296
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "devicePath"    # Ljava/lang/String;
    .param p2, "channelPath"    # Ljava/lang/String;

    .prologue
    .line 2277
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2278
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    monitor-exit v1

    .line 2281
    return-void

    .line 2280
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method declared-synchronized prepareBluetooth()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 502
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_13

    move-result v1

    if-nez v1, :cond_a

    .line 507
    :goto_8
    monitor-exit p0

    return v0

    .line 505
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 506
    invoke-direct {p0}, Landroid/server/BluetoothService;->updateSdpRecords()V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    .line 507
    const/4 v0, 0x1

    goto :goto_8

    .line 502
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readOutOfBandData()[B
    .registers 4

    .prologue
    .line 1072
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1076
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1072
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .registers 6
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothHealthCallback;

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2224
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2225
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native releaseChannelFdNative(Ljava/lang/String;)Z
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1099
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_2a

    move-result v2

    if-nez v2, :cond_13

    .line 1111
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 1103
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1106
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1107
    .local v0, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_11

    .line 1108
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_2a

    .line 1109
    const/4 v1, 0x1

    goto :goto_11

    .line 1099
    .end local v0    # "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1117
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    .line 1118
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 1117
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeProfileState(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2401
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2402
    .local v0, "state":Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v0, :cond_b

    .line 2406
    :goto_a
    return-void

    .line 2404
    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->quit()V

    .line 2405
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public removeServiceRecord(I)V
    .registers 6
    .param p1, "handle"    # I

    .prologue
    .line 1551
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_12

    .line 1558
    :goto_11
    return-void

    .line 1555
    :cond_12
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1556
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1557
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method

.method runBluetooth()V
    .registers 6

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/server/BluetoothService;->autoConnect()V

    .line 625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 627
    .local v1, "ident":J
    :try_start_7
    iget-object v3, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_10
    .catchall {:try_start_7 .. :try_end_c} :catchall_1c

    .line 631
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    :goto_f
    return-void

    .line 628
    :catch_10
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "BluetoothService"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 631
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public declared-synchronized sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 2576
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3a

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    .line 2609
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 2578
    :cond_b
    :try_start_b
    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2584
    :cond_17
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_3a

    goto :goto_9

    .line 2576
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2589
    :cond_3d
    :try_start_3d
    invoke-direct {p0, p2, p3, p4}, Landroid/server/BluetoothService;->updateProfileConnectionState(III)V

    .line 2591
    invoke-direct {p0, p3, p4}, Landroid/server/BluetoothService;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2592
    iput p3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 2594
    if-nez p3, :cond_51

    .line 2595
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 2598
    :cond_51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2599
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2600
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2602
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2604
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2605
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2606
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_STATE_CHANGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_3d .. :try_end_a7} :catchall_3a

    goto/16 :goto_9
.end method

.method public sendProfileStateMessage(II)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "cmd"    # I

    .prologue
    .line 2500
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2501
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2502
    if-nez p1, :cond_f

    .line 2503
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2507
    :cond_e
    :goto_e
    return-void

    .line 2504
    :cond_f
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 2505
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1716
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1717
    .local v1, "uuid":[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1718
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1719
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1720
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1721
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1722
    monitor-exit p0

    return-void

    .line 1716
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uuid":[Landroid/os/ParcelUuid;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .registers 2
    .param p1, "a2dpService"    # Landroid/server/BluetoothA2dpService;

    .prologue
    .line 2491
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 2492
    return-void
.end method

.method native setAuthorizationNative(Ljava/lang/String;ZI)Z
.end method

.method public setBluetoothTethering(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2048
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->setBluetoothTethering(Z)V

    .line 2049
    monitor-exit v1

    .line 2050
    return-void

    .line 2049
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method native setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 1139
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "reason"    # I

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 1144
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1143
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "hash"    # [B
    .param p3, "randomizer"    # [B

    .prologue
    .line 1051
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_53

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 1063
    :goto_11
    monitor-exit p0

    return v1

    .line 1055
    :cond_13
    :try_start_13
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1058
    .local v0, "value":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting out of band data for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_13 .. :try_end_51} :catchall_53

    .line 1063
    const/4 v1, 0x1

    goto :goto_11

    .line 1051
    .end local v0    # "value":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .registers 5
    .param p1, "timeout"    # I

    .prologue
    .line 761
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v0, "DiscoverableTimeout"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    .line 761
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 2170
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2173
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2174
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "num_slots"    # I

    .prologue
    .line 2023
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 2026
    .local v1, "result":Z
    if-nez v1, :cond_28

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Link Timeout to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slots failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_28
    return-void
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 721
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    .line 723
    if-nez p1, :cond_f

    .line 724
    const/4 v0, 0x0

    .line 726
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 721
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPairable()V
    .registers 4

    .prologue
    .line 808
    monitor-enter p0

    :try_start_1
    const-string v1, "Pairable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "pairableString":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 810
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "null pairableString"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_23

    .line 816
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 813
    :cond_14
    :try_start_14
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 814
    const-string v1, "Pairable"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    goto :goto_12

    .line 808
    .end local v0    # "pairableString":Ljava/lang/String;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1378
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_51

    move-result v2

    if-nez v2, :cond_13

    .line 1390
    :goto_11
    monitor-exit p0

    return v1

    .line 1382
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1383
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1384
    .local v0, "data":Ljava/lang/Integer;
    if-nez v0, :cond_54

    .line 1385
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_13 .. :try_end_50} :catchall_51

    goto :goto_11

    .line 1378
    .end local v0    # "data":Ljava/lang/Integer;
    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1390
    .restart local v0    # "data":Ljava/lang/Integer;
    :cond_54
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    move-result v1

    goto :goto_11
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "passkey"    # I

    .prologue
    const/4 v1, 0x0

    .line 1359
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_5e

    move-result v2

    if-nez v2, :cond_13

    .line 1374
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 1363
    :cond_13
    if-ltz p2, :cond_11

    const v2, 0xf423f

    if-gt p2, v2, :cond_11

    :try_start_1a
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1366
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1367
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1368
    .local v0, "data":Ljava/lang/Integer;
    if-nez v0, :cond_61

    .line 1369
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_5e

    goto :goto_11

    .line 1359
    .end local v0    # "data":Ljava/lang/Integer;
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1374
    .restart local v0    # "data":Ljava/lang/Integer;
    :cond_61
    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5e

    move-result v1

    goto :goto_11
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "pin"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1331
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_61

    move-result v4

    if-nez v4, :cond_13

    .line 1355
    :cond_11
    :goto_11
    monitor-exit p0

    return v3

    .line 1335
    :cond_13
    if-eqz p2, :cond_11

    :try_start_15
    array-length v4, p2

    if-lez v4, :cond_11

    array-length v4, p2

    const/16 v5, 0x10

    if-gt v4, v5, :cond_11

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1339
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1340
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1341
    .local v0, "data":Ljava/lang/Integer;
    if-nez v0, :cond_64

    .line 1342
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPin("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") called but no native data available, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or by bluez.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_15 .. :try_end_60} :catchall_61

    goto :goto_11

    .line 1331
    .end local v0    # "data":Ljava/lang/Integer;
    :catchall_61
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1350
    .restart local v0    # "data":Ljava/lang/Integer;
    :cond_64
    :try_start_64
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-direct {v1, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_64 .. :try_end_6b} :catch_74
    .catchall {:try_start_64 .. :try_end_6b} :catchall_61

    .line 1355
    .local v1, "pinString":Ljava/lang/String;
    :try_start_6b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_11

    .line 1351
    .end local v1    # "pinString":Ljava/lang/String;
    :catch_74
    move-exception v2

    .line 1352
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v4, "BluetoothService"

    const-string v5, "UTF8 not supported?!?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_61

    goto :goto_11
.end method

.method public declared-synchronized setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 925
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    move-result v0

    if-nez v0, :cond_13

    .line 927
    const/4 v0, 0x0

    .line 930
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alias"

    invoke-direct {p0, v0, v1, p2}, Landroid/server/BluetoothService;->setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    move-result v0

    goto :goto_11

    .line 925
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothDeviceProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .registers 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1394
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_51

    move-result v5

    if-nez v5, :cond_13

    .line 1416
    :goto_11
    monitor-exit p0

    return v4

    .line 1397
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1398
    iget-object v5, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v5}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1399
    .local v0, "data":Ljava/lang/Integer;
    if-nez v0, :cond_54

    .line 1400
    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRemoteOobData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") called but no native data available, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or by bluez.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_13 .. :try_end_50} :catchall_51

    goto :goto_11

    .line 1394
    .end local v0    # "data":Ljava/lang/Integer;
    :catchall_51
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1406
    .restart local v0    # "data":Ljava/lang/Integer;
    :cond_54
    :try_start_54
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1408
    .local v3, "val":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_6f

    .line 1410
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 1411
    .local v1, "hash":[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 1416
    .local v2, "randomizer":[B
    :goto_66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_11

    .line 1413
    .end local v1    # "hash":[B
    .end local v2    # "randomizer":[B
    :cond_6f
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 1414
    .restart local v1    # "hash":[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_51

    .restart local v2    # "randomizer":[B
    goto :goto_66
.end method

.method public declared-synchronized setScanMode(II)Z
    .registers 8
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    .line 767
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v4, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    packed-switch p1, :pswitch_data_5e

    .line 787
    :pswitch_d
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested invalid scan mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_5a

    .line 788
    const/4 v2, 0x0

    .line 793
    :goto_26
    monitor-exit p0

    return v2

    .line 774
    :pswitch_28
    const/4 v1, 0x0

    .line 775
    .local v1, "pairable":Z
    const/4 v0, 0x0

    .line 791
    .local v0, "discoverable":Z
    :goto_2a
    :try_start_2a
    const-string v2, "Discoverable"

    invoke-direct {p0, v2, v0}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 792
    const-string v2, "Pairable"

    invoke-direct {p0, v2, v1}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 793
    const/4 v2, 0x1

    goto :goto_26

    .line 778
    .end local v0    # "discoverable":Z
    .end local v1    # "pairable":Z
    :pswitch_36
    const/4 v1, 0x1

    .line 779
    .restart local v1    # "pairable":Z
    const/4 v0, 0x0

    .line 780
    .restart local v0    # "discoverable":Z
    goto :goto_2a

    .line 782
    .end local v0    # "discoverable":Z
    .end local v1    # "pairable":Z
    :pswitch_39
    const/4 v1, 0x1

    .line 783
    .restart local v1    # "pairable":Z
    const/4 v0, 0x1

    .line 784
    .restart local v0    # "discoverable":Z
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT Discoverable for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_5a

    goto :goto_2a

    .line 767
    .end local v0    # "discoverable":Z
    .end local v1    # "pairable":Z
    :catchall_5a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 772
    nop

    :pswitch_data_5e
    .packed-switch 0x14
        :pswitch_28
        :pswitch_36
        :pswitch_d
        :pswitch_39
    .end packed-switch
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1167
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1168
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_27

    .line 1175
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 1173
    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1175
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trusted"

    if-eqz p2, :cond_22

    const/4 v0, 0x1

    :cond_22
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_11

    .line 1167
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized shutoffBluetooth()V
    .registers 4

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 455
    :cond_a
    const/4 v0, 0x0

    const-string/jumbo v1, "nap"

    const-string/jumbo v2, "pan1"

    invoke-virtual {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 457
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 458
    monitor-exit p0

    return-void

    .line 454
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery()Z
    .registers 4

    .prologue
    .line 962
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 966
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->startDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 962
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized switchConnectable(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 804
    monitor-enter p0

    :try_start_1
    const-string v1, "Powered"

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    .line 805
    monitor-exit p0

    return-void

    .line 804
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .registers 5
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .prologue
    .line 2229
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2232
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2233
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method native unregisterHealthApplicationNative(Ljava/lang/String;)Z
.end method

.method declared-synchronized updateBluetoothState(Ljava/lang/String;)V
    .registers 5
    .param p1, "uuids"    # Ljava/lang/String;

    .prologue
    .line 592
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 594
    .local v0, "adapterUuids":[Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 596
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 598
    :cond_18
    monitor-exit p0

    return-void

    .line 592
    .end local v0    # "adapterUuids":[Landroid/os/ParcelUuid;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .registers 19
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1441
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateDeviceServiceChannelCache("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 1447
    .local v6, "deviceUuids":[Landroid/os/ParcelUuid;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    .local v2, "applicationUuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 1450
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_56

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/server/BluetoothService$RemoteService;

    .line 1451
    .local v11, "service":Landroid/server/BluetoothService$RemoteService;
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 1452
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1455
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "service":Landroid/server/BluetoothService$RemoteService;
    :catchall_53
    move-exception v14

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_2b .. :try_end_55} :catchall_53

    throw v14

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_56
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_53

    .line 1457
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1460
    .local v13, "uuidToChannelMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    sget-object v3, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .local v3, "arr$":[Landroid/os/ParcelUuid;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_60
    if-ge v8, v10, :cond_9e

    aget-object v12, v3, v8

    .line 1461
    .local v12, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_9b

    .line 1462
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v5

    .line 1463
    .local v5, "channel":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\tuuid(system): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    .end local v5    # "channel":I
    :cond_9b
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 1468
    .end local v12    # "uuid":Landroid/os/ParcelUuid;
    :cond_9e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_a2
    :goto_a2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 1469
    .restart local v12    # "uuid":Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_a2

    .line 1470
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v5

    .line 1471
    .restart local v5    # "channel":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\tuuid(application): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    .line 1476
    .end local v5    # "channel":I
    .end local v12    # "uuid":Landroid/os/ParcelUuid;
    :cond_e6
    monitor-enter p0

    .line 1478
    :try_start_e7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1479
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_f3
    :goto_f3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_162

    .line 1480
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/server/BluetoothService$RemoteService;

    .line 1481
    .restart local v11    # "service":Landroid/server/BluetoothService$RemoteService;
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f3

    .line 1482
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f3

    .line 1483
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1485
    .restart local v5    # "channel":I
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Making callback for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with result "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothCallback;
    :try_end_14d
    .catchall {:try_start_e7 .. :try_end_14d} :catchall_156

    .line 1488
    .local v4, "callback":Landroid/bluetooth/IBluetoothCallback;
    if-eqz v4, :cond_152

    .line 1490
    :try_start_14f
    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_152} :catch_159
    .catchall {:try_start_14f .. :try_end_152} :catchall_156

    .line 1494
    :cond_152
    :goto_152
    :try_start_152
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_f3

    .line 1501
    .end local v4    # "callback":Landroid/bluetooth/IBluetoothCallback;
    .end local v5    # "channel":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v11    # "service":Landroid/server/BluetoothService$RemoteService;
    :catchall_156
    move-exception v14

    monitor-exit p0
    :try_end_158
    .catchall {:try_start_152 .. :try_end_158} :catchall_156

    throw v14

    .line 1491
    .restart local v4    # "callback":Landroid/bluetooth/IBluetoothCallback;
    .restart local v5    # "channel":I
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v11    # "service":Landroid/server/BluetoothService$RemoteService;
    :catch_159
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    :try_start_15a
    const-string v14, "BluetoothService"

    const-string v15, ""

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_152

    .line 1500
    .end local v4    # "callback":Landroid/bluetooth/IBluetoothCallback;
    .end local v5    # "channel":I
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v11    # "service":Landroid/server/BluetoothService$RemoteService;
    :cond_162
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    monitor-exit p0
    :try_end_16c
    .catchall {:try_start_15a .. :try_end_16c} :catchall_156

    .line 1502
    return-void
.end method

.method updateRemoteDevicePropertiesCache(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 847
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    .line 848
    return-void
.end method

.method public writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V
    .registers 14
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2745
    .local p2, "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v8

    .line 2746
    :try_start_3
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    invoke-direct {p0}, Landroid/server/BluetoothService;->truncateIncomingConnectionFile()V

    .line 2749
    const/4 v3, 0x0

    .line 2750
    .local v3, "out":Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_bf

    .line 2752
    .local v6, "value":Ljava/lang/StringBuilder;
    :try_start_11
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1e} :catch_cc
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_95
    .catchall {:try_start_11 .. :try_end_1e} :catchall_b8

    .line 2753
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1e
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2754
    .local v0, "devAddress":Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2755
    .local v5, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2759
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_60} :catch_c9
    .catchall {:try_start_1e .. :try_end_60} :catchall_c6

    goto :goto_28

    .line 2763
    .end local v0    # "devAddress":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_61
    move-exception v1

    move-object v3, v4

    .line 2764
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_63
    :try_start_63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_b8

    .line 2768
    if-eqz v3, :cond_82

    .line 2770
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_c2
    .catchall {:try_start_7f .. :try_end_82} :catchall_bf

    .line 2776
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_82
    :goto_82
    :try_start_82
    monitor-exit v8
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_bf

    .line 2777
    return-void

    .line 2762
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_84
    :try_start_84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_8b} :catch_61
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_c9
    .catchall {:try_start_84 .. :try_end_8b} :catchall_c6

    .line 2768
    if-eqz v4, :cond_ce

    .line 2770
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_92
    .catchall {:try_start_8d .. :try_end_90} :catchall_bf

    move-object v3, v4

    .line 2773
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_82

    .line 2771
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_92
    move-exception v7

    move-object v3, v4

    .line 2773
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_82

    .line 2765
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_95
    move-exception v1

    .line 2766
    .local v1, "e":Ljava/io/IOException;
    :goto_96
    :try_start_96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_96 .. :try_end_b0} :catchall_b8

    .line 2768
    if-eqz v3, :cond_82

    .line 2770
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_bf

    goto :goto_82

    .line 2771
    :catch_b6
    move-exception v7

    goto :goto_82

    .line 2768
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_b8
    move-exception v7

    :goto_b9
    if-eqz v3, :cond_be

    .line 2770
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c4
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    .line 2773
    :cond_be
    :goto_be
    :try_start_be
    throw v7

    .line 2776
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .end local v6    # "value":Ljava/lang/StringBuilder;
    :catchall_bf
    move-exception v7

    monitor-exit v8
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_bf

    throw v7

    .line 2771
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "value":Ljava/lang/StringBuilder;
    :catch_c2
    move-exception v7

    goto :goto_82

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_c4
    move-exception v9

    goto :goto_be

    .line 2768
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_c6
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_b9

    .line 2765
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_c9
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_96

    .line 2763
    :catch_cc
    move-exception v1

    goto :goto_63

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_ce
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_82
.end method
