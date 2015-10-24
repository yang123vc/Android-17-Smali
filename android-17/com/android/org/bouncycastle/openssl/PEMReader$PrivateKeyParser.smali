.class Lcom/android/org/bouncycastle/openssl/PEMReader$PrivateKeyParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateKeyParser"
.end annotation


# instance fields
.field private provider:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .registers 3
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$PrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$PrivateKeyParser;->provider:Ljava/lang/String;

    .line 784
    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .registers 9
    .param p1, "obj"    # Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    .line 792
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 794
    .local v3, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$PrivateKeyParser;->provider:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 796
    .local v2, "keyFact":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v4

    return-object v4

    .line 798
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v2    # "keyFact":Ljava/security/KeyFactory;
    .end local v3    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :catch_2c
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem parsing PRIVATE KEY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
