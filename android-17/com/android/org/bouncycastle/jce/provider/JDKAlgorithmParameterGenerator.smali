.class public abstract Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
    }
.end annotation


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 37
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 99
    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 3
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 43
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    .line 45
    return-void
.end method
