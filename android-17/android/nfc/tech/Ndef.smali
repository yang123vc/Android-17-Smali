.class public final Landroid/nfc/tech/Ndef;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "Ndef.java"


# static fields
.field public static final EXTRA_NDEF_CARDSTATE:Ljava/lang/String; = "ndefcardstate"

.field public static final EXTRA_NDEF_MAXLENGTH:Ljava/lang/String; = "ndefmaxlength"

.field public static final EXTRA_NDEF_MSG:Ljava/lang/String; = "ndefmsg"

.field public static final EXTRA_NDEF_TYPE:Ljava/lang/String; = "ndeftype"

.field public static final ICODE_SLI:Ljava/lang/String; = "com.nxp.ndef.icodesli"

.field public static final MIFARE_CLASSIC:Ljava/lang/String; = "com.nxp.ndef.mifareclassic"

.field public static final NDEF_MODE_READ_ONLY:I = 0x1

.field public static final NDEF_MODE_READ_WRITE:I = 0x2

.field public static final NDEF_MODE_UNKNOWN:I = 0x3

.field public static final NFC_FORUM_TYPE_1:Ljava/lang/String; = "org.nfcforum.ndef.type1"

.field public static final NFC_FORUM_TYPE_2:Ljava/lang/String; = "org.nfcforum.ndef.type2"

.field public static final NFC_FORUM_TYPE_3:Ljava/lang/String; = "org.nfcforum.ndef.type3"

.field public static final NFC_FORUM_TYPE_4:Ljava/lang/String; = "org.nfcforum.ndef.type4"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_ICODE_SLI:I = 0x66

.field public static final TYPE_MIFARE_CLASSIC:I = 0x65

.field public static final TYPE_OTHER:I = -0x1

.field public static final UNKNOWN:Ljava/lang/String; = "android.ndef.unknown"


# instance fields
.field private final mCardState:I

.field private final mMaxNdefSize:I

.field private final mNdefMsg:Landroid/nfc/NdefMessage;

.field private final mNdefType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 5
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    .line 160
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 161
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_31

    .line 163
    const-string/jumbo v1, "ndefmaxlength"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    .line 164
    const-string/jumbo v1, "ndefcardstate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    .line 165
    const-string/jumbo v1, "ndefmsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    iput-object v1, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    .line 166
    const-string/jumbo v1, "ndeftype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    .line 171
    return-void

    .line 168
    :cond_31
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NDEF tech extras are null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;
    .registers 4
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v1, 0x0

    .line 147
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 151
    :goto_8
    return-object v1

    .line 149
    :cond_9
    :try_start_9
    new-instance v2, Landroid/nfc/tech/Ndef;

    invoke-direct {v2, p0}, Landroid/nfc/tech/Ndef;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-object v1, v2

    goto :goto_8

    .line 150
    :catch_10
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_8
.end method


