.class public abstract Landroid/support/v7/media/MediaRouteProviderService;
.super Landroid/app/Service;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;,
        Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;,
        Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;,
        Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
    }
.end annotation


# static fields
.field static final CLIENT_DATA_ROUTE_ID:Ljava/lang/String; = "routeId"

.field static final CLIENT_DATA_VOLUME:Ljava/lang/String; = "volume"

.field static final CLIENT_MSG_CREATE_ROUTE_CONTROLLER:I = 0x3

.field static final CLIENT_MSG_REGISTER:I = 0x1

.field static final CLIENT_MSG_RELEASE_ROUTE_CONTROLLER:I = 0x4

.field static final CLIENT_MSG_ROUTE_CONTROL_REQUEST:I = 0x9

.field static final CLIENT_MSG_SELECT_ROUTE:I = 0x5

.field static final CLIENT_MSG_SET_DISCOVERY_REQUEST:I = 0xa

.field static final CLIENT_MSG_SET_ROUTE_VOLUME:I = 0x7

.field static final CLIENT_MSG_UNREGISTER:I = 0x2

.field static final CLIENT_MSG_UNSELECT_ROUTE:I = 0x6

.field static final CLIENT_MSG_UPDATE_ROUTE_VOLUME:I = 0x8

.field static final CLIENT_VERSION_1:I = 0x1

.field static final CLIENT_VERSION_CURRENT:I = 0x1

.field private static final DEBUG:Z

.field private static final PRIVATE_MSG_CLIENT_DIED:I = 0x1

.field static final SERVICE_DATA_ERROR:Ljava/lang/String; = "error"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRouteProviderService"

.field static final SERVICE_MSG_CONTROL_REQUEST_FAILED:I = 0x4

.field static final SERVICE_MSG_CONTROL_REQUEST_SUCCEEDED:I = 0x3

.field static final SERVICE_MSG_DESCRIPTOR_CHANGED:I = 0x5

.field static final SERVICE_MSG_GENERIC_FAILURE:I = 0x0

.field static final SERVICE_MSG_GENERIC_SUCCESS:I = 0x1

.field static final SERVICE_MSG_REGISTERED:I = 0x2

.field static final SERVICE_VERSION_1:I = 0x1

.field static final SERVICE_VERSION_CURRENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaRouteProviderSrv"


# instance fields
.field private final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field private final mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

.field private mProvider:Landroid/support/v7/media/MediaRouteProvider;

.field private final mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

.field private final mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

.field private final mReceiveMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    const-string v0, "MediaRouteProviderSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    .line 241
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    .line 242
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    .line 243
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    .line 244
    return-void
.end method

.method static synthetic access$1000(Landroid/os/Messenger;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/os/Messenger;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/os/Messenger;I)V
    .registers 2
    .param p0, "x0"    # Landroid/os/Messenger;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)Z
    .registers 4
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILjava/lang/String;)Z
    .registers 6
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .registers 6
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .registers 6
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .registers 6
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)I
    .registers 3
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "x0"    # Landroid/os/Messenger;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-static/range {p0 .. p5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->onBinderDied(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/media/MediaRouteProviderService;)Landroid/support/v7/media/MediaRouteProvider;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/media/MediaRouteProviderService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProviderService;->updateCompositeDiscoveryRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/support/v7/media/MediaRouteProviderService;)Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    return-object v0
.end method

