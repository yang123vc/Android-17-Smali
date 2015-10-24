.class Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;
.source "JCEBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AEADGenericBlockCipher"
.end annotation


# instance fields
.field private cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .registers 2
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    .prologue
    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 1057
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 1063
    return-void
.end method

.method public processByte(B[BI)I
    .registers 5
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->processByte(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public wrapOnNoPadding()Z
    .registers 2

    .prologue
    .line 1072
    const/4 v0, 0x0

    return v0
.end method
