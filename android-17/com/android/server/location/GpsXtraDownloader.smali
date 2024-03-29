.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "count":I
    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "server1":Ljava/lang/String;
    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "server2":Ljava/lang/String;
    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "server3":Ljava/lang/String;
    if-eqz v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_1c
    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_20
    if-eqz v5, :cond_24

    add-int/lit8 v0, v0, 0x1

    .line 65
    :cond_24
    if-nez v0, :cond_2e

    .line 66
    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_2d
    return-void

    .line 69
    :cond_2e
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 71
    if-eqz v3, :cond_5a

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput-object v3, v6, v0

    .line 72
    :goto_3b
    if-eqz v4, :cond_44

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aput-object v4, v6, v1

    move v1, v0

    .line 73
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_44
    if-eqz v5, :cond_58

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aput-object v5, v6, v1

    .line 76
    :goto_4c
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 77
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_2d

    .end local v0    # "count":I
    .end local v2    # "random":Ljava/util/Random;
    .restart local v1    # "count":I
    :cond_58
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_4c

    :cond_5a
    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_3b
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .registers 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isProxySet"    # Z
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_1
    const-string v11, "Android"

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 115
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 117
    .local v8, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_1e

    .line 118
    new-instance v7, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-static {v11, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 122
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1e
    const-string v11, "Accept"

    const-string v12, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v8, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v11, "x-wap-profile"

    const-string v12, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v8, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 131
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 132
    .local v10, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_7e
    .catchall {:try_start_1 .. :try_end_37} :catchall_86

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_43

    .line 134
    const/4 v2, 0x0

    .line 164
    if-eqz v3, :cond_42

    .line 165
    :goto_3f
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 168
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    :cond_42
    :goto_42
    return-object v2

    .line 137
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    :cond_43
    :try_start_43
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_7e
    .catchall {:try_start_43 .. :try_end_46} :catchall_86

    move-result-object v6

    .line 138
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 139
    .local v2, "body":[B
    if-eqz v6, :cond_6f

    .line 141
    :try_start_4a
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_6a

    .line 142
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v2, v11, [B

    .line 143
    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_77

    .line 145
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_64
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_72

    .line 148
    :try_start_67
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_96
    .catchall {:try_start_67 .. :try_end_6a} :catchall_77

    .line 155
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :cond_6a
    :goto_6a
    if-eqz v6, :cond_6f

    .line 156
    :try_start_6c
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_7e
    .catchall {:try_start_6c .. :try_end_6f} :catchall_86

    .line 164
    :cond_6f
    if-eqz v3, :cond_42

    goto :goto_3f

    .line 147
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_72
    move-exception v11

    .line 148
    :try_start_73
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_8d
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    .line 147
    :goto_76
    :try_start_76
    throw v11
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    .line 155
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_77
    move-exception v11

    if-eqz v6, :cond_7d

    .line 156
    :try_start_7a
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 155
    :cond_7d
    throw v11
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7e} :catch_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_86

    .line 161
    .end local v2    # "body":[B
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    :catch_7e
    move-exception v11

    .line 164
    if-eqz v3, :cond_84

    .line 165
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 168
    :cond_84
    const/4 v2, 0x0

    goto :goto_42

    .line 164
    :catchall_86
    move-exception v11

    if-eqz v3, :cond_8c

    .line 165
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 164
    :cond_8c
    throw v11

    .line 149
    .restart local v2    # "body":[B
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    :catch_8d
    move-exception v5

    .line 150
    .local v5, "e":Ljava/io/IOException;
    :try_start_8e
    const-string v12, "GpsXtraDownloader"

    const-string v13, "Unexpected IOException."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    .line 149
    .end local v5    # "e":Ljava/io/IOException;
    :catch_96
    move-exception v5

    .line 150
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v11, "GpsXtraDownloader"

    const-string v12, "Unexpected IOException."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_77

    goto :goto_6a
.end method


# virtual methods
.method downloadXtraData()[B
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "proxyHost":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 84
    .local v1, "proxyPort":I
    if-eqz v0, :cond_1c

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1c

    const/4 v4, 0x1

    .line 85
    .local v4, "useProxy":Z
    :goto_13
    const/4 v2, 0x0

    .line 86
    .local v2, "result":[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 88
    .local v3, "startIndex":I
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v6, :cond_1e

    .line 89
    const/4 v5, 0x0

    .line 105
    :goto_1b
    return-object v5

    .end local v2    # "result":[B
    .end local v3    # "startIndex":I
    .end local v4    # "useProxy":Z
    :cond_1c
    move v4, v5

    .line 84
    goto :goto_13

    .line 93
    .restart local v2    # "result":[B
    .restart local v3    # "startIndex":I
    .restart local v4    # "useProxy":Z
    :cond_1e
    if-nez v2, :cond_3d

    .line 94
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v6, v6, v7

    invoke-static {v6, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 97
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 98
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_39

    .line 99
    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 102
    :cond_39
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v6, v3, :cond_1e

    :cond_3d
    move-object v5, v2

    .line 105
    goto :goto_1b
.end method
