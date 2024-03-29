.class Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 174
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 175
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 176
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 178
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .registers 5

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 298
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 300
    .local v0, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v0, v1, :cond_1c

    .line 301
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1c
    monitor-exit v2

    .line 304
    return-void

    .line 303
    .end local v0    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 308
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_5f

    .line 312
    :cond_44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 313
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_86

    .line 316
    :cond_6b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 317
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    :cond_86
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a0

    .line 320
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/Intent;->toShortString(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    :cond_a0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_a8

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_bf

    .line 324
    :cond_a8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 325
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 327
    :cond_bf
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_15

    .line 288
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_19

    .line 292
    :cond_15
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    .line 294
    return-void

    .line 292
    :catchall_19
    move-exception v0

    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    throw v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I
    .registers 17
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I
    .registers 37
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 191
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v3, :cond_1b4

    .line 192
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v4, 0x40000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2c

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 195
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 197
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v3, :cond_91

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 199
    .local v5, "finalIntent":Landroid/content/Intent;
    :goto_3f
    if-eqz p2, :cond_9a

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v20

    .line 201
    .local v20, "changes":I
    and-int/lit8 v3, v20, 0x2

    if-nez v3, :cond_59

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    .line 207
    .end local v20    # "changes":I
    :cond_59
    :goto_59
    and-int/lit8 p9, p9, -0x4

    .line 208
    and-int p10, p10, p9

    .line 209
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v3

    xor-int/lit8 v4, p9, -0x1

    and-int/2addr v3, v4

    or-int v3, v3, p10

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 213
    .local v22, "origId":J
    if-eqz p4, :cond_a3

    const/16 v24, 0x1

    .line 214
    .local v24, "sendFinish":Z
    :goto_71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_97

    packed-switch v3, :pswitch_data_1bc

    .line 269
    :goto_7a
    if-eqz v24, :cond_8b

    .line 271
    :try_start_7c
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p4

    invoke-interface/range {v6 .. v12}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8b} :catch_1b8
    .catchall {:try_start_7c .. :try_end_8b} :catchall_97

    .line 277
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    const/4 v3, 0x0

    monitor-exit v25

    .line 282
    .end local v5    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "origId":J
    .end local v24    # "sendFinish":Z
    :goto_90
    return v3

    .line 197
    :cond_91
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    goto :goto_3f

    .line 281
    :catchall_97
    move-exception v3

    monitor-exit v25
    :try_end_99
    .catchall {:try_start_8b .. :try_end_99} :catchall_97

    throw v3

    .line 205
    .restart local v5    # "finalIntent":Landroid/content/Intent;
    :cond_9a
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_97

    goto :goto_59

    .line 213
    .restart local v22    # "origId":J
    :cond_a3
    const/16 v24, 0x0

    goto :goto_71

    .line 217
    .restart local v24    # "sendFinish":Z
    :pswitch_a6
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_12b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_12b

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    new-array v0, v3, [Landroid/content/Intent;

    move-object/from16 v18, v0

    .line 219
    .local v18, "allIntents":[Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 220
    .local v19, "allResolvedTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v7, v7

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v3, :cond_fe

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v7, v7

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :cond_fe
    move-object/from16 v0, v18

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-object v5, v18, v3

    .line 227
    move-object/from16 v0, v19

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-object p3, v19, v3

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p6

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I
    :try_end_11d
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_11d} :catch_11f
    .catchall {:try_start_a6 .. :try_end_11d} :catchall_97

    goto/16 :goto_7a

    .line 235
    .end local v18    # "allIntents":[Landroid/content/Intent;
    .end local v19    # "allResolvedTypes":[Ljava/lang/String;
    :catch_11f
    move-exception v21

    .line 236
    .local v21, "e":Ljava/lang/RuntimeException;
    :try_start_120
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_129
    .catchall {:try_start_120 .. :try_end_129} :catchall_97

    goto/16 :goto_7a

    .line 231
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :cond_12b
    :try_start_12b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v10, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I
    :try_end_13f
    .catch Ljava/lang/RuntimeException; {:try_start_12b .. :try_end_13f} :catch_11f
    .catchall {:try_start_12b .. :try_end_13f} :catchall_97

    goto/16 :goto_7a

    .line 241
    :pswitch_141
    :try_start_141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v3, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v3, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move/from16 v11, p1

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_162
    .catchall {:try_start_141 .. :try_end_162} :catchall_97

    goto/16 :goto_7a

    .line 248
    :pswitch_164
    :try_start_164
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz p4, :cond_18a

    const/16 v16, 0x1

    :goto_178
    const/16 v17, 0x0

    move-object v9, v5

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p1

    move-object/from16 v15, p5

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_186
    .catch Ljava/lang/RuntimeException; {:try_start_164 .. :try_end_186} :catch_18d
    .catchall {:try_start_164 .. :try_end_186} :catchall_97

    .line 252
    const/16 v24, 0x0

    goto/16 :goto_7a

    .line 248
    :cond_18a
    const/16 v16, 0x0

    goto :goto_178

    .line 253
    :catch_18d
    move-exception v21

    .line 254
    .restart local v21    # "e":Ljava/lang/RuntimeException;
    :try_start_18e
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_97

    goto/16 :goto_7a

    .line 260
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :pswitch_199
    :try_start_199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_1a6
    .catch Ljava/lang/RuntimeException; {:try_start_199 .. :try_end_1a6} :catch_1a8
    .catchall {:try_start_199 .. :try_end_1a6} :catchall_97

    goto/16 :goto_7a

    .line 262
    :catch_1a8
    move-exception v21

    .line 263
    .restart local v21    # "e":Ljava/lang/RuntimeException;
    :try_start_1a9
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startService intent"

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7a

    .line 281
    .end local v5    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "origId":J
    .end local v24    # "sendFinish":Z
    :cond_1b4
    monitor-exit v25
    :try_end_1b5
    .catchall {:try_start_1a9 .. :try_end_1b5} :catchall_97

    .line 282
    const/4 v3, -0x6

    goto/16 :goto_90

    .line 273
    .restart local v5    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "origId":J
    .restart local v24    # "sendFinish":Z
    :catch_1b8
    move-exception v3

    goto/16 :goto_8b

    .line 214
    nop

    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_164
        :pswitch_a6
        :pswitch_141
        :pswitch_199
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 330
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 331
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 341
    :goto_8
    return-object v1

    .line 333
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 334
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    goto :goto_8
.end method
