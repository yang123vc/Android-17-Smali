.class public Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "AttributeCertificate.java"


# instance fields
.field acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

.field signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .registers 4
    .param p1, "acinfo"    # Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .param p2, "signatureAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 23
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    if-eqz v0, :cond_7

    .line 25
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 32
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 27
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    if-eqz p0, :cond_14

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_6

    .line 32
    :cond_14
    const/4 p0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSignatureValue()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 88
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 89
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 90
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 92
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
