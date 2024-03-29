.class Landroid/speech/tts/AudioPlaybackHandler;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/AudioPlaybackHandler$1;,
        Landroid/speech/tts/AudioPlaybackHandler$ListEntry;,
        Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_THREADING:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x1

.field private static final HIGH_PRIORITY:I = 0x0

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final PLAY_AUDIO:I = 0x5

.field private static final PLAY_SILENCE:I = 0x6

.field private static final SHUTDOWN:I = -0x1

.field private static final SYNTHESIS_DATA_AVAILABLE:I = 0x2

.field private static final SYNTHESIS_DONE:I = 0x3

.field private static final SYNTHESIS_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TTS.AudioPlaybackHandler"


# instance fields
.field private volatile mCurrentParams:Landroid/speech/tts/MessageParams;

.field private final mHandlerThread:Ljava/lang/Thread;

.field private volatile mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

.field private final mQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Landroid/speech/tts/AudioPlaybackHandler$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 50
    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    .line 52
    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;

    invoke-direct {v1, p0, v3}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    const-string v2, "TTS.AudioPlaybackThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    .line 59
    return-void
.end method

.method static synthetic access$300(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/PriorityBlockingQueue;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackHandler;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/MessageParams;)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p1, "x1"    # Landroid/speech/tts/MessageParams;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->setCurrentParams(Landroid/speech/tts/MessageParams;)V

    return-void
.end method

