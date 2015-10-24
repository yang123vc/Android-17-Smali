.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
.super Ljava/lang/Object;
.source "OpenSSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private compressionMethod:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private isValid:Z

.field lastAccessedTime:J

.field final localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

.field protected sslSessionNativePointer:I

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    .registers 9
    .param p1, "sslSessionNativePointer"    # I
    .param p2, "localCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p3, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "peerHost"    # Ljava/lang/String;
    .param p5, "peerPort"    # I
    .param p6, "sessionContext"    # Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    .line 40
    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    .line 63
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    .line 64
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 65
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 66
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 67
    iput p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    .line 68
    iput-object p6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    .line 69
    return-void
.end method

.method constructor <init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    .registers 13
    .param p1, "derData"    # [B
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p5, "sessionContext"    # Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->d2i_SSL_SESSION([B)I

    move-result v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    .line 88
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    if-nez v0, :cond_19

    .line 89
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid session data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_19
    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_11

    .line 258
    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_11
    return-void
.end method

.method private createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    new-array v0, v5, [Ljavax/security/cert/X509Certificate;

    .line 222
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v4, v5, :cond_38

    .line 223
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 224
    .local v2, "encoded":[B
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_19
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_19} :catch_1c
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_19} :catch_2a

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 227
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .end local v2    # "encoded":[B
    .end local v4    # "i":I
    :catch_1c
    move-exception v1

    .line 228
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 230
    throw v3

    .line 231
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_2a
    move-exception v1

    .line 232
    .local v1, "e":Ljavax/security/cert/CertificateException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 234
    throw v3

    .line 226
    .end local v1    # "e":Ljavax/security/cert/CertificateException;
    .end local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .restart local v4    # "i":I
    :cond_38
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 470
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 472
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 474
    return-void

    .line 472
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 152
    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 3

    .prologue
    .line 309
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 310
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_cipher(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 313
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 316
    .end local v0    # "name":Ljava/lang/String;
    :cond_1a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    return-object v1
.end method

.method public getCompressionMethod()Ljava/lang/String;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 336
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_compress_meth(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    .line 340
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 5

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 130
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_get_time(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    .line 132
    :cond_10
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method getEncoded()[B
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->i2d_SSL_SESSION(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    if-nez v0, :cond_7

    .line 99
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    .line 101
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 5

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    goto :goto_c
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 171
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 173
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 161
    const/16 v0, 0x4805

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 204
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 205
    .local v0, "result":[Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_d

    .line 207
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 209
    :cond_d
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 250
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 274
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 325
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_get_version(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    .line 327
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    if-nez p1, :cond_a

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    .line 378
    return-void
.end method

.method public isValid()Z
    .registers 6

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    .line 362
    .local v0, "context":Ljavax/net/ssl/SSLSessionContext;
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_25

    .line 367
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 369
    :cond_25
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    return v1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 428
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 429
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_20

    .line 433
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 436
    :cond_20
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_2e

    .line 437
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local v0    # "old":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 440
    :cond_2e
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 458
    if-nez p1, :cond_a

    .line 459
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_a
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 462
    .local v1, "old":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_1f

    move-object v0, v1

    .line 463
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 464
    .local v0, "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 466
    .end local v0    # "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_1f
    return-void
.end method

.method resetId()V
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    .line 114
    return-void
.end method