# virtual methods
.method public canMakeReadOnly()Z
    .registers 5

    .prologue
    .line 337
    iget-object v2, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    .line 339
    .local v1, "tagService":Landroid/nfc/INfcTag;
    :try_start_6
    iget v2, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->canMakeReadOnly(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v2

    .line 342
    :goto_c
    return v2

    .line 340
    :catch_d
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getCachedNdefMessage()Landroid/nfc/NdefMessage;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getMaxSize()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    .line 261
    :try_start_4
    iget-object v6, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v6}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v4

    .line 262
    .local v4, "tagService":Landroid/nfc/INfcTag;
    iget-object v6, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v6}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    .line 263
    .local v3, "serviceHandle":I
    invoke-interface {v4, v3}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 264
    invoke-interface {v4, v3}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 265
    .local v2, "msg":Landroid/nfc/NdefMessage;
    if-nez v2, :cond_32

    .line 266
    invoke-interface {v4, v3}, Landroid/nfc/INfcTag;->getLastError(I)I

    move-result v1

    .line 267
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_42

    .line 274
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_29

    .line 281
    .end local v1    # "errorCode":I
    .end local v2    # "msg":Landroid/nfc/NdefMessage;
    .end local v3    # "serviceHandle":I
    .end local v4    # "tagService":Landroid/nfc/INfcTag;
    :catch_29
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "NFC"

    const-string v7, "NFC service dead"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    return-object v2

    .line 269
    .restart local v1    # "errorCode":I
    .restart local v2    # "msg":Landroid/nfc/NdefMessage;
    .restart local v3    # "serviceHandle":I
    .restart local v4    # "tagService":Landroid/nfc/INfcTag;
    :sswitch_33
    :try_start_33
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 271
    :sswitch_39
    new-instance v6, Landroid/nfc/FormatException;

    invoke-direct {v6}, Landroid/nfc/FormatException;-><init>()V

    throw v6
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3f} :catch_29

    .end local v1    # "errorCode":I
    .end local v2    # "msg":Landroid/nfc/NdefMessage;
    :cond_3f
    move-object v2, v5

    .line 279
    goto :goto_32

    .line 267
    nop

    :sswitch_data_42
    .sparse-switch
        -0x8 -> :sswitch_39
        -0x1 -> :sswitch_33
    .end sparse-switch
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    sparse-switch v0, :sswitch_data_1e

    .line 213
    const-string v0, "android.ndef.unknown"

    :goto_7
    return-object v0

    .line 201
    :sswitch_8
    const-string/jumbo v0, "org.nfcforum.ndef.type1"

    goto :goto_7

    .line 203
    :sswitch_c
    const-string/jumbo v0, "org.nfcforum.ndef.type2"

    goto :goto_7

    .line 205
    :sswitch_10
    const-string/jumbo v0, "org.nfcforum.ndef.type3"

    goto :goto_7

    .line 207
    :sswitch_14
    const-string/jumbo v0, "org.nfcforum.ndef.type4"

    goto :goto_7

    .line 209
    :sswitch_18
    const-string v0, "com.nxp.ndef.mifareclassic"

    goto :goto_7

    .line 211
    :sswitch_1b
    const-string v0, "com.nxp.ndef.icodesli"

    goto :goto_7

    .line 199
    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_c
        0x3 -> :sswitch_10
        0x4 -> :sswitch_14
        0x65 -> :sswitch_18
        0x66 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .registers 3

    .prologue
    .line 240
    iget v0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public makeReadOnly()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 365
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    .line 368
    :try_start_4
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    .line 369
    .local v2, "tagService":Landroid/nfc/INfcTag;
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 370
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v1

    .line 371
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_42

    .line 380
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_29

    .line 386
    .end local v1    # "errorCode":I
    .end local v2    # "tagService":Landroid/nfc/INfcTag;
    :catch_29
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "NFC"

    const-string v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    :sswitch_31
    return v3

    .line 373
    .restart local v1    # "errorCode":I
    .restart local v2    # "tagService":Landroid/nfc/INfcTag;
    :sswitch_32
    const/4 v3, 0x1

    goto :goto_31

    .line 375
    :sswitch_34
    :try_start_34
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 384
    .end local v1    # "errorCode":I
    :cond_3a
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tag is not ndef"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_42} :catch_29

    .line 371
    :sswitch_data_42
    .sparse-switch
        -0x8 -> :sswitch_31
        -0x1 -> :sswitch_34
        0x0 -> :sswitch_32
    .end sparse-switch
.end method

.method public bridge synthetic reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)V
    .registers 8
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    .line 305
    :try_start_3
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    .line 306
    .local v3, "tagService":Landroid/nfc/INfcTag;
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    .line 307
    .local v2, "serviceHandle":I
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 308
    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v1

    .line 309
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_40

    .line 318
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_22} :catch_22

    .line 324
    .end local v1    # "errorCode":I
    .end local v2    # "serviceHandle":I
    .end local v3    # "tagService":Landroid/nfc/INfcTag;
    :catch_22
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "NFC"

    const-string v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_2a
    return-void

    .line 313
    .restart local v1    # "errorCode":I
    .restart local v2    # "serviceHandle":I
    .restart local v3    # "tagService":Landroid/nfc/INfcTag;
    :sswitch_2b
    :try_start_2b
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 315
    :sswitch_31
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    .line 322
    .end local v1    # "errorCode":I
    :cond_37
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tag is not ndef"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3f} :catch_22

    .line 309
    nop

    :sswitch_data_40
    .sparse-switch
        -0x8 -> :sswitch_31
        -0x1 -> :sswitch_2b
        0x0 -> :sswitch_2a
    .end sparse-switch
.end method
