.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x66

.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .registers 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .registers 18
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 402
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    move-object v0, v14

    check-cast v0, [B

    move-object v13, v0

    .line 418
    .local v13, "receivedPdu":[B
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v5, v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 419
    .local v5, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v14, "gsm.operator.numeric"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, "plmn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 421
    .local v1, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 422
    .local v10, "lac":I
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 425
    .local v2, "cid":I
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    const/4 v15, 0x1

    if-le v14, v15, :cond_97

    .line 427
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v3, v5, v12, v10, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 430
    .local v3, "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    .line 432
    .local v11, "pdus":[[B
    if-nez v11, :cond_48

    .line 435
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    new-array v11, v14, [[B

    .line 437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_48
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    add-int/lit8 v14, v14, -0x1

    aput-object v13, v11, v14

    .line 443
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4f
    array-length v14, v11

    if-ge v6, v14, :cond_5a

    .line 444
    aget-object v14, v11, v6

    if-nez v14, :cond_57

    .line 476
    .end local v1    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v2    # "cid":I
    .end local v3    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v5    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v6    # "i":I
    .end local v10    # "lac":I
    .end local v11    # "pdus":[[B
    .end local v12    # "plmn":Ljava/lang/String;
    .end local v13    # "receivedPdu":[B
    :cond_56
    :goto_56
    return-void

    .line 443
    .restart local v1    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v2    # "cid":I
    .restart local v3    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v5    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v6    # "i":I
    .restart local v10    # "lac":I
    .restart local v11    # "pdus":[[B
    .restart local v12    # "plmn":Ljava/lang/String;
    .restart local v13    # "receivedPdu":[B
    :cond_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    .line 451
    :cond_5a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v3    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v6    # "i":I
    :goto_61
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v8

    .line 459
    .local v8, "isEmergencyMessage":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 466
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_78
    :goto_78
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_56

    .line 467
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 469
    .local v7, "info":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    invoke-virtual {v7, v12, v10, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_78

    .line 470
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8d} :catch_8e

    goto :goto_78

    .line 473
    .end local v1    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v2    # "cid":I
    .end local v5    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v7    # "info":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8    # "isEmergencyMessage":Z
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v10    # "lac":I
    .end local v11    # "pdus":[[B
    .end local v12    # "plmn":Ljava/lang/String;
    .end local v13    # "receivedPdu":[B
    :catch_8e
    move-exception v4

    .line 474
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v14, "GSM"

    const-string v15, "Error in decoding SMS CB pdu"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 454
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v2    # "cid":I
    .restart local v5    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10    # "lac":I
    .restart local v12    # "plmn":Ljava/lang/String;
    .restart local v13    # "receivedPdu":[B
    :cond_97
    const/4 v14, 0x1

    :try_start_98
    new-array v11, v14, [[B

    .line 455
    .restart local v11    # "pdus":[[B
    const/4 v14, 0x0

    aput-object v13, v11, v14
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_9d} :catch_8e

    goto :goto_61
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x1

    .line 128
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, "pduString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 131
    .local v6, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_51

    .line 132
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 133
    .local v7, "tpStatus":I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 134
    .local v4, "messageRef":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_18
    if-ge v2, v0, :cond_51

    .line 135
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 136
    .local v8, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_56

    .line 138
    const/16 v9, 0x40

    if-ge v7, v9, :cond_2e

    const/16 v9, 0x20

    if-ge v7, v9, :cond_33

    .line 139
    :cond_2e
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_33
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 142
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, "fillIn":Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 144
    const-string v9, "format"

    const-string v10, "3gpp"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :try_start_4b
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_51
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4b .. :try_end_51} :catch_59

    .line 154
    .end local v0    # "count":I
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "messageRef":I
    .end local v7    # "tpStatus":I
    .end local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_51
    :goto_51
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 155
    return-void

    .line 134
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "messageRef":I
    .restart local v7    # "tpStatus":I
    .restart local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 147
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_59
    move-exception v9

    goto :goto_51
.end method

.method private static resultToCause(I)I
    .registers 2
    .param p0, "rc"    # I

    .prologue
    .line 303
    packed-switch p0, :pswitch_data_c

    .line 312
    :pswitch_3
    const/16 v0, 0xff

    :goto_5
    return v0

    .line 307
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 309
    :pswitch_8
    const/16 v0, 0xd3

    goto :goto_5

    .line 303
    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 6
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 300
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 4
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 266
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 11
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 162
    if-nez p1, :cond_e

    .line 163
    const-string v4, "GSM"

    const-string v5, "dispatchMessage: message is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v4, 0x2

    .line 233
    :cond_d
    :goto_d
    return v4

    :cond_e
    move-object v1, p1

    .line 167
    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 169
    .local v1, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 172
    const-string v5, "GSM"

    const-string v6, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 177
    :cond_1f
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 178
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v3

    .line 183
    .local v3, "ust":Lcom/android/internal/telephony/gsm/UsimServiceTable;
    if-eqz v3, :cond_43

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 185
    const-string v4, "GSM"

    const-string v5, "Received SMS-PP data download, sending to UICC."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v4

    goto :goto_d

    .line 188
    :cond_43
    const-string v4, "GSM"

    const-string v7, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "smsc":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x66

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v4, v6, v2, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move v4, v5

    .line 195
    goto :goto_d

    .line 199
    .end local v2    # "smsc":Ljava/lang/String;
    .end local v3    # "ust":Lcom/android/internal/telephony/gsm/UsimServiceTable;
    :cond_6b
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v7, :cond_77

    .line 201
    const-string v5, "GSM"

    const-string v6, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 207
    :cond_77
    const/4 v0, 0x0

    .line 208
    .local v0, "handled":Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 209
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v4, v5}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 210
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 222
    :cond_87
    :goto_87
    if-nez v0, :cond_d

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_ad

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v4

    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v4, v5, :cond_ad

    move v4, v6

    .line 230
    goto/16 :goto_d

    .line 214
    :cond_9c
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 216
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    goto :goto_87

    .line 233
    :cond_ad
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v4

    goto/16 :goto_d
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 79
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    const-string v0, "3gpp"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 94
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 116
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 118
    :goto_a
    return-void

    .line 96
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_a

    .line 100
    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_a

    .line 104
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 105
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_31

    .line 106
    const-string v1, "GSM"

    const-string v2, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_a

    .line 109
    :cond_31
    const-string v1, "GSM"

    const-string v2, "Failed to write SMS-PP message to UICC"

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xff

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_a

    .line 94
    :pswitch_data_42
    .packed-switch 0x64
        :pswitch_b
        :pswitch_13
        :pswitch_1b
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 240
    if-eqz p6, :cond_11

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 242
    .local v0, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_13

    .line 243
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5, p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 247
    :goto_10
    return-void

    .line 240
    .end local v0    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 245
    .restart local v0    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_13
    const-string v1, "GSM"

    const-string v2, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 20
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z

    .prologue
    .line 274
    if-eqz p7, :cond_22

    const/4 v5, 0x1

    :goto_3
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    iget v8, p4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v9, p4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 277
    .local v10, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v10, :cond_24

    .line 278
    iget-object v2, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v3, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 282
    :goto_21
    return-void

    .line 274
    .end local v10    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_22
    const/4 v5, 0x0

    goto :goto_3

    .line 280
    .restart local v10    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_24
    const-string v2, "GSM"

    const-string v3, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 287
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 289
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 290
    .local v3, "smsc":[B
    const-string/jumbo v4, "pdu"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 292
    .local v1, "pdu":[B
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 293
    .local v2, "reply":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 294
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 253
    if-eqz p5, :cond_11

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 255
    .local v0, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_13

    .line 256
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 260
    :goto_10
    return-void

    .line 253
    .end local v0    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 258
    .restart local v0    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_13
    const-string v1, "GSM"

    const-string v2, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