.method static synthetic access$500(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p1, "x1"    # Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->handleMessage(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackHandler;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private static blockUntilCompletion(Landroid/speech/tts/SynthesisMessageParams;)V
    .registers 16
    .param p0, "params"    # Landroid/speech/tts/SynthesisMessageParams;

    .prologue
    const-wide/16 v4, 0x9c4

    .line 526
    iget-object v6, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    .line 527
    .local v6, "audioTrack":Landroid/media/AudioTrack;
    iget v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    div-int v11, v2, v3

    .line 529
    .local v11, "lengthInFrames":I
    const/4 v12, -0x1

    .line 530
    .local v12, "previousPosition":I
    const/4 v9, 0x0

    .line 531
    .local v9, "currentPosition":I
    const-wide/16 v7, 0x0

    .line 534
    .local v7, "blockedTimeMs":J
    :goto_e
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v9

    if-ge v9, v11, :cond_39

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_39

    .line 536
    sub-int v2, v11, v9

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v0, v2

    .line 538
    .local v0, "estimatedTimeMs":J
    const-wide/16 v2, 0x14

    invoke-static/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(JJJ)J

    move-result-wide v13

    .line 543
    .local v13, "sleepTimeMs":J
    if-ne v9, v12, :cond_3a

    .line 546
    add-long/2addr v7, v13

    .line 548
    cmp-long v2, v7, v4

    if-lez v2, :cond_3c

    .line 549
    const-string v2, "TTS.AudioPlaybackHandler"

    const-string v3, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v0    # "estimatedTimeMs":J
    .end local v13    # "sleepTimeMs":J
    :cond_39
    :goto_39
    return-void

    .line 554
    .restart local v0    # "estimatedTimeMs":J
    .restart local v13    # "sleepTimeMs":J
    :cond_3a
    const-wide/16 v7, 0x0

    .line 556
    :cond_3c
    move v12, v9

    .line 562
    :try_start_3d
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_e

    .line 563
    :catch_41
    move-exception v10

    .line 564
    .local v10, "ie":Ljava/lang/InterruptedException;
    goto :goto_39
.end method

.method private static blockUntilDone(Landroid/speech/tts/SynthesisMessageParams;)V
    .registers 2
    .param p0, "params"    # Landroid/speech/tts/SynthesisMessageParams;

    .prologue
    .line 490
    iget-object v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    if-gtz v0, :cond_9

    .line 510
    :cond_8
    :goto_8
    return-void

    .line 494
    :cond_9
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mIsShortUtterance:Z

    if-eqz v0, :cond_11

    .line 506
    invoke-static {p0}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilEstimatedCompletion(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_8

    .line 508
    :cond_11
    invoke-static {p0}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilCompletion(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_8
.end method

.method private static blockUntilEstimatedCompletion(Landroid/speech/tts/SynthesisMessageParams;)V
    .registers 6
    .param p0, "params"    # Landroid/speech/tts/SynthesisMessageParams;

    .prologue
    .line 513
    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    div-int v2, v3, v4

    .line 514
    .local v2, "lengthInFrames":I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    div-int/2addr v3, v4

    int-to-long v0, v3

    .line 519
    .local v0, "estimatedTimeMs":J
    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 523
    :goto_f
    return-void

    .line 520
    :catch_10
    move-exception v3

    goto :goto_f
.end method

.method private static clip(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 630
    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    .end local p2    # "max":F
    :goto_4
    return p2

    .restart local p2    # "max":F
    :cond_5
    cmpg-float v0, p0, p1

    if-gez v0, :cond_b

    move p2, p1

    goto :goto_4

    :cond_b
    move p2, p0

    goto :goto_4
.end method

.method private static final clip(JJJ)J
    .registers 7
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 570
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    .line 578
    .end local p2    # "min":J
    :goto_4
    return-wide p2

    .line 574
    .restart local p2    # "min":J
    :cond_5
    cmp-long v0, p0, p4

    if-lez v0, :cond_b

    move-wide p2, p4

    .line 575
    goto :goto_4

    :cond_b
    move-wide p2, p0

    .line 578
    goto :goto_4
.end method

.method private static createStreamingAudioTrack(Landroid/speech/tts/SynthesisMessageParams;)Landroid/media/AudioTrack;
    .registers 9
    .param p0, "params"    # Landroid/speech/tts/SynthesisMessageParams;

    .prologue
    const/4 v6, 0x1

    .line 582
    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mChannelCount:I

    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->getChannelConfig(I)I

    move-result v3

    .line 583
    .local v3, "channelConfig":I
    iget v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    .line 584
    .local v2, "sampleRateInHz":I
    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioFormat:I

    .line 586
    .local v4, "audioFormat":I
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 588
    .local v7, "minBufferSizeInBytes":I
    const/16 v1, 0x2000

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 590
    .local v5, "bufferSizeInBytes":I
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mStreamType:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 592
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eq v1, v6, :cond_2e

    .line 593
    const-string v1, "TTS.AudioPlaybackHandler"

    const-string v6, "Unable to create audio track."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 595
    const/4 v0, 0x0

    .line 600
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    :goto_2d
    return-object v0

    .line 597
    .restart local v0    # "audioTrack":Landroid/media/AudioTrack;
    :cond_2e
    iput v5, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioBufferSize:I

    .line 599
    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mVolume:F

    iget v6, p0, Landroid/speech/tts/SynthesisMessageParams;->mPan:F

    invoke-static {v0, v1, v6}, Landroid/speech/tts/AudioPlaybackHandler;->setupVolume(Landroid/media/AudioTrack;FF)V

    goto :goto_2d
.end method

.method static getChannelConfig(I)I
    .registers 2
    .param p0, "channelCount"    # I

    .prologue
    .line 604
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 605
    const/4 v0, 0x4

    .line 610
    :goto_4
    return v0

    .line 606
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 607
    const/16 v0, 0xc

    goto :goto_4

    .line 610
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private getCurrentParams()Landroid/speech/tts/MessageParams;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    return-object v0
.end method

.method private handleAudio(Landroid/speech/tts/MessageParams;)V
    .registers 4
    .param p1, "msg"    # Landroid/speech/tts/MessageParams;

    .prologue
    .line 340
    move-object v0, p1

    check-cast v0, Landroid/speech/tts/AudioMessageParams;

    .line 341
    .local v0, "params":Landroid/speech/tts/AudioMessageParams;
    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 345
    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getPlayer()Landroid/speech/tts/BlockingMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/BlockingMediaPlayer;->startAndWait()Z

    .line 346
    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    .line 348
    return-void
.end method

.method private handleMessage(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V
    .registers 5
    .param p1, "entry"    # Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    .prologue
    .line 309
    iget-object v0, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    .line 310
    .local v0, "msg":Landroid/speech/tts/MessageParams;
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 311
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisStart(Landroid/speech/tts/MessageParams;)V

    .line 321
    :cond_a
    :goto_a
    return-void

    .line 312
    :cond_b
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 313
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDataAvailable(Landroid/speech/tts/MessageParams;)V

    goto :goto_a

    .line 314
    :cond_14
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 315
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDone(Landroid/speech/tts/MessageParams;)V

    goto :goto_a

    .line 316
    :cond_1d
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_26

    .line 317
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleAudio(Landroid/speech/tts/MessageParams;)V

    goto :goto_a

    .line 318
    :cond_26
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_a

    .line 319
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSilence(Landroid/speech/tts/MessageParams;)V

    goto :goto_a
.end method

.method private handleSilence(Landroid/speech/tts/MessageParams;)V
    .registers 7
    .param p1, "msg"    # Landroid/speech/tts/MessageParams;

    .prologue
    .line 328
    move-object v0, p1

    check-cast v0, Landroid/speech/tts/SilenceMessageParams;

    .line 329
    .local v0, "params":Landroid/speech/tts/SilenceMessageParams;
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 330
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getSilenceDurationMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1f

    .line 331
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getConditionVariable()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getSilenceDurationMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 333
    :cond_1f
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    .line 335
    return-void
.end method

.method private handleSynthesisDataAvailable(Landroid/speech/tts/MessageParams;)V
    .registers 11
    .param p1, "msg"    # Landroid/speech/tts/MessageParams;

    .prologue
    .line 385
    move-object v3, p1

    check-cast v3, Landroid/speech/tts/SynthesisMessageParams;

    .line 386
    .local v3, "param":Landroid/speech/tts/SynthesisMessageParams;
    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v6

    if-nez v6, :cond_22

    .line 387
    const-string v6, "TTS.AudioPlaybackHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error : null audio track in handleDataAvailable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_21
    return-void

    .line 391
    :cond_22
    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    if-eq v3, v6, :cond_2e

    .line 392
    const-string v6, "TTS.AudioPlaybackHandler"

    const-string v7, "Call to dataAvailable without done() / start()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 396
    :cond_2e
    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 397
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getNextBuffer()Landroid/speech/tts/SynthesisMessageParams$ListEntry;

    move-result-object v1

    .line 399
    .local v1, "bufferCopy":Landroid/speech/tts/SynthesisMessageParams$ListEntry;
    if-nez v1, :cond_40

    .line 400
    const-string v6, "TTS.AudioPlaybackHandler"

    const-string v7, "No buffers available to play."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 404
    :cond_40
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    .line 405
    .local v4, "playState":I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4a

    .line 407
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 409
    :cond_4a
    const/4 v2, 0x0

    .line 410
    .local v2, "count":I
    :goto_4b
    iget-object v6, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    array-length v6, v6

    if-ge v2, v6, :cond_5b

    .line 413
    iget-object v6, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    iget-object v7, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    array-length v7, v7

    invoke-virtual {v0, v6, v2, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    .line 414
    .local v5, "written":I
    if-gtz v5, :cond_66

    .line 419
    .end local v5    # "written":I
    :cond_5b
    iget v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    add-int/2addr v6, v2

    iput v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    .line 420
    iget-object v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v6}, Landroid/speech/tts/EventLogger;->onPlaybackStart()V

    goto :goto_21

    .line 417
    .restart local v5    # "written":I
    :cond_66
    add-int/2addr v2, v5

    .line 418
    goto :goto_4b
.end method

.method private handleSynthesisDone(Landroid/speech/tts/MessageParams;)V
    .registers 7
    .param p1, "msg"    # Landroid/speech/tts/MessageParams;

    .prologue
    const/4 v4, 0x0

    .line 425
    move-object v1, p1

    check-cast v1, Landroid/speech/tts/SynthesisMessageParams;

    .line 428
    .local v1, "params":Landroid/speech/tts/SynthesisMessageParams;
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 430
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    if-nez v0, :cond_b

    .line 468
    :goto_a
    return-void

    .line 436
    :cond_b
    iget v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v3, v1, Landroid/speech/tts/SynthesisMessageParams;->mAudioBufferSize:I

    if-ge v2, v3, :cond_17

    .line 439
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mIsShortUtterance:Z

    .line 440
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 445
    :cond_17
    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilDone(Landroid/speech/tts/SynthesisMessageParams;)V

    .line 452
    monitor-enter p0

    .line 458
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 459
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/speech/tts/SynthesisMessageParams;->setAudioTrack(Landroid/media/AudioTrack;)V

    .line 460
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_38

    .line 461
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->isError()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 462
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    .line 466
    :goto_30
    iput-object v4, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 467
    iget-object v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/EventLogger;->onWriteData()V

    goto :goto_a

    .line 460
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2

    .line 464
    :cond_3b
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    goto :goto_30
.end method

.method private handleSynthesisStart(Landroid/speech/tts/MessageParams;)V
    .registers 7
    .param p1, "msg"    # Landroid/speech/tts/MessageParams;

    .prologue
    .line 361
    move-object v1, p1

    check-cast v1, Landroid/speech/tts/SynthesisMessageParams;

    .line 366
    .local v1, "param":Landroid/speech/tts/SynthesisMessageParams;
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    if-eqz v2, :cond_26

    .line 367
    const-string v2, "TTS.AudioPlaybackHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : Missing call to done() for request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-direct {p0, v2}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDone(Landroid/speech/tts/MessageParams;)V

    .line 372
    :cond_26
    iput-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 375
    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->createStreamingAudioTrack(Landroid/speech/tts/SynthesisMessageParams;)Landroid/media/AudioTrack;

    move-result-object v0

    .line 379
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisMessageParams;->setAudioTrack(Landroid/media/AudioTrack;)V

    .line 380
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 381
    return-void
.end method

.method private declared-synchronized removeAllMessages()V
    .registers 2

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(Ljava/lang/String;)V
    .registers 5
    .param p1, "callingApp"    # Ljava/lang/String;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 238
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/speech/tts/AudioPlaybackHandler$ListEntry;>;"
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    .line 242
    .local v0, "current":Landroid/speech/tts/AudioPlaybackHandler$ListEntry;
    iget-object v2, v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    invoke-virtual {v2}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_7

    .line 236
    .end local v0    # "current":Landroid/speech/tts/AudioPlaybackHandler$ListEntry;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/speech/tts/AudioPlaybackHandler$ListEntry;>;"
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2

    .line 247
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/speech/tts/AudioPlaybackHandler$ListEntry;>;"
    :cond_2a
    monitor-exit p0

    return-void
.end method

.method private setCurrentParams(Landroid/speech/tts/MessageParams;)V
    .registers 2
    .param p1, "p"    # Landroid/speech/tts/MessageParams;

    .prologue
    .line 296
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    .line 297
    return-void
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .registers 10
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    .line 614
    invoke-static {p1, v6, v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(FFF)F

    move-result v1

    .line 615
    .local v1, "vol":F
    const/high16 v4, -0x40800000

    invoke-static {p2, v4, v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(FFF)F

    move-result v0

    .line 616
    .local v0, "panning":F
    move v2, v1

    .line 617
    .local v2, "volLeft":F
    move v3, v1

    .line 618
    .local v3, "volRight":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_24

    .line 619
    sub-float v4, v5, v0

    mul-float/2addr v2, v4

    .line 624
    :cond_16
    :goto_16
    invoke-virtual {p0, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v4

    if-eqz v4, :cond_23

    .line 625
    const-string v4, "TTS.AudioPlaybackHandler"

    const-string v5, "Failed to set volume"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_23
    return-void

    .line 620
    :cond_24
    cmpg-float v4, v0, v6

    if-gez v4, :cond_16

    .line 621
    add-float v4, v5, v0

    mul-float/2addr v3, v4

    goto :goto_16
.end method

.method private stop(Landroid/speech/tts/MessageParams;)V
    .registers 10
    .param p1, "token"    # Landroid/speech/tts/MessageParams;

    .prologue
    const/4 v2, 0x3

    .line 76
    if-nez p1, :cond_4

    .line 104
    .end local p1    # "token":Landroid/speech/tts/MessageParams;
    :cond_3
    :goto_3
    return-void

    .line 82
    .restart local p1    # "token":Landroid/speech/tts/MessageParams;
    :cond_4
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    move-object v0, p1

    .line 83
    check-cast v0, Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v6

    .line 84
    .local v6, "current":Landroid/media/AudioTrack;
    if-eqz v6, :cond_17

    .line 89
    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V

    .line 96
    :cond_17
    iget-object v7, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;ILandroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 97
    .end local v6    # "current":Landroid/media/AudioTrack;
    :cond_26
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 98
    check-cast p1, Landroid/speech/tts/AudioMessageParams;

    .end local p1    # "token":Landroid/speech/tts/MessageParams;
    invoke-virtual {p1}, Landroid/speech/tts/AudioMessageParams;->getPlayer()Landroid/speech/tts/BlockingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/BlockingMediaPlayer;->stop()V

    goto :goto_3

    .line 100
    .restart local p1    # "token":Landroid/speech/tts/MessageParams;
    :cond_37
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 101
    check-cast p1, Landroid/speech/tts/SilenceMessageParams;

    .end local p1    # "token":Landroid/speech/tts/MessageParams;
    invoke-virtual {p1}, Landroid/speech/tts/SilenceMessageParams;->getConditionVariable()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_3
.end method


# virtual methods
.method declared-synchronized enqueueAudio(Landroid/speech/tts/AudioMessageParams;)V
    .registers 6
    .param p1, "token"    # Landroid/speech/tts/AudioMessageParams;

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSilence(Landroid/speech/tts/SilenceMessageParams;)V
    .registers 6
    .param p1, "token"    # Landroid/speech/tts/SilenceMessageParams;

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisDataAvailable(Landroid/speech/tts/SynthesisMessageParams;)V
    .registers 6
    .param p1, "token"    # Landroid/speech/tts/SynthesisMessageParams;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisDone(Landroid/speech/tts/SynthesisMessageParams;)V
    .registers 6
    .param p1, "token"    # Landroid/speech/tts/SynthesisMessageParams;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisStart(Landroid/speech/tts/SynthesisMessageParams;)V
    .registers 6
    .param p1, "token"    # Landroid/speech/tts/SynthesisMessageParams;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSpeaking()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public declared-synchronized quit()V
    .registers 8

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    .line 156
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    .line 157
    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;ILandroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 158
    monitor-exit p0

    return-void

    .line 155
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllItems()V
    .registers 4

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    .line 134
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    .line 135
    .local v0, "current":Landroid/speech/tts/MessageParams;
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 136
    .local v1, "lastSynthesis":Landroid/speech/tts/MessageParams;
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    .line 138
    if-eqz v1, :cond_14

    if-eq v1, v0, :cond_14

    .line 139
    invoke-direct {p0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 141
    :cond_14
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "current":Landroid/speech/tts/MessageParams;
    .end local v1    # "lastSynthesis":Landroid/speech/tts/MessageParams;
    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removePlaybackItems(Ljava/lang/String;)V
    .registers 5
    .param p1, "callingApp"    # Ljava/lang/String;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->removeMessages(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    .line 118
    .local v0, "current":Landroid/speech/tts/MessageParams;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 119
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    .line 122
    :cond_17
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 124
    .local v1, "lastSynthesis":Landroid/speech/tts/MessageParams;
    if-eqz v1, :cond_2a

    if-eq v1, v0, :cond_2a

    invoke-virtual {v1}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 126
    invoke-direct {p0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 128
    :cond_2a
    monitor-exit p0

    return-void

    .line 115
    .end local v0    # "current":Landroid/speech/tts/MessageParams;
    .end local v1    # "lastSynthesis":Landroid/speech/tts/MessageParams;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public start()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method
