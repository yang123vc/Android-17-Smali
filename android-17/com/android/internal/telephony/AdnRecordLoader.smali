.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static LOG_TAG:Ljava/lang/String;


# instance fields
.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field extensionEF:I

.field pendingExtLoads:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v14, 0x0

    .line 138
    :try_start_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_42

    packed-switch v1, :pswitch_data_1de

    .line 275
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    if-nez v1, :cond_21

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 280
    iput-object v14, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 282
    :cond_21
    :goto_21
    return-void

    .line 140
    :pswitch_22
    :try_start_22
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 141
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 143
    .local v7, "adn":Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_57

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_42} :catch_42

    .line 263
    .end local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :catch_42
    move-exception v10

    .line 264
    .local v10, "exc":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_21

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 270
    iput-object v14, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_21

    .line 148
    .end local v10    # "exc":Ljava/lang/RuntimeException;
    .restart local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    :cond_57
    :try_start_57
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 154
    .local v12, "recordSize":[I
    array-length v1, v12

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6a

    iget v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v2, 0x2

    aget v2, v12, v2

    if-le v1, v2, :cond_74

    .line 155
    :cond_6a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 159
    :cond_74
    const/4 v1, 0x0

    aget v1, v12, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v4

    .line 161
    .local v4, "data":[B
    if-nez v4, :cond_88

    .line 162
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "wrong ADN format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 166
    :cond_88
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iget v3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 169
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_8

    .line 173
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "recordSize":[I
    :pswitch_9f
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 174
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_b8

    .line 175
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "update EF adn record failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :cond_b8
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_8

    .line 182
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_c0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 183
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 185
    .restart local v4    # "data":[B
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 196
    :cond_e0
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    iget v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iget v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 197
    .restart local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    iput-object v7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 199
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 204
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_8

    .line 213
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_106
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 214
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 215
    .restart local v4    # "data":[B
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 217
    .restart local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_12e

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 221
    :cond_12e
    sget-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecord([B)V

    .line 228
    iget v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_8

    .line 234
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_171
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 235
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 237
    .local v9, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_191

    .line 238
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 241
    :cond_191
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 245
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "s":I
    :goto_1a8
    if-ge v11, v13, :cond_8

    .line 246
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    iget v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 247
    .restart local v7    # "adn":Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_1da

    .line 254
    iget v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_1da
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_1da} :catch_42

    .line 245
    :cond_1da
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a8

    .line 138
    nop

    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_106
        :pswitch_171
        :pswitch_22
        :pswitch_9f
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .registers 6
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 95
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 96
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 102
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .registers 7
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 75
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 76
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 77
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 78
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 84
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "adn"    # Lcom/android/internal/telephony/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 119
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 120
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 121
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 122
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 123
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 127
    return-void
.end method