.method private findClient(Landroid/os/Messenger;)I
    .registers 6
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 574
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 575
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 576
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 577
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->hasMessenger(Landroid/os/Messenger;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 581
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .end local v2    # "i":I
    :goto_17
    return v2

    .line 575
    .restart local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .restart local v2    # "i":I
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 581
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_1b
    const/4 v2, -0x1

    goto :goto_17
.end method

.method private getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .registers 4
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 569
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 570
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private static getClientId(Landroid/os/Messenger;)Ljava/lang/String;
    .registers 3
    .param p0, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isValidRemoteMessenger(Landroid/os/Messenger;)Z
    .registers 4
    .param p0, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v1, 0x0

    .line 628
    if-eqz p0, :cond_a

    :try_start_3
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_b

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    .line 632
    :cond_a
    :goto_a
    return v1

    .line 629
    :catch_b
    move-exception v0

    .line 632
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_a
.end method

.method private onBinderDied(Landroid/os/Messenger;)V
    .registers 7
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v1

    .line 331
    .local v1, "index":I
    if-ltz v1, :cond_2d

    .line 332
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 333
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_2a

    .line 334
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Binder died"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2a
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 338
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_2d
    return-void
.end method

.method private onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z
    .registers 9
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "routeId"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 343
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_41

    .line 344
    invoke-virtual {v0, p4, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->createRouteController(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 345
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 346
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Route controller created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", controllerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", routeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_3c
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 350
    const/4 v1, 0x1

    .line 353
    :goto_40
    return v1

    :cond_41
    const/4 v1, 0x0

    goto :goto_40
.end method

.method private onRegisterClient(Landroid/os/Messenger;II)Z
    .registers 13
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "version"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 293
    if-lt p3, v3, :cond_51

    .line 294
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v8

    .line 295
    .local v8, "index":I
    if-gez v8, :cond_51

    .line 296
    new-instance v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-direct {v6, p0, p1, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)V

    .line 297
    .local v6, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->register()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 298
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 300
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Registered, version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_3a
    if-eqz p2, :cond_4e

    .line 303
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v7

    .line 304
    .local v7, "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    const/4 v1, 0x2

    if-eqz v7, :cond_4f

    invoke-virtual {v7}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_49
    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 312
    .end local v6    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .end local v7    # "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .end local v8    # "index":I
    :cond_4e
    :goto_4e
    return v3

    .restart local v6    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .restart local v7    # "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .restart local v8    # "index":I
    :cond_4f
    move-object v4, v5

    .line 304
    goto :goto_49

    .line 312
    .end local v6    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .end local v7    # "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .end local v8    # "index":I
    :cond_51
    const/4 v3, 0x0

    goto :goto_4e
.end method

.method private onReleaseRouteController(Landroid/os/Messenger;II)Z
    .registers 8
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I

    .prologue
    .line 358
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 359
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_37

    .line 360
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->releaseRouteController(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 361
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_32

    .line 362
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Route controller released"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", controllerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_32
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 366
    const/4 v1, 0x1

    .line 369
    :goto_36
    return v1

    :cond_37
    const/4 v1, 0x0

    goto :goto_36
.end method

.method private onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .registers 13
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v2

    .line 451
    .local v2, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v2, :cond_51

    .line 452
    invoke-virtual {v2, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v7

    .line 454
    .local v7, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v7, :cond_51

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    if-eqz p2, :cond_19

    .line 457
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$1;

    .end local v0    # "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$1;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;ILandroid/content/Intent;Landroid/os/Messenger;I)V

    .line 494
    .restart local v0    # "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    :cond_19
    invoke-virtual {v7, p4, v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 495
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_4f

    .line 496
    const-string v1, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route control request delivered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_4f
    const/4 v1, 0x1

    .line 503
    .end local v0    # "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    .end local v7    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_50
    return v1

    :cond_51
    const/4 v1, 0x0

    goto :goto_50
.end method

.method private onSelectRoute(Landroid/os/Messenger;II)Z
    .registers 9
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I

    .prologue
    .line 374
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 375
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_3a

    .line 376
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 378
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_3a

    .line 379
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 380
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_35

    .line 381
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_35
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 385
    const/4 v2, 0x1

    .line 388
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_39
    return v2

    :cond_3a
    const/4 v2, 0x0

    goto :goto_39
.end method

.method private onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z
    .registers 9
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "request"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v1

    .line 509
    .local v1, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v1, :cond_45

    .line 510
    invoke-virtual {v1, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result v0

    .line 511
    .local v0, "actuallyChanged":Z
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_40

    .line 512
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Set discovery request, request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actuallyChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", compositeDiscoveryRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_40
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 517
    const/4 v2, 0x1

    .line 519
    .end local v0    # "actuallyChanged":Z
    :goto_44
    return v2

    :cond_45
    const/4 v2, 0x0

    goto :goto_44
.end method

.method private onSetRouteVolume(Landroid/os/Messenger;III)Z
    .registers 10
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "volume"    # I

    .prologue
    .line 412
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 413
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_44

    .line 414
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 416
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_44

    .line 417
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 418
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_3f

    .line 419
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route volume changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_3f
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 423
    const/4 v2, 0x1

    .line 426
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_43
    return v2

    :cond_44
    const/4 v2, 0x0

    goto :goto_43
.end method

.method private onUnregisterClient(Landroid/os/Messenger;I)Z
    .registers 8
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I

    .prologue
    .line 316
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v1

    .line 317
    .local v1, "index":I
    if-ltz v1, :cond_32

    .line 318
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 319
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_2a

    .line 320
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2a
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 323
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 324
    const/4 v2, 0x1

    .line 326
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :goto_31
    return v2

    :cond_32
    const/4 v2, 0x0

    goto :goto_31
.end method

.method private onUnselectRoute(Landroid/os/Messenger;II)Z
    .registers 9
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I

    .prologue
    .line 393
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 394
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_3a

    .line 395
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 397
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_3a

    .line 398
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 399
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_35

    .line 400
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route unselected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_35
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 404
    const/4 v2, 0x1

    .line 407
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_39
    return v2

    :cond_3a
    const/4 v2, 0x0

    goto :goto_39
.end method

.method private onUpdateRouteVolume(Landroid/os/Messenger;III)Z
    .registers 10
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "delta"    # I

    .prologue
    .line 431
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 432
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_44

    .line 433
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 435
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_44

    .line 436
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 437
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_3f

    .line 438
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route volume updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_3f
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 442
    const/4 v2, 0x1

    .line 445
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_43
    return v2

    :cond_44
    const/4 v2, 0x0

    goto :goto_43
.end method

.method private sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .registers 11
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 523
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 524
    .local v4, "descriptorBundle":Landroid/os/Bundle;
    :goto_8
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 525
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f
    if-ge v8, v7, :cond_45

    .line 526
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 527
    .local v6, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    iget-object v0, v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mMessenger:Landroid/os/Messenger;

    const/4 v1, 0x5

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 529
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 530
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": Sent descriptor change event, descriptor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .end local v4    # "descriptorBundle":Landroid/os/Bundle;
    .end local v6    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_43
    move-object v4, v5

    .line 523
    goto :goto_8

    .line 533
    .restart local v4    # "descriptorBundle":Landroid/os/Bundle;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    :cond_45
    return-void
.end method

.method private static sendGenericFailure(Landroid/os/Messenger;I)V
    .registers 8
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "requestId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 585
    if-eqz p1, :cond_b

    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v5, v4

    .line 586
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 588
    :cond_b
    return-void
.end method

.method private static sendGenericSuccess(Landroid/os/Messenger;I)V
    .registers 8
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "requestId"    # I

    .prologue
    const/4 v4, 0x0

    .line 591
    if-eqz p1, :cond_b

    .line 592
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 594
    :cond_b
    return-void
.end method

.method private static sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 11
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "what"    # I
    .param p2, "requestId"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "data"    # Landroid/os/Bundle;

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 599
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 600
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 601
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 602
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 603
    invoke-virtual {v1, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 605
    :try_start_f
    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/DeadObjectException; {:try_start_f .. :try_end_12} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 611
    :goto_12
    return-void

    .line 608
    :catch_13
    move-exception v0

    .line 609
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not send message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 606
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_31
    move-exception v2

    goto :goto_12
.end method

.method private updateCompositeDiscoveryRequest()Z
    .registers 8

    .prologue
    .line 536
    const/4 v1, 0x0

    .line 537
    .local v1, "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    const/4 v5, 0x0

    .line 538
    .local v5, "selectorBuilder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    const/4 v0, 0x0

    .line 539
    .local v0, "activeScan":Z
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 540
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_46

    .line 541
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    iget-object v4, v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 542
    .local v4, "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 544
    :cond_28
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v6

    or-int/2addr v0, v6

    .line 545
    if-nez v1, :cond_33

    .line 546
    move-object v1, v4

    .line 540
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 548
    :cond_33
    if-nez v5, :cond_3e

    .line 549
    new-instance v5, Landroid/support/v7/media/MediaRouteSelector$Builder;

    .end local v5    # "selectorBuilder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 551
    .restart local v5    # "selectorBuilder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    :cond_3e
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    goto :goto_30

    .line 555
    .end local v4    # "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :cond_46
    if-eqz v5, :cond_51

    .line 556
    new-instance v1, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .end local v1    # "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;-><init>(Landroid/support/v7/media/MediaRouteSelector;Z)V

    .line 558
    .restart local v1    # "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :cond_51
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eq v6, v1, :cond_6a

    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v6, :cond_61

    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v6, v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 561
    :cond_61
    iput-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 562
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v6, v1}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 563
    const/4 v6, 0x1

    .line 565
    :goto_69
    return v6

    :cond_6a
    const/4 v6, 0x0

    goto :goto_69
.end method


# virtual methods
.method public getMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.MediaRouteProviderService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 269
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-nez v2, :cond_5e

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    .line 271
    .local v0, "provider":Landroid/support/v7/media/MediaRouteProvider;
    if-eqz v0, :cond_5e

    .line 272
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "providerPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 274
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  Service package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_55
    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    .line 282
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 285
    .end local v0    # "provider":Landroid/support/v7/media/MediaRouteProvider;
    .end local v1    # "providerPackage":Ljava/lang/String;
    :cond_5e
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-eqz v2, :cond_69

    .line 286
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 289
    :goto_68
    return-object v2

    :cond_69
    const/4 v2, 0x0

    goto :goto_68
.end method

.method public abstract onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
.end method
