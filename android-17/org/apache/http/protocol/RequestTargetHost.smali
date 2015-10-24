.class public Lorg/apache/http/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 10
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_a

    .line 65
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP request may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 67
    :cond_a
    if-nez p2, :cond_14

    .line 68
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP context may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    :cond_14
    const-string v5, "Host"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 71
    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpHost;

    .line 73
    .local v3, "targethost":Lorg/apache/http/HttpHost;
    if-nez v3, :cond_65

    .line 74
    const-string v5, "http.connection"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpConnection;

    .line 76
    .local v1, "conn":Lorg/apache/http/HttpConnection;
    instance-of v5, v1, Lorg/apache/http/HttpInetConnection;

    if-eqz v5, :cond_4a

    move-object v5, v1

    .line 79
    check-cast v5, Lorg/apache/http/HttpInetConnection;

    invoke-interface {v5}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 80
    .local v0, "address":Ljava/net/InetAddress;
    check-cast v1, Lorg/apache/http/HttpInetConnection;

    .end local v1    # "conn":Lorg/apache/http/HttpConnection;
    invoke-interface {v1}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result v2

    .line 81
    .local v2, "port":I
    if-eqz v0, :cond_4a

    .line 82
    new-instance v3, Lorg/apache/http/HttpHost;

    .end local v3    # "targethost":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 85
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .restart local v3    # "targethost":Lorg/apache/http/HttpHost;
    :cond_4a
    if-nez v3, :cond_65

    .line 86
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    .line 87
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 96
    .end local v3    # "targethost":Lorg/apache/http/HttpHost;
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_5c
    :goto_5c
    return-void

    .line 90
    .restart local v3    # "targethost":Lorg/apache/http/HttpHost;
    .restart local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_5d
    new-instance v5, Lorg/apache/http/ProtocolException;

    const-string v6, "Target host missing"

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_65
    const-string v5, "Host"

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method
