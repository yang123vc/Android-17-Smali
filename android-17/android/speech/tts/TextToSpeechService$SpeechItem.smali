.class abstract Landroid/speech/tts/TextToSpeechService$SpeechItem;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SpeechItem"
.end annotation


# instance fields
.field private final mCallingApp:Ljava/lang/String;

.field protected final mParams:Landroid/os/Bundle;

.field private mStarted:Z

.field private mStopped:Z

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p2, "callingApp"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 401
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    .line 399
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    .line 402
    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 403
    iput-object p3, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    .line 404
    return-void
.end method


# virtual methods
.method public dispatchOnDone()V
    .registers 4

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 454
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_13
    return-void
.end method

.method public dispatchOnError()V
    .registers 4

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 470
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_13
    return-void
.end method

.method public dispatchOnStart()V
    .registers 4

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 462
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_13
    return-void
.end method

.method public getCallingApp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallingApp:Ljava/lang/String;

    return-object v0
.end method

.method protected getFloatParam(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 507
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .end local p2    # "defaultValue":F
    :goto_4
    return p2

    .restart local p2    # "defaultValue":F
    :cond_5
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_4
.end method

.method protected getIntParam(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 503
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .end local p2    # "defaultValue":I
    :goto_4
    return p2

    .restart local p2    # "defaultValue":I
    :cond_5
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_4
.end method

.method public getPan()F
    .registers 3

    .prologue
    .line 491
    const-string/jumbo v0, "pan"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getFloatParam(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getStreamType()I
    .registers 3

    .prologue
    .line 483
    const-string/jumbo v0, "streamType"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 499
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_4
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4
.end method

.method public getUtteranceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 495
    const-string/jumbo v0, "utteranceId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .registers 3

    .prologue
    .line 487
    const-string/jumbo v0, "volume"

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getFloatParam(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected declared-synchronized isStopped()Z
    .registers 2

    .prologue
    .line 475
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract isValid()Z
.end method

.method public play()I
    .registers 3

    .prologue
    .line 425
    monitor-enter p0

    .line 426
    :try_start_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    if-eqz v0, :cond_11

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0

    .line 429
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    .line 430
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e

    .line 431
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->playImpl()I

    move-result v0

    return v0
.end method

.method protected abstract playImpl()I
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 441
    monitor-enter p0

    .line 442
    :try_start_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    if-eqz v0, :cond_11

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0

    .line 445
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    .line 446
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e

    .line 447
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stopImpl()V

    .line 448
    return-void
.end method

.method protected abstract stopImpl()V
.end method
