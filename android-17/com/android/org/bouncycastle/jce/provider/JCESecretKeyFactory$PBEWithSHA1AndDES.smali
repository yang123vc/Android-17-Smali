.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA1AndDES;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1AndDES"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/16 v6, 0x40

    const/4 v3, 0x1

    .line 311
    const-string v1, "PBEwithSHA1andDES"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V

    .line 312
    return-void
.end method
