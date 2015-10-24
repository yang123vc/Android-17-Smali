.class public interface abstract Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;
.super Ljava/lang/Object;
.source "TeleTrusTObjectIdentifiers.java"


# static fields
.field public static final brainpoolP160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP160t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP192t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP224t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP256t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP320r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP320t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP384t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP512r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP512t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecSignWithRipemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecSignWithSha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecc_brainpool:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rsaSignatureWithripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rsaSignatureWithripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rsaSignatureWithripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 9
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 11
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithSha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithRipemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.2.8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecc_brainpool:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecc_brainpool:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "14"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
