.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private mEventHandler:Landroid/media/SoundPool$EventHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:I

.field private mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const-string/jumbo v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 6
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/SoundPool;->native_setup(Ljava/lang/Object;III)I

    move-result v0

    if-eqz v0, :cond_16

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native setup failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _load(Ljava/lang/String;I)I
.end method

.method static synthetic access$000(Landroid/media/SoundPool;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/SoundPool;

    .prologue
    .line 105
    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/SoundPool;

    .prologue
    .line 105
    iget-object v0, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method private final native native_setup(Ljava/lang/Object;III)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "weakRef"    # Ljava/lang/Object;
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 466
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "weakRef":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 467
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_b

    .line 474
    :cond_a
    :goto_a
    return-void

    .line 470
    :cond_b
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    if-eqz v2, :cond_a

    .line 471
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/SoundPool$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 472
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/SoundPool$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 194
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v8, 0x0

    .line 195
    .local v8, "id":I
    if-eqz v7, :cond_20

    .line 196
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v8

    .line 198
    :try_start_1d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 203
    :cond_20
    :goto_20
    return v8

    .line 199
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .registers 10
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    .line 215
    if-eqz p1, :cond_24

    .line 216
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 217
    .local v4, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_15

    .line 218
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    .line 222
    .end local v4    # "len":J
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    .line 241
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 157
    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;->_load(Ljava/lang/String;I)I

    move-result v10

    .line 174
    :cond_c
    :goto_c
    return v10

    .line 161
    :cond_d
    const/4 v10, 0x0

    .line 163
    .local v10, "id":I
    :try_start_e
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v8, "f":Ljava/io/File;
    if-eqz v8, :cond_c

    .line 165
    const/high16 v0, 0x10000000

    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 166
    .local v9, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_c

    .line 167
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v10

    .line 168
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_30} :catch_31

    goto :goto_c

    .line 171
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_31
    move-exception v7

    .line 172
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public final native pause(I)V
.end method

.method public final native play(IFFIIF)I
.end method

.method public final native release()V
.end method

.method public final native resume(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 418
    iget-object v2, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 419
    if-eqz p1, :cond_2b

    .line 422
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_16

    .line 423
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    .line 432
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_12
    iput-object p1, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 433
    monitor-exit v2

    .line 434
    return-void

    .line 424
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 425
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_12

    .line 433
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1

    .line 427
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_27
    const/4 v1, 0x0

    :try_start_28
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_12

    .line 430
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_24

    goto :goto_12
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public final native setVolume(IFF)V
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method
