.class public final Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA1DSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v0, "DSA-SHA1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;-><init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;)V

    .line 287
    return-void
.end method
