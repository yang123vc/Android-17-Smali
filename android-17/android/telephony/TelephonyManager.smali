.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1d

    .line 66
    sput-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 71
    :goto_f
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 74
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_1c
    return-void

    .line 68
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1d
    sput-object p1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_f
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 1009
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkClass(I)I
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 489
    packed-switch p0, :pswitch_data_c

    .line 509
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 495
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 505
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 507
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 489
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 526
    packed-switch p0, :pswitch_data_34

    .line 558
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 528
    :pswitch_6
    const-string v0, "GPRS"

    goto :goto_5

    .line 530
    :pswitch_9
    const-string v0, "EDGE"

    goto :goto_5

    .line 532
    :pswitch_c
    const-string v0, "UMTS"

    goto :goto_5

    .line 534
    :pswitch_f
    const-string v0, "HSDPA"

    goto :goto_5

    .line 536
    :pswitch_12
    const-string v0, "HSUPA"

    goto :goto_5

    .line 538
    :pswitch_15
    const-string v0, "HSPA"

    goto :goto_5

    .line 540
    :pswitch_18
    const-string v0, "CDMA"

    goto :goto_5

    .line 542
    :pswitch_1b
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_5

    .line 544
    :pswitch_1e
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_5

    .line 546
    :pswitch_21
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_5

    .line 548
    :pswitch_24
    const-string v0, "CDMA - 1xRTT"

    goto :goto_5

    .line 550
    :pswitch_27
    const-string v0, "LTE"

    goto :goto_5

    .line 552
    :pswitch_2a
    const-string v0, "CDMA - eHRPD"

    goto :goto_5

    .line 554
    :pswitch_2d
    const-string v0, "iDEN"

    goto :goto_5

    .line 556
    :pswitch_30
    const-string v0, "HSPA+"

    goto :goto_5

    .line 526
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_24
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_2d
        :pswitch_21
        :pswitch_27
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 345
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 346
    .local v0, "mode":I
    if-ne v0, v2, :cond_c

    .line 347
    const/4 v1, 0x0

    .line 348
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method private getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 335
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 338
    .local v0, "type":I
    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 907
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 254
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 258
    :goto_7
    return-void

    .line 256
    :catch_8
    move-exception v0

    goto :goto_7

    .line 255
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 237
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 241
    :goto_7
    return-void

    .line 239
    :catch_8
    move-exception v0

    goto :goto_7

    .line 238
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 927
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 933
    :goto_9
    return v1

    .line 928
    :catch_a
    move-exception v0

    .line 930
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 931
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 933
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1060
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1065
    :goto_9
    return v1

    .line 1061
    :catch_a
    move-exception v0

    .line 1063
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1064
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1065
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1078
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1083
    :goto_9
    return v1

    .line 1079
    :catch_a
    move-exception v0

    .line 1081
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1082
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1083
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1094
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1099
    :goto_9
    return-object v1

    .line 1095
    :catch_a
    move-exception v0

    .line 1097
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1098
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1099
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 214
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 216
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_18

    move-result v4

    if-eqz v4, :cond_14

    move-object v1, v3

    .line 222
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :cond_14
    :goto_14
    return-object v1

    .line 219
    :catch_15
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 220
    goto :goto_14

    .line 221
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_18
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 222
    goto :goto_14
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 811
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 816
    :goto_9
    return-object v1

    .line 812
    :catch_a
    move-exception v0

    .line 813
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 814
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 816
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCurrentPhoneType()I
    .registers 4

    .prologue
    .line 300
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 301
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 302
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 314
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 305
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_16

    move-result v2

    goto :goto_a

    .line 307
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    .line 310
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 311
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 963
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 969
    :goto_9
    return v1

    .line 964
    :catch_a
    move-exception v0

    .line 966
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 967
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 969
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 999
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1004
    :goto_9
    return v1

    .line 1000
    :catch_a
    move-exception v0

    .line 1002
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1003
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1004
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 196
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 200
    :goto_9
    return-object v1

    .line 197
    :catch_a
    move-exception v0

    .line 198
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 199
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 179
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 183
    :goto_9
    return-object v1

    .line 180
    :catch_a
    move-exception v0

    .line 181
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 182
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimDomain()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 879
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 884
    :goto_9
    return-object v1

    .line 880
    :catch_a
    move-exception v0

    .line 881
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 882
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 884
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpi()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 863
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 868
    :goto_9
    return-object v1

    .line 864
    :catch_a
    move-exception v0

    .line 865
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 866
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 868
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 896
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 901
    :goto_9
    return-object v1

    .line 897
    :catch_a
    move-exception v0

    .line 898
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 899
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 901
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 755
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 760
    :goto_9
    return-object v1

    .line 756
    :catch_a
    move-exception v0

    .line 757
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 758
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 760
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 735
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 740
    :goto_9
    return-object v1

    .line 736
    :catch_a
    move-exception v0

    .line 737
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 738
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 740
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLteOnCdmaMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 692
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 698
    :goto_9
    return v1

    .line 693
    :catch_a
    move-exception v0

    .line 695
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 696
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 698
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 775
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 780
    :goto_9
    return-object v1

    .line 776
    :catch_a
    move-exception v0

    .line 777
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 778
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 780
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 270
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 274
    :goto_9
    return-object v1

    .line 271
    :catch_a
    move-exception v0

    .line 272
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 273
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 274
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 397
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 457
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 458
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 459
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v2

    .line 469
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    return v2

    .line 464
    :catch_c
    move-exception v0

    .line 466
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_b

    .line 467
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 469
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .registers 2

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_7
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 659
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 641
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 652
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 671
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 676
    :goto_9
    return-object v1

    .line 672
    :catch_a
    move-exception v0

    .line 673
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 674
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 676
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSimState()I
    .registers 3

    .prologue
    .line 611
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 613
    const/4 v1, 0x1

    .line 628
    :goto_f
    return v1

    .line 615
    :cond_10
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 616
    const/4 v1, 0x2

    goto :goto_f

    .line 618
    :cond_1a
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 619
    const/4 v1, 0x3

    goto :goto_f

    .line 621
    :cond_24
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 622
    const/4 v1, 0x4

    goto :goto_f

    .line 624
    :cond_2e
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 625
    const/4 v1, 0x5

    goto :goto_f

    .line 628
    :cond_38
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 717
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 722
    :goto_9
    return-object v1

    .line 718
    :catch_a
    move-exception v0

    .line 719
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 720
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 847
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 852
    :goto_9
    return-object v1

    .line 848
    :catch_a
    move-exception v0

    .line 849
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 850
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 852
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 792
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 797
    :goto_9
    return-object v1

    .line 793
    :catch_a
    move-exception v0

    .line 794
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 795
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 797
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 829
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 834
    :goto_9
    return v1

    .line 830
    :catch_a
    move-exception v0

    .line 831
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 832
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 834
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 589
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 595
    :goto_9
    return v1

    .line 590
    :catch_a
    move-exception v0

    .line 592
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 593
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 595
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isNetworkRoaming()Z
    .registers 3

    .prologue
    .line 385
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .registers 3

    .prologue
    .line 1137
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1138
    :goto_5
    return v0

    :cond_6
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public isVoiceCapable()Z
    .registers 3

    .prologue
    .line 1120
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1121
    :goto_5
    return v0

    :cond_6
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1042
    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_21

    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_a
    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1045
    .local v0, "notifyNow":Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_20} :catch_26

    .line 1051
    .end local v0    # "notifyNow":Ljava/lang/Boolean;
    :goto_20
    return-void

    .line 1042
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_21
    const-string v1, "<unknown>"

    goto :goto_a

    .line 1044
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_24
    const/4 v2, 0x0

    goto :goto_11

    .line 1048
    :catch_26
    move-exception v2

    goto :goto_20

    .line 1046
    :catch_28
    move-exception v2

    goto :goto_20
.end method
