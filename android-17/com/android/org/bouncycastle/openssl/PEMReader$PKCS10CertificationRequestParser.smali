.class Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;
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
    name = "PKCS10CertificationRequestParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V
    .registers 2

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/org/bouncycastle/openssl/PEMReader;
    .param p2, "x1"    # Lcom/android/org/bouncycastle/openssl/PEMReader$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .registers 6
    .param p1, "obj"    # Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 588
    :catch_a
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem parsing certrequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
