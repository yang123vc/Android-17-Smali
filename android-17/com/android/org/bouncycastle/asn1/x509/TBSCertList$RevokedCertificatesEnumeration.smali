.class Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokedCertificatesEnumeration"
.end annotation


# instance fields
.field private final en:Ljava/util/Enumeration;

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V
    .registers 3
    .param p2, "en"    # Ljava/util/Enumeration;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    .line 95
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method
