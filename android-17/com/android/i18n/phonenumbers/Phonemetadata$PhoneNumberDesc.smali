.class public Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exampleNumber_:Ljava/lang/String;

.field private hasExampleNumber:Z

.field private hasNationalNumberPattern:Z

.field private hasPossibleNumberPattern:Z

.field private nationalNumberPattern_:Ljava/lang/String;

.field private possibleNumberPattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .registers 1

    .prologue
    .line 188
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public exactlySameAs(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getExampleNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalNumberPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public getPossibleNumberPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public hasExampleNumber()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    return v0
.end method

.method public hasNationalNumberPattern()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    return v0
.end method

.method public hasPossibleNumberPattern()Z
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    return v0
.end method

.method public mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 226
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 228
    :cond_d
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 229
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 231
    :cond_1a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 232
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 234
    :cond_27
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 262
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 265
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 266
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 269
    :cond_1a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 270
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 272
    :cond_27
    return-void
.end method

.method public setExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 220
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setNationalNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 198
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setPossibleNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    .line 209
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 245
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    if-eqz v0, :cond_e

    .line 246
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 249
    :cond_e
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 250
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    if-eqz v0, :cond_1c

    .line 251
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 254
    :cond_1c
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 255
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    if-eqz v0, :cond_2a

    .line 256
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 258
    :cond_2a
    return-void
.end method
