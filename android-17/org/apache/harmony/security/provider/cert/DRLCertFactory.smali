.class public final Lorg/apache/harmony/security/provider/cert/DRLCertFactory;
.super Ljava/security/Provider;
.source "DRLCertFactory.java"


# static fields
.field private static final serialVersionUID:J = -0x64e2fcde27825c67L


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 38
    const-string v0, "DRLCertFactory"

    const-wide/high16 v1, 0x3ff0000000000000L

    const-string v3, "ASN.1, DER, PkiPath, PKCS7"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 40
    const-string v0, "CertificateFactory.X509"

    const-string v1, "org.apache.harmony.security.provider.cert.X509CertFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/DRLCertFactory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "Alg.Alias.CertificateFactory.X.509"

    const-string v1, "X509"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/DRLCertFactory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method
