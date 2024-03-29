.class public final Lcom/android/internal/telephony/cdma/RuimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "RuimFileHandler.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 2
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 43
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 49
    const-string v0, "CDMA"

    const-string v1, "RuimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 3
    .param p1, "efid"    # I

    .prologue
    .line 71
    sparse-switch p1, :sswitch_data_c

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 75
    :sswitch_8
    const-string v0, "3F007F25"

    goto :goto_7

    .line 71
    nop

    :sswitch_data_c
    .sparse-switch
        0x6f32 -> :sswitch_8
        0x6f3c -> :sswitch_8
        0x6f41 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 68
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .registers 16
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0, v6, p1, v4, p5}, Lcom/android/internal/telephony/cdma/RuimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 60
    .local v9, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 62
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
