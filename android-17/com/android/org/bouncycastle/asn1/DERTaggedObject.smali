.class public Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DERTaggedObject.java"


# static fields
.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "tagNo"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 24
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 37
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa0

    .line 53
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->empty:Z

    if-nez v2, :cond_35

    .line 55
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 57
    .local v0, "bytes":[B
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v2, :cond_1c

    .line 59
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-virtual {p1, v4, v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 84
    .end local v0    # "bytes":[B
    :goto_1b
    return-void

    .line 67
    .restart local v0    # "bytes":[B
    :cond_1c
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_32

    .line 69
    const/16 v1, 0xa0

    .line 76
    .local v1, "flags":I
    :goto_25
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-virtual {p1, v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeTag(II)V

    .line 77
    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write([BII)V

    goto :goto_1b

    .line 73
    .end local v1    # "flags":I
    :cond_32
    const/16 v1, 0x80

    .restart local v1    # "flags":I
    goto :goto_25

    .line 82
    .end local v0    # "bytes":[B
    .end local v1    # "flags":I
    :cond_35
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    sget-object v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    goto :goto_1b
.end method
