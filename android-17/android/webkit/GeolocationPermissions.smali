.class public final Landroid/webkit/GeolocationPermissions;
.super Ljava/lang/Object;
.source "GeolocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/GeolocationPermissions$Callback;
    }
.end annotation


# static fields
.field static final ALLOW:I = 0x3

.field private static final ALLOWED:Ljava/lang/String; = "allowed"

.field private static final CALLBACK:Ljava/lang/String; = "callback"

.field static final CLEAR:I = 0x2

.field static final CLEAR_ALL:I = 0x4

.field static final GET_ALLOWED:I = 0x1

.field static final GET_ORIGINS:I = 0x0

.field private static final ORIGIN:Ljava/lang/String; = "origin"

.field private static final ORIGINS:Ljava/lang/String; = "origins"

.field static final RETURN_ALLOWED:I = 0x1

.field static final RETURN_ORIGINS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "geolocationPermissions"

.field private static sInstance:Landroid/webkit/GeolocationPermissions;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQueuedMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .registers 1

    .prologue
    .line 47
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/GeolocationPermissions;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/webkit/GeolocationPermissions;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/GeolocationPermissions;->postUIMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/webkit/GeolocationPermissions;->nativeGetAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/webkit/GeolocationPermissions;->nativeClear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/webkit/GeolocationPermissions;->nativeAllow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()V
    .registers 0

    .prologue
    .line 47
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->nativeClearAll()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/GeolocationPermissions;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Landroid/webkit/GeolocationPermissions;->sInstance:Landroid/webkit/GeolocationPermissions;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Landroid/webkit/GeolocationPermissions;

    invoke-direct {v0}, Landroid/webkit/GeolocationPermissions;-><init>()V

    sput-object v0, Landroid/webkit/GeolocationPermissions;->sInstance:Landroid/webkit/GeolocationPermissions;

    .line 91
    :cond_b
    sget-object v0, Landroid/webkit/GeolocationPermissions;->sInstance:Landroid/webkit/GeolocationPermissions;

    return-object v0
.end method

.method private static native nativeAllow(Ljava/lang/String;)V
.end method

.method private static native nativeClear(Ljava/lang/String;)V
.end method

.method private static native nativeClearAll()V
.end method

.method private static native nativeGetAllowed(Ljava/lang/String;)Z
.end method

.method private static native nativeGetOrigins()Ljava/util/Set;
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_17

    .line 180
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mQueuedMessages:Ljava/util/Vector;

    if-nez v0, :cond_10

    .line 181
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/GeolocationPermissions;->mQueuedMessages:Ljava/util/Vector;

    .line 183
    :cond_10
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    .line 187
    :goto_15
    monitor-exit p0

    return-void

    .line 185
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_15

    .line 179
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postUIMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_9
    return-void
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .registers 4
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationPermissions;->postMessage(Landroid/os/Message;)V

    .line 262
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .registers 4
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationPermissions;->postMessage(Landroid/os/Message;)V

    .line 252
    return-void
.end method

.method public clearAll()V
    .registers 3

    .prologue
    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationPermissions;->postMessage(Landroid/os/Message;)V

    .line 270
    return-void
.end method

.method public declared-synchronized createHandler()V
    .registers 4

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2d

    .line 129
    new-instance v0, Landroid/webkit/GeolocationPermissions$2;

    invoke-direct {v0, p0}, Landroid/webkit/GeolocationPermissions$2;-><init>(Landroid/webkit/GeolocationPermissions;)V

    iput-object v0, p0, Landroid/webkit/GeolocationPermissions;->mHandler:Landroid/os/Handler;

    .line 166
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mQueuedMessages:Ljava/util/Vector;

    if-eqz v0, :cond_2d

    .line 167
    :goto_10
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 168
    iget-object v1, p0, Landroid/webkit/GeolocationPermissions;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mQueuedMessages:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_10

    .line 128
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Landroid/webkit/GeolocationPermissions;->mQueuedMessages:Ljava/util/Vector;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_27

    .line 173
    :cond_2d
    monitor-exit p0

    return-void
.end method

.method public createUIHandler()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/webkit/GeolocationPermissions;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 100
    new-instance v0, Landroid/webkit/GeolocationPermissions$1;

    invoke-direct {v0, p0}, Landroid/webkit/GeolocationPermissions$1;-><init>(Landroid/webkit/GeolocationPermissions;)V

    iput-object v0, p0, Landroid/webkit/GeolocationPermissions;->mUIHandler:Landroid/os/Handler;

    .line 121
    :cond_b
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 8
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 226
    if-nez p2, :cond_4

    .line 242
    :goto_3
    return-void

    .line 229
    :cond_4
    if-nez p1, :cond_a

    .line 230
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 233
    :cond_a
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 234
    invoke-static {p1}, Landroid/webkit/GeolocationPermissions;->nativeGetAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 235
    .local v0, "allowed":Z
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 237
    .end local v0    # "allowed":Z
    :cond_27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v1, "values":Ljava/util/Map;
    const-string/jumbo v2, "origin"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "callback"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const/4 v2, 0x1

    invoke-static {v4, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/GeolocationPermissions;->postMessage(Landroid/os/Message;)V

    goto :goto_3
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_19

    .line 210
    const-string v1, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 211
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v0

    .line 212
    .local v0, "origins":Ljava/util/Set;
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 217
    .end local v0    # "origins":Ljava/util/Set;
    :cond_19
    :goto_19
    return-void

    .line 214
    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/GeolocationPermissions;->postMessage(Landroid/os/Message;)V

    goto :goto_19
.end method
