.class final Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PosterDownloader"
.end annotation


# static fields
.field private static mQueueRefCount:I

.field private static mRequestQueue:Landroid/net/http/RequestQueue;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaders:Landroid/net/http/Headers;

.field private mPosterBytes:Ljava/io/ByteArrayOutputStream;

.field private final mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 379
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "proxy"    # Landroid/webkit/HTML5VideoViewProxy;

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_a} :catch_14

    .line 401
    :goto_a
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 402
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    .line 403
    return-void

    .line 398
    :catch_14
    move-exception v0

    .line 399
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_a
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Landroid/net/http/RequestHandle;
    .registers 2
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    .line 376
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Ljava/net/URL;
    .registers 2
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    .line 376
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)I
    .registers 2
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    .line 376
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    return v0
.end method

.method private cleanup()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_c

    .line 493
    :try_start_5
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_d
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 497
    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 500
    :cond_c
    :goto_c
    return-void

    .line 494
    :catch_d
    move-exception v0

    .line 497
    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    goto :goto_c

    :catchall_11
    move-exception v0

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    throw v0
.end method

.method private releaseQueue()V
    .registers 2

    .prologue
    .line 511
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_5

    .line 518
    :cond_4
    :goto_4
    return-void

    .line 514
    :cond_5
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_4

    .line 515
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->shutdown()V

    .line 516
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    goto :goto_4
.end method

.method private retainQueue()V
    .registers 3

    .prologue
    .line 504
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    if-nez v0, :cond_11

    .line 505
    new-instance v0, Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 507
    :cond_11
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    .line 508
    return-void
.end method


# virtual methods
.method public cancelAndReleaseQueue()V
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_c

    .line 424
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 427
    :cond_c
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->releaseQueue()V

    .line 428
    return-void
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 478
    return-void
.end method

.method public data([BI)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 442
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_b

    .line 443
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 445
    :cond_b
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 446
    return-void
.end method

.method public endData()V
    .registers 6

    .prologue
    .line 449
    iget v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_28

    .line 450
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_24

    .line 451
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 453
    .local v1, "poster":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    # invokes: Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V

    .line 455
    .end local v1    # "poster":Landroid/graphics/Bitmap;
    :cond_24
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 474
    :cond_27
    :goto_27
    return-void

    .line 456
    :cond_28
    iget v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_27

    iget v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0x190

    if-ge v2, v3, :cond_27

    .line 459
    :try_start_34
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_41
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_41} :catch_50

    .line 463
    :goto_41
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-eqz v2, :cond_27

    .line 464
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;

    invoke-direct {v3, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;-><init>(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27

    .line 460
    :catch_50
    move-exception v0

    .line 461
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_41
.end method

.method public error(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 482
    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .registers 3
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .registers 2
    .param p1, "headers"    # Landroid/net/http/Headers;

    .prologue
    .line 438
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    .line 439
    return-void
.end method

.method public start()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 406
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->retainQueue()V

    .line 408
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-nez v0, :cond_9

    .line 420
    :cond_8
    :goto_8
    return-void

    .line 415
    :cond_9
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 416
    .local v7, "protocol":Ljava/lang/String;
    const-string v0, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "https"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 417
    :cond_1f
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    goto :goto_8
.end method

.method public status(IIILjava/lang/String;)V
    .registers 5
    .param p1, "major_version"    # I
    .param p2, "minor_version"    # I
    .param p3, "code"    # I
    .param p4, "reason_phrase"    # Ljava/lang/String;

    .prologue
    .line 434
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    .line 435
    return-void
.end method
