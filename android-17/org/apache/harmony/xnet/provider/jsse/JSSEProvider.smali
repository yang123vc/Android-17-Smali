.class public final Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;
.super Ljava/security/Provider;
.source "JSSEProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x2aaf083489ce78ebL


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 108
    const-string v0, "HarmonyJSSE"

    const-wide/high16 v1, 0x3ff0000000000000L

    const-string v3, "Harmony JSSE Provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 110
    const-string v0, "SSLContext.SSL"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "SSLContext.SSLv3"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "SSLContext.TLS"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "SSLContext.TLSv1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "KeyManagerFactory.X509"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "TrustManagerFactory.X509"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "KeyStore.AndroidCAStore"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
