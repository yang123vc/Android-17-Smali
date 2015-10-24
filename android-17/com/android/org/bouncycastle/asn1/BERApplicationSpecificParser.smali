.class public Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;
.super Ljava/lang/Object;
.source "BERApplicationSpecificParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field private final parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

.field private final tag:I


# direct methods
.method constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    .line 14
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 15
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 35
    :catch_5
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
