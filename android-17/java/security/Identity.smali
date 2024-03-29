.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field private certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_a

    .line 78
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    .line 79
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    .line 81
    :cond_a
    return-void
.end method

.method private static checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .registers 7
    .param p0, "pk1"    # Ljava/security/PublicKey;
    .param p1, "pk2"    # Ljava/security/PublicKey;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "format1":Ljava/lang/String;
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .local v1, "format2":Ljava/lang/String;
    if-eqz v1, :cond_1d

    move v4, v3

    :goto_f
    if-eqz v0, :cond_1f

    :goto_11
    xor-int/2addr v3, v4

    if-nez v3, :cond_1c

    if-eqz v0, :cond_21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 124
    .end local v1    # "format2":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v2

    .restart local v1    # "format2":Ljava/lang/String;
    :cond_1d
    move v4, v2

    .line 118
    goto :goto_f

    :cond_1f
    move v3, v2

    goto :goto_11

    .line 124
    :cond_21
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_1c
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .registers 5
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 93
    .local v0, "certPK":Ljava/security/PublicKey;
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_18

    .line 94
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v1, v0}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 95
    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "Cert\'s public key does not match Identity\'s public key"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_18
    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 100
    :cond_1a
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_25

    .line 101
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 103
    :cond_25
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .registers 3

    .prologue
    .line 158
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_8

    .line 159
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/security/Certificate;

    .line 163
    :goto_7
    return-object v0

    .line 161
    :cond_8
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/Certificate;

    .line 162
    .local v0, "ret":[Ljava/security/Certificate;
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 297
    if-ne p0, p1, :cond_4

    .line 307
    :cond_3
    :goto_3
    return v1

    .line 300
    :cond_4
    instance-of v2, p1, Ljava/security/Identity;

    if-nez v2, :cond_a

    .line 301
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 303
    check-cast v0, Ljava/security/Identity;

    .line 304
    .local v0, "i":Ljava/security/Identity;
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, v0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    iget-object v3, v0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 307
    :cond_21
    invoke-virtual {p0, v0}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v1

    goto :goto_3
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "hash":I
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 332
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_c
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_17

    .line 335
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1}, Ljava/security/IdentityScope;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_17
    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .registers 5
    .param p1, "identity"    # Ljava/security/Identity;

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v2, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 191
    :cond_b
    :goto_b
    return v0

    .line 187
    :cond_c
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_16

    .line 188
    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    .line 191
    :cond_16
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    goto :goto_b
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .registers 4
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v0, :cond_19

    .line 140
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 141
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Certificate not found"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_14
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 145
    :cond_19
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    .line 240
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1, p1}, Ljava/security/IdentityScope;->getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;

    move-result-object v0

    .line 242
    .local v0, "i":Ljava/security/Identity;
    if-eqz v0, :cond_18

    if-eq v0, p0, :cond_18

    .line 243
    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "key already used in scope"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    .end local v0    # "i":Ljava/security/Identity;
    :cond_18
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 348
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-nez v1, :cond_2e

    const-string v0, ""

    .line 349
    .local v0, "s":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_2d

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_2d
    return-object v0

    .line 348
    .end local v0    # "s":Ljava/lang/String;
    :cond_2e
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    goto :goto_6
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 5
    .param p1, "detailed"    # Z

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "s":Ljava/lang/String;
    if-eqz p1, :cond_1f

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_1f
    return-object v0
.end method
