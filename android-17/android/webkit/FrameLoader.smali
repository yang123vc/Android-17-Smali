.class Landroid/webkit/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field static final HEADER_STR:Ljava/lang/String; = "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final URI_PROTOCOL:I = 0x100

.field private static final mAboutBlank:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"


# instance fields
.field private mCacheMode:I

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptResponse:Landroid/webkit/WebResourceResponse;

.field private final mListener:Landroid/webkit/LoadListener;

.field private final mMethod:Ljava/lang/String;

.field private mNetwork:Landroid/webkit/Network;

.field private mPostData:[B

.field private mReferrer:Ljava/lang/String;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private final mUaprofHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Landroid/webkit/FrameLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkit/FrameLoader;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V
    .registers 10
    .param p1, "listener"    # Landroid/webkit/LoadListener;
    .param p2, "settings"    # Landroid/webkit/WebSettings;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "interceptResponse"    # Landroid/webkit/WebResourceResponse;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-boolean v0, Landroid/webkit/FrameLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_14
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 64
    iput-object p3, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    .line 65
    iput v4, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 66
    iput-object p2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    .line 67
    iput-object p4, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    .line 68
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040021

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private handleCache()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 302
    iget v3, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    packed-switch v3, :pswitch_data_50

    .line 355
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v2

    .line 358
    :goto_f
    return v2

    .line 313
    :pswitch_10
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 315
    .local v1, "result":Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_26

    .line 316
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_f

    .line 322
    :cond_26
    const/16 v0, -0xe

    .line 323
    .local v0, "err":I
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_f

    .line 340
    .end local v0    # "err":I
    .end local v1    # "result":Landroid/webkit/CacheManager$CacheResult;
    :pswitch_38
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 342
    .restart local v1    # "result":Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_4e

    .line 343
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_f

    .line 358
    .end local v1    # "result":Landroid/webkit/CacheManager$CacheResult;
    :cond_4e
    :pswitch_4e
    const/4 v2, 0x0

    goto :goto_f

    .line 302
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_38
        :pswitch_4e
        :pswitch_10
    .end packed-switch
.end method

.method private static handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z
    .registers 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loadListener"    # Landroid/webkit/LoadListener;
    .param p2, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x65

    const/4 v2, 0x1

    .line 156
    sget-boolean v3, Landroid/webkit/FrameLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_15

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 161
    :cond_15
    :try_start_15
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_22} :catch_37

    .line 170
    .end local p0    # "url":Ljava/lang/String;
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 171
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 172
    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v2, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3}, Landroid/webkit/FileLoader;->load()V

    .line 229
    .end local v1    # "url":Ljava/lang/String;
    :goto_36
    return v2

    .line 162
    .restart local p0    # "url":Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/16 v3, -0xc

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040007

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_36

    .line 176
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local p0    # "url":Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_49
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/FileLoader;

    invoke-direct {v4, v1, p1, v2, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_36

    .line 182
    :cond_5a
    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 183
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 184
    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v5, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3}, Landroid/webkit/FileLoader;->load()V

    goto :goto_36

    .line 188
    :cond_6f
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/FileLoader;

    invoke-direct {v4, v1, p1, v5, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_36

    .line 194
    :cond_80
    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 195
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 196
    new-instance v3, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v4

    invoke-direct {v3, v1, p1, v7, v4}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3}, Landroid/webkit/FileLoader;->load()V

    goto :goto_36

    .line 200
    :cond_99
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v5

    invoke-direct {v4, v1, p1, v7, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_36

    .line 206
    :cond_ae
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-static {v1}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 210
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 211
    new-instance v3, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v3}, Landroid/webkit/ContentLoader;->load()V

    goto/16 :goto_36

    .line 214
    :cond_ce
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_36

    .line 220
    :cond_e4
    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 222
    new-instance v3, Landroid/webkit/DataLoader;

    invoke-direct {v3, v1, p1}, Landroid/webkit/DataLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v3}, Landroid/webkit/DataLoader;->load()V

    goto/16 :goto_36

    .line 224
    :cond_f4
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 225
    const-string v3, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/webkit/LoadListener;->data([BI)V

    .line 226
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->endData()V

    goto/16 :goto_36

    .line 229
    :cond_10e
    const/4 v2, 0x0

    goto/16 :goto_36
.end method

.method private populateHeaders()V
    .registers 8

    .prologue
    .line 392
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Referer"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_d
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "content-type"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_1a
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 401
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    monitor-enter v5

    .line 402
    :try_start_25
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "username":Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "password":Ljava/lang/String;
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_75

    .line 405
    if-eqz v3, :cond_57

    if-eqz v1, :cond_57

    .line 407
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "proxyHeader":Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v1}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "proxyHeader":Ljava/lang/String;
    .end local v3    # "username":Ljava/lang/String;
    :cond_57
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "cookie":Ljava/lang/String;
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_74

    .line 418
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_74
    return-void

    .line 404
    .end local v0    # "cookie":Ljava/lang/String;
    :catchall_75
    move-exception v4

    :try_start_76
    monitor-exit v5
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v4
.end method

