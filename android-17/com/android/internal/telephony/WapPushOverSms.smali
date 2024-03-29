.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 49
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 119
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 120
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 123
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 26
    .param p1, "pdu"    # [B

    .prologue
    .line 139
    const/4 v10, 0x0

    .line 140
    .local v10, "index":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    aget-byte v22, p1, v10

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 141
    .local v19, "transactionId":I
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    aget-byte v22, p1, v11

    move/from16 v0, v22

    and-int/lit16 v15, v0, 0xff

    .line 142
    .local v15, "pduType":I
    const/4 v8, 0x0

    .line 144
    .local v8, "headerLength":I
    const/16 v22, 0x6

    move/from16 v0, v22

    if-eq v15, v0, :cond_23

    const/16 v22, 0x7

    move/from16 v0, v22

    if-eq v15, v0, :cond_23

    .line 147
    const/16 v22, 0x1

    .line 273
    :goto_22
    return v22

    .line 150
    :cond_23
    new-instance v22, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v22

    if-nez v22, :cond_43

    .line 160
    const/16 v22, 0x2

    goto :goto_22

    .line 162
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v22

    add-int/lit8 v10, v22, 0x2

    .line 165
    move v9, v10

    .line 179
    .local v9, "headerStartIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v22

    if-nez v22, :cond_6e

    .line 181
    const/16 v22, 0x2

    goto :goto_22

    .line 184
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    .line 186
    .local v3, "binaryContentType":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v22

    add-int v10, v10, v22

    .line 188
    new-array v7, v8, [B

    .line 189
    .local v7, "header":[B
    const/16 v22, 0x0

    array-length v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v9, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    if-eqz v14, :cond_111

    const-string v22, "application/vnd.wap.coc"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_111

    .line 194
    move-object/from16 v13, p1

    .line 207
    .local v13, "intentData":[B
    :goto_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    add-int v23, v10, v8

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v22

    if-eqz v22, :cond_17e

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v10, v0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v20

    .line 211
    .local v20, "wapAppId":Ljava/lang/String;
    if-nez v20, :cond_f7

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 215
    :cond_f7
    if-nez v14, :cond_12d

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "contentType":Ljava/lang/String;
    :goto_fd
    const/16 v18, 0x1

    .line 221
    .local v18, "processFurther":Z
    :try_start_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_108} :catch_17d

    move-result-object v21

    .line 223
    .local v21, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v21, :cond_12f

    .line 241
    :cond_10b
    :goto_10b
    if-nez v18, :cond_17e

    .line 242
    const/16 v22, 0x1

    goto/16 :goto_22

    .line 196
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v13    # "intentData":[B
    .end local v18    # "processFurther":Z
    .end local v20    # "wapAppId":Ljava/lang/String;
    .end local v21    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_111
    add-int v6, v9, v8

    .line 197
    .local v6, "dataIndex":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v6

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 198
    .restart local v13    # "intentData":[B
    const/16 v22, 0x0

    array-length v0, v13

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v6, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ac

    .end local v6    # "dataIndex":I
    .restart local v20    # "wapAppId":Ljava/lang/String;
    :cond_12d
    move-object v5, v14

    .line 215
    goto :goto_fd

    .line 226
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v18    # "processFurther":Z
    .restart local v21    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_12f
    :try_start_12f
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "transactionId"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string/jumbo v22, "pduType"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v22, "header"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 230
    const-string v22, "data"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 231
    const-string v22, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 234
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v5, v12}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_16e} :catch_17d

    move-result v17

    .line 236
    .local v17, "procRet":I
    and-int/lit8 v22, v17, 0x1

    if-lez v22, :cond_10b

    const v22, 0x8000

    and-int v22, v22, v17

    if-nez v22, :cond_10b

    .line 238
    const/16 v18, 0x0

    goto :goto_10b

    .line 244
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v17    # "procRet":I
    .end local v21    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_17d
    move-exception v22

    .line 250
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v18    # "processFurther":Z
    .end local v20    # "wapAppId":Ljava/lang/String;
    :cond_17e
    if-nez v14, :cond_184

    .line 252
    const/16 v22, 0x2

    goto/16 :goto_22

    .line 257
    :cond_184
    const-string v22, "application/vnd.wap.mms-message"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e0

    .line 258
    const-string v16, "android.permission.RECEIVE_MMS"

    .line 263
    .local v16, "permission":Ljava/lang/String;
    :goto_190
    new-instance v12, Landroid/content/Intent;

    const-string v22, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v22, "transactionId"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string/jumbo v22, "pduType"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v22, "header"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 268
    const-string v22, "data"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 269
    const-string v22, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 273
    const/16 v22, -0x1

    goto/16 :goto_22

    .line 260
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v16    # "permission":Ljava/lang/String;
    :cond_1e0
    const-string v16, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v16    # "permission":Ljava/lang/String;
    goto :goto_190
.end method
