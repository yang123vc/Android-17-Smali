.class public Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
.source "ASN1ObjectIdentifier.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    .line 14
    return-void
.end method


# virtual methods
.method public branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5
    .param p1, "branchID"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