.method private populateStaticHeaders()V
    .registers 6

    .prologue
    .line 367
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v3, "Accept"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "accept":Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    .line 369
    :cond_12
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v3, "Accept"

    const-string/jumbo v4, "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_1c
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v3, "Accept-Charset"

    const-string/jumbo v4, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "acceptLanguage":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_39

    .line 375
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v3, "Accept-Language"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_39
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v3, "User-Agent"

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    .line 382
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string/jumbo v3, "x-wap-profile"

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_5c
    return-void
.end method

.method private startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V
    .registers 5
    .param p1, "result"    # Landroid/webkit/CacheManager$CacheResult;

    .prologue
    .line 284
    new-instance v0, Landroid/webkit/CacheLoader;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-direct {v0, v1, p1}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    .line 286
    .local v0, "cacheLoader":Landroid/webkit/CacheLoader;
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->setCacheLoader(Landroid/webkit/CacheLoader;)V

    .line 287
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 288
    invoke-virtual {v0}, Landroid/webkit/CacheLoader;->load()V

    .line 294
    :goto_17
    return-void

    .line 291
    :cond_18
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_17
.end method


# virtual methods
.method public executeLoad()Z
    .registers 7

    .prologue
    const v5, 0x1040007

    const/16 v4, -0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "url":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v3, :cond_3b

    .line 110
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 111
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebResourceResponse;->loader(Landroid/webkit/LoadListener;)Landroid/webkit/StreamLoader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/StreamLoader;->load()V

    .line 150
    :cond_24
    :goto_24
    return v1

    .line 113
    :cond_25
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4, v5}, Landroid/webkit/WebResourceResponse;->loader(Landroid/webkit/LoadListener;)Landroid/webkit/StreamLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_24

    .line 118
    :cond_3b
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 119
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 120
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v2

    .line 123
    goto :goto_24

    .line 127
    :cond_5a
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->verifyURLEncoding(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 128
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v2

    .line 131
    goto :goto_24

    .line 133
    :cond_77
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    .line 134
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 135
    invoke-virtual {p0}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    move-result v1

    goto :goto_24

    .line 137
    :cond_90
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_24

    .line 140
    :cond_9e
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-static {v0, v3, v4}, Landroid/webkit/FrameLoader;->handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 147
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    const/16 v3, -0xa

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040008

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v2

    .line 150
    goto/16 :goto_24
.end method

.method public getLoadListener()Landroid/webkit/LoadListener;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    return-object v0
.end method

.method handleHTTPLoad()Z
    .registers 10

    .prologue
    const/4 v3, 0x1

    .line 233
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    if-nez v4, :cond_c

    .line 234
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 236
    :cond_c
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateStaticHeaders()V

    .line 237
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateHeaders()V

    .line 240
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleCache()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 245
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/LoadListener;->setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V

    .line 271
    :cond_23
    :goto_23
    return v3

    .line 254
    :cond_24
    const/4 v2, 0x0

    .line 255
    .local v2, "ret":Z
    const/16 v0, -0xa

    .line 258
    .local v0, "error":I
    :try_start_27
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    iget-object v8, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    :try_end_34
    .catch Landroid/net/ParseException; {:try_start_27 .. :try_end_34} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_34} :catch_4c

    move-result v2

    .line 267
    :goto_35
    if-nez v2, :cond_23

    .line 268
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 269
    const/4 v3, 0x0

    goto :goto_23

    .line 260
    :catch_48
    move-exception v1

    .line 261
    .local v1, "ex":Landroid/net/ParseException;
    const/16 v0, -0xc

    .line 266
    goto :goto_35

    .line 262
    .end local v1    # "ex":Landroid/net/ParseException;
    :catch_4c
    move-exception v1

    .line 265
    .local v1, "ex":Ljava/lang/RuntimeException;
    const/16 v0, -0xc

    goto :goto_35
.end method

.method public setCacheMode(I)V
    .registers 2
    .param p1, "cacheMode"    # I

    .prologue
    .line 86
    iput p1, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 87
    return-void
.end method

.method public setContentTypeForPost(Ljava/lang/String;)V
    .registers 2
    .param p1, "postContentType"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .registers 2
    .param p1, "headers"    # Ljava/util/HashMap;

    .prologue
    .line 90
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public setPostData([B)V
    .registers 2
    .param p1, "postData"    # [B

    .prologue
    .line 78
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    .line 79
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 3
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p1, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    .line 75
    :cond_8
    return-void
.end method
