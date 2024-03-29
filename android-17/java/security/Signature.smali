.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$SignatureImpl;
    }
.end annotation


# static fields
.field private static ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final SERVICE:Ljava/lang/String; = "Signature"

.field protected static final SIGN:I = 0x2

.field protected static final UNINITIALIZED:I = 0x0

.field protected static final VERIFY:I = 0x3


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Signature"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/Signature;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 83
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic access$002(Ljava/security/Signature;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .param p0, "x0"    # Ljava/security/Signature;
    .param p1, "x1"    # Ljava/security/Provider;

    .prologue
    .line 36
    iput-object p1, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p0, :cond_8

    .line 102
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 104
    :cond_8
    sget-object v4, Ljava/security/Signature;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v2

    .line 105
    .local v2, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 106
    .local v3, "spi":Ljava/lang/Object;
    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    .line 107
    .local v0, "provider":Ljava/security/Provider;
    instance-of v4, v3, Ljava/security/Signature;

    if-eqz v4, :cond_1f

    move-object v1, v3

    .line 108
    check-cast v1, Ljava/security/Signature;

    .line 109
    .local v1, "result":Ljava/security/Signature;
    iput-object p0, v1, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 110
    iput-object v0, v1, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 113
    .end local v1    # "result":Ljava/security/Signature;
    .end local v3    # "spi":Ljava/lang/Object;
    :goto_1e
    return-object v1

    .restart local v3    # "spi":Ljava/lang/Object;
    :cond_1f
    new-instance v1, Ljava/security/Signature$SignatureImpl;

    check-cast v3, Ljava/security/SignatureSpi;

    .end local v3    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v3, v0, p0}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 136
    if-nez p0, :cond_8

    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 139
    :cond_8
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 140
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 142
    :cond_16
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 143
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_22

    .line 144
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_22
    invoke-static {p0, v0}, Ljava/security/Signature;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p0, :cond_8

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :cond_8
    if-nez p1, :cond_10

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_10
    invoke-static {p0, p1}, Ljava/security/Signature;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method private static getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v2, Ljava/security/Signature;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, "spi":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/Signature;

    if-eqz v2, :cond_13

    move-object v0, v1

    .line 180
    check-cast v0, Ljava/security/Signature;

    .line 181
    .local v0, "result":Ljava/security/Signature;
    iput-object p0, v0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 182
    iput-object p1, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 185
    .end local v0    # "result":Ljava/security/Signature;
    .end local v1    # "spi":Ljava/lang/Object;
    :goto_12
    return-object v0

    .restart local v1    # "spi":Ljava/lang/Object;
    :cond_13
    new-instance v0, Ljava/security/Signature$SignatureImpl;

    check-cast v1, Ljava/security/SignatureSpi;

    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v0, v1, p1, p0}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private stateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 504
    packed-switch p1, :pswitch_data_10

    .line 512
    :pswitch_3
    const-string v0, ""

    :goto_5
    return-object v0

    .line 506
    :pswitch_6
    const-string v0, "UNINITIALIZED"

    goto :goto_5

    .line 508
    :pswitch_9
    const-string v0, "SIGN"

    goto :goto_5

    .line 510
    :pswitch_c
    const-string v0, "VERIFY"

    goto :goto_5

    .line 504
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 579
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 580
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 582
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final initSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 281
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 282
    return-void
.end method

.method public final initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 299
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 300
    return-void
.end method

.method public final initVerify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 219
    const/4 v0, 0x3

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 220
    return-void
.end method

.method public final initVerify(Ljava/security/cert/Certificate;)V
    .registers 8
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 239
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_43

    move-object v4, p1

    .line 240
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 241
    .local v0, "ce":Ljava/util/Set;
    const/4 v1, 0x0

    .line 242
    .local v1, "critical":Z
    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 244
    const-string v4, "2.5.29.15"

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 246
    const/4 v1, 0x1

    .line 250
    :cond_2b
    if-eqz v1, :cond_43

    move-object v4, p1

    .line 251
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v3

    .line 259
    .local v3, "keyUsage":[Z
    if-eqz v3, :cond_43

    const/4 v4, 0x0

    aget-boolean v4, v3, v4

    if-nez v4, :cond_43

    .line 260
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "The public key in the certificate cannot be used for digital signature purposes"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    .end local v0    # "ce":Ljava/util/Set;
    .end local v1    # "critical":Z
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "keyUsage":[Z
    :cond_43
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 266
    const/4 v4, 0x3

    iput v4, p0, Ljava/security/Signature;->state:I

    .line 267
    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method public final setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 546
    return-void
.end method

.method public final sign([BII)I
    .registers 6
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_11

    .line 347
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 349
    :cond_11
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 350
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method public final sign()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 315
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 316
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_d
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIGNATURE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/security/Signature;->state:I

    invoke-direct {p0, v1}, Ljava/security/Signature;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update(B)V
    .registers 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 425
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_c

    .line 426
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_c
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    .line 429
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 485
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_c

    .line 486
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_c
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 489
    return-void
.end method

.method public final update([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 442
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_c

    .line 443
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_c
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 446
    return-void
.end method

.method public final update([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 464
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_c

    .line 465
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_c
    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    if-ltz p3, :cond_17

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1d

    .line 469
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 471
    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 472
    return-void
.end method

.method public final verify([B)Z
    .registers 4
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 372
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 373
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_d
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method public final verify([BII)Z
    .registers 6
    .param p1, "signature"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 404
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 405
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_d
    if-eqz p1, :cond_18

    if-ltz p2, :cond_18

    if-ltz p3, :cond_18

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1e

    .line 409
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 411
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    move-result v0

    return v0
.end method
