.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$MetadataEditor;
    }
.end annotation


# static fields
.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field private static final METADATA_KEYS_TYPE_LONG:[I

.field private static final METADATA_KEYS_TYPE_STRING:[I

.field private static final MSG_NEW_CURRENT_CLIENT_GEN:I = 0x6

.field private static final MSG_NEW_INTERNAL_CLIENT_GEN:I = 0x5

.field private static final MSG_PLUG_DISPLAY:I = 0x7

.field private static final MSG_REQUEST_ARTWORK:I = 0x4

.field private static final MSG_REQUEST_METADATA:I = 0x2

.field private static final MSG_REQUEST_PLAYBACK_STATE:I = 0x1

.field private static final MSG_REQUEST_TRANSPORTCONTROL:I = 0x3

.field private static final MSG_UNPLUG_DISPLAY:I = 0x8

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"


# instance fields
.field private final ARTWORK_DEFAULT_SIZE:I

.field private final ARTWORK_INVALID_SIZE:I

.field private mArtwork:Landroid/graphics/Bitmap;

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private mIRCC:Landroid/media/IRemoteControlClient;

.field private mInternalClientGenId:I

.field private mMetadata:Landroid/os/Bundle;

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mTransportControlFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 270
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I

    .line 282
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I

    return-void

    .line 270
    :array_12
    .array-data 4
        0x1
        0xd
        0x7
        0x2
        0x3
        0xf
        0x4
        0x5
        0x6
        0x7
        0xb
    .end array-data

    .line 282
    :array_2c
    .array-data 4
        0x0
        0xe
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x100

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 553
    iput v5, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 558
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 567
    iput v3, p0, Landroid/media/RemoteControlClient;->ARTWORK_DEFAULT_SIZE:I

    .line 568
    iput v4, p0, Landroid/media/RemoteControlClient;->ARTWORK_INVALID_SIZE:I

    .line 569
    iput v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    .line 570
    iput v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    .line 575
    iput v5, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 580
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 585
    iput v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 592
    const/4 v1, -0x2

    iput v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 624
    new-instance v1, Landroid/media/RemoteControlClient$1;

    invoke-direct {v1, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 236
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 239
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_41

    .line 240
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 247
    :goto_40
    return-void

    .line 241
    :cond_41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 242
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_40

    .line 244
    :cond_4f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 245
    const-string v1, "RemoteControlClient"

    const-string v2, "RemoteControlClient() couldn\'t find main application thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .registers 8
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x100

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 553
    iput v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 567
    iput v2, p0, Landroid/media/RemoteControlClient;->ARTWORK_DEFAULT_SIZE:I

    .line 568
    iput v3, p0, Landroid/media/RemoteControlClient;->ARTWORK_INVALID_SIZE:I

    .line 569
    iput v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    .line 570
    iput v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    .line 575
    iput v4, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 585
    iput v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 592
    const/4 v0, -0x2

    iput v0, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 624
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 265
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 267
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 268
    return-void
.end method

.method static synthetic access$000()[I
    .registers 1

    .prologue
    .line 60
    sget-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I

    return-object v0
.end method

.method static synthetic access$100(I[I)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # [I

    .prologue
    .line 60
    invoke-static {p0, p1}, Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlFlags_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/RemoteControlClient;Ljava/lang/Integer;II)V
    .registers 4
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onNewInternalClientGen(Ljava/lang/Integer;II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteControlClient;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$200()[I
    .registers 1

    .prologue
    .line 60
    sget-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/RemoteControlClient;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    iget v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/RemoteControlClient;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    iget v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    return v0
.end method

.method static synthetic access$500(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 60
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock()V

    return-void
.end method

.method private detachFromDisplay_syncCacheLock()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 735
    iput v1, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    .line 736
    iput v1, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    .line 737
    return-void
.end method

.method private onNewCurrentClientGen(I)V
    .registers 4
    .param p1, "clientGeneration"    # I

    .prologue
    .line 817
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 818
    :try_start_3
    iput p1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 819
    monitor-exit v1

    .line 820
    return-void

    .line 819
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private onNewInternalClientGen(Ljava/lang/Integer;II)V
    .registers 6
    .param p1, "clientGeneration"    # Ljava/lang/Integer;
    .param p2, "artWidth"    # I
    .param p3, "artHeight"    # I

    .prologue
    .line 805
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 808
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 809
    if-lez p2, :cond_f

    .line 810
    iput p2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    .line 811
    iput p3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    .line 813
    :cond_f
    monitor-exit v1

    .line 814
    return-void

    .line 813
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private onPlugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 823
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_3
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 825
    monitor-exit v1

    .line 826
    return-void

    .line 825
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 829
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_3
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v0}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 832
    const/16 v0, 0x100

    iput v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    .line 833
    const/16 v0, 0x100

    iput v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    .line 835
    :cond_22
    monitor-exit v1

    .line 836
    return-void

    .line 835
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 849
    if-eqz p1, :cond_5f

    .line 850
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 851
    .local v8, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 852
    .local v2, "height":I
    move/from16 v0, p2

    if-gt v8, v0, :cond_12

    move/from16 v0, p3

    if-le v2, v0, :cond_5f

    .line 853
    :cond_12
    move/from16 v0, p2

    int-to-float v9, v0

    int-to-float v10, v8

    div-float/2addr v9, v10

    move/from16 v0, p3

    int-to-float v10, v0

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 854
    .local v7, "scale":F
    int-to-float v9, v8

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 855
    .local v4, "newWidth":I
    int-to-float v9, v2

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 856
    .local v3, "newHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v4, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 857
    .local v5, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 858
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 859
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 860
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 861
    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 863
    move-object/from16 p1, v5

    .line 866
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "newHeight":I
    .end local v4    # "newWidth":I
    .end local v5    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "scale":F
    .end local v8    # "width":I
    :cond_5f
    return-object p1
.end method

.method private sendArtwork_syncCacheLock()V
    .registers 5

    .prologue
    .line 775
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_1f

    .line 779
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    iget v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    invoke-direct {p0, v1, v2, v3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    .line 781
    :try_start_16
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3}, Landroid/media/IRemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 787
    :cond_1f
    :goto_1f
    return-void

    .line 782
    :catch_20
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendArtwork(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_1f
.end method

.method private sendMetadataWithArtwork_syncCacheLock()V
    .registers 6

    .prologue
    .line 790
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_21

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_21

    .line 794
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    iget v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    invoke-direct {p0, v1, v2, v3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    .line 796
    :try_start_16
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 802
    :cond_21
    :goto_21
    return-void

    .line 797
    :catch_22
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setAllMetadata(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_21
.end method

.method private sendMetadata_syncCacheLock()V
    .registers 5

    .prologue
    .line 752
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_13

    .line 754
    :try_start_a
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 760
    :cond_13
    :goto_13
    return-void

    .line 755
    :catch_14
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendPlaybackState(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_13
.end method

.method private sendPlaybackState_syncCacheLock()V
    .registers 7

    .prologue
    .line 740
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_15

    .line 742
    :try_start_a
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 749
    :cond_15
    :goto_15
    return-void

    .line 744
    :catch_16
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setPlaybackState(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_15
.end method

.method private sendTransportControlFlags_syncCacheLock()V
    .registers 5

    .prologue
    .line 763
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_13

    .line 765
    :try_start_a
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    invoke-interface {v1, v2, v3}, Landroid/media/IRemoteControlDisplay;->setTransportControlFlags(II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 772
    :cond_13
    :goto_13
    return-void

    .line 767
    :catch_14
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendTransportControlFlags(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_13
.end method

.method private static validTypeForKey(I[I)Z
    .registers 5
    .param p0, "key"    # I
    .param p1, "validKeys"    # [I

    .prologue
    .line 878
    const/4 v1, 0x0

    .line 879
    .local v1, "i":I
    :goto_1
    :try_start_1
    aget v2, p1, v1
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_3} :catch_a

    if-ne p0, v2, :cond_7

    .line 880
    const/4 v2, 0x1

    .line 884
    :goto_6
    return v2

    .line 878
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 883
    :catch_a
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_6
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 7
    .param p1, "startEmpty"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 481
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-direct {v0, p0, v4}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V

    .line 482
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_18

    .line 483
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 484
    iput-object v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 485
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 486
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 493
    :goto_17
    return-object v0

    .line 488
    :cond_18
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 489
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 490
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 491
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    goto :goto_17
.end method

.method public getIRemoteControlClient()Landroid/media/IRemoteControlClient;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public setPlaybackState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 510
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_3
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-eq v0, p1, :cond_12

    .line 513
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 518
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V

    .line 520
    :cond_12
    monitor-exit v1

    .line 521
    return-void

    .line 520
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public setTransportControlFlags(I)V
    .registers 4
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 536
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    :try_start_3
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 541
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlFlags_syncCacheLock()V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
