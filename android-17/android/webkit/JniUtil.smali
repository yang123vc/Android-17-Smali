.class Landroid/webkit/JniUtil;
.super Ljava/lang/Object;
.source "JniUtil.java"


# static fields
.field private static final ANDROID_CONTENT:Ljava/lang/String; = "content:"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static sCacheDirectory:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseDirectory:Ljava/lang/String;

.field private static sUseChromiumHttpStack:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string/jumbo v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const-string v0, "chromium_net"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSatisfyMemoryAllocation(J)Z
    .registers 10
    .param p0, "bytesRequested"    # J

    .prologue
    .line 185
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 186
    sget-object v4, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 188
    .local v2, "manager":Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 189
    .local v3, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 190
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long v0, v4, v6

    .line 191
    .local v0, "leftToAllocate":J
    iget-boolean v4, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v4, :cond_25

    cmp-long v4, p0, v0

    if-gez v4, :cond_25

    const/4 v4, 0x1

    :goto_24
    return v4

    :cond_25
    const/4 v4, 0x0

    goto :goto_24
.end method

.method private static checkInitialized()V
    .registers 2

    .prologue
    .line 44
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call CookieSyncManager::createInstance() or create a webview before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_c
    return-void
.end method

.method private static declared-synchronized contentUrlSize(Ljava/lang/String;)J
    .registers 15
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v13, -0x1

    .line 102
    const-class v10, Landroid/webkit/JniUtil;

    monitor-enter v10

    :try_start_6
    const-string v11, "content:"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_60

    move-result v11

    if-eqz v11, :cond_5e

    .line 108
    const/16 v11, 0x3f

    :try_start_10
    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 109
    .local v3, "mimeIndex":I
    if-eq v3, v13, :cond_1b

    .line 110
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 112
    :cond_1b
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 113
    .local v7, "uri":Landroid/net/Uri;
    sget-object v11, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 114
    .local v2, "is":Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_42
    .catchall {:try_start_10 .. :try_end_2d} :catchall_60

    .line 116
    .local v0, "buffer":[B
    const-wide/16 v5, 0x0

    .line 118
    .local v5, "size":J
    :goto_2f
    :try_start_2f
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3d

    move-result v4

    .local v4, "n":I
    if-eq v4, v13, :cond_38

    .line 119
    int-to-long v11, v4

    add-long/2addr v5, v11

    goto :goto_2f

    .line 122
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_42
    .catchall {:try_start_38 .. :try_end_3b} :catchall_60

    .line 130
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "mimeIndex":I
    .end local v4    # "n":I
    .end local v5    # "size":J
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_3b
    monitor-exit v10

    return-wide v5

    .line 122
    .restart local v0    # "buffer":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "mimeIndex":I
    .restart local v5    # "size":J
    .restart local v7    # "uri":Landroid/net/Uri;
    :catchall_3d
    move-exception v11

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_60

    .line 125
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "mimeIndex":I
    .end local v5    # "size":J
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_42
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    :try_start_43
    const-string/jumbo v11, "webkit"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_60

    move-wide v5, v8

    .line 127
    goto :goto_3b

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5e
    move-wide v5, v8

    .line 130
    goto :goto_3b

    .line 102
    :catchall_60
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method private static declared-synchronized contentUrlStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 142
    const-class v4, Landroid/webkit/JniUtil;

    monitor-enter v4

    :try_start_4
    const-string v5, "content:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_45

    move-result v5

    if-eqz v5, :cond_28

    .line 148
    const/16 v5, 0x3f

    :try_start_e
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 149
    .local v1, "mimeIndex":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1a

    .line 150
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 152
    :cond_1a
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    .local v2, "uri":Landroid/net/Uri;
    sget-object v5, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_2a
    .catchall {:try_start_e .. :try_end_27} :catchall_45

    move-result-object v3

    .line 159
    .end local v1    # "mimeIndex":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_28
    :goto_28
    monitor-exit v4

    return-object v3

    .line 154
    :catch_2a
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "webkit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_45

    goto :goto_28

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_45
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized getAutofillQueryUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 177
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 180
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "web_autofill_query_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getCacheDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    const-class v2, Landroid/webkit/JniUtil;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 82
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 83
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 84
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_1a

    .line 85
    const-string v1, ""

    sput-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    .line 91
    :cond_16
    :goto_16
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21

    monitor-exit v2

    return-object v1

    .line 87
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    goto :goto_16

    .line 80
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static declared-synchronized getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 58
    const-class v0, Landroid/webkit/JniUtil;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDatabaseDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 68
    sget-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 69
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    .line 72
    :cond_18
    sget-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeUseChromiumHttpStack()Z
.end method

.method protected static declared-synchronized setContext(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-eqz v0, :cond_9

    .line 55
    :goto_7
    monitor-exit v1

    return-void

    .line 54
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 50
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static useChromiumHttpStack()Z
    .registers 1

    .prologue
    .line 170
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 171
    invoke-static {}, Landroid/webkit/JniUtil;->nativeUseChromiumHttpStack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    .line 173
    :cond_e
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
