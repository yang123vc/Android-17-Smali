.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$CBC;
.super Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    .line 33
    return-void
.end method
