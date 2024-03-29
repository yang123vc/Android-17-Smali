.class Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final LOG:Z

.field private static final MSG_DOCK_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mPreviousDockState:I

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/PowerManagerService;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 53
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 130
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 64
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 66
    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v0}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method private final init()V
    .registers 7

    .prologue
    const/16 v4, 0x400

    .line 102
    new-array v0, v4, [C

    .line 105
    .local v0, "buffer":[C
    :try_start_4
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 107
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 108
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_35

    .line 114
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_2b
    return-void

    .line 109
    :catch_2c
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, "This kernel does not have dock station support"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 111
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_35
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method private final update()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v5, 0x1

    .line 71
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 72
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_26
    monitor-enter p0

    .line 77
    :try_start_27
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "newState":I
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v2, :cond_5f

    .line 79
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 80
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 81
    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v2, :cond_5f

    .line 85
    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-eq v2, v5, :cond_4d

    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4d

    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_51

    :cond_4d
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v2, :cond_5c

    .line 89
    :cond_51
    iget-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/PowerManagerService;->userActivityWithForce(JZZ)V

    .line 92
    :cond_5c
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_5f} :catch_61
    .catchall {:try_start_27 .. :try_end_5f} :catchall_7b

    .line 98
    .end local v1    # "newState":I
    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit p0

    .line 99
    return-void

    .line 95
    :catch_61
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse switch state from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 98
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_7b
    move-exception v2

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method systemReady()V
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    .line 119
    :try_start_1
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_8

    .line 120
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V

    .line 122
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
