.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mCallingApp:Ljava/lang/String;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile mDone:Z

.field private final mLogger:Landroid/speech/tts/EventLogger;

.field private final mPan:F

.field private final mStateLock:Ljava/lang/Object;

.field private mStopped:Z

.field private final mStreamType:I

.field private mToken:Landroid/speech/tts/SynthesisMessageParams;

.field private final mVolume:F


# direct methods
.method constructor <init>(IFFLandroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;Landroid/speech/tts/EventLogger;)V
    .registers 10
    .param p1, "streamType"    # I
    .param p2, "volume"    # F
    .param p3, "pan"    # F
    .param p4, "audioTrackHandler"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p5, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p6, "callingApp"    # Ljava/lang/String;
    .param p7, "logger"    # Landroid/speech/tts/EventLogger;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    .line 61
    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    .line 63
    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 72
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStreamType:I

    .line 73
    iput p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mVolume:F

    .line 74
    iput p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mPan:F

    .line 75
    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 76
    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 77
    iput-object p6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallingApp:Ljava/lang/String;

    .line 78
    iput-object p7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    .line 79
    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v3

    if-gt p3, v3, :cond_9

    if-gtz p3, :cond_28

    .line 178
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer is too large or of zero length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_28
    const/4 v1, 0x0

    .line 183
    .local v1, "token":Landroid/speech/tts/SynthesisMessageParams;
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_2c
    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    if-eqz v4, :cond_34

    iget-boolean v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v4, :cond_37

    .line 185
    :cond_34
    const/4 v2, -0x1

    monitor-exit v3

    .line 200
    :goto_36
    return v2

    .line 187
    :cond_37
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    .line 188
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_4d

    .line 191
    new-array v0, p3, [B

    .line 192
    .local v0, "bufferCopy":[B
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisMessageParams;->addBuffer([B)V

    .line 196
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v3, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisDataAvailable(Landroid/speech/tts/SynthesisMessageParams;)V

    .line 198
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/EventLogger;->onEngineDataReceived()V

    goto :goto_36

    .line 188
    .end local v0    # "bufferCopy":[B
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public done()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "token":Landroid/speech/tts/SynthesisMessageParams;
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 209
    :try_start_5
    iget-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v3, :cond_12

    .line 210
    const-string v3, "PlaybackSynthesisRequest"

    const-string v4, "Duplicate call to done()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v2

    .line 226
    :goto_11
    return v1

    .line 214
    :cond_12
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 216
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    if-nez v3, :cond_1e

    .line 217
    monitor-exit v2

    goto :goto_11

    .line 221
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1

    .line 220
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    .line 221
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    .line 223
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisDone(Landroid/speech/tts/SynthesisMessageParams;)V

    .line 224
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onEngineComplete()V

    .line 226
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public error()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v0}, Landroid/speech/tts/EventLogger;->onError()V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->stopImpl(Z)V

    .line 236
    return-void
.end method

.method public getMaxBufferSize()I
    .registers 2

    .prologue
    .line 133
    const/16 v0, 0x2000

    return v0
.end method

.method isDone()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    return v0
.end method

.method public start(III)I
    .registers 16
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .prologue
    const/4 v1, -0x1

    .line 148
    invoke-static {p3}, Landroid/speech/tts/AudioPlaybackHandler;->getChannelConfig(I)I

    move-result v10

    .line 149
    .local v10, "channelConfig":I
    if-nez v10, :cond_20

    .line 150
    const-string v2, "PlaybackSynthesisRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported number of channels :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_1f
    return v1

    .line 154
    :cond_20
    iget-object v11, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v11

    .line 155
    :try_start_23
    iget-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v2, :cond_2c

    .line 157
    monitor-exit v11

    goto :goto_1f

    .line 165
    :catchall_29
    move-exception v1

    monitor-exit v11
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_29

    throw v1

    .line 159
    :cond_2c
    :try_start_2c
    new-instance v0, Landroid/speech/tts/SynthesisMessageParams;

    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStreamType:I

    iget v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mVolume:F

    iget v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mPan:F

    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v8, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallingApp:Ljava/lang/String;

    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v9}, Landroid/speech/tts/SynthesisMessageParams;-><init>(IIIIFFLandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;Landroid/speech/tts/EventLogger;)V

    .line 162
    .local v0, "params":Landroid/speech/tts/SynthesisMessageParams;
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisStart(Landroid/speech/tts/SynthesisMessageParams;)V

    .line 164
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    .line 165
    monitor-exit v11
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_29

    .line 167
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method stop()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->stopImpl(Z)V

    .line 84
    return-void
.end method

.method stopImpl(Z)V
    .registers 6
    .param p1, "wasError"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onStopped()V

    .line 93
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_8
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v1, :cond_16

    .line 95
    const-string v1, "PlaybackSynthesisRequest"

    const-string/jumbo v3, "stop() called twice"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v2

    .line 127
    :cond_15
    :goto_15
    return-void

    .line 99
    :cond_16
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    .line 100
    .local v0, "token":Landroid/speech/tts/SynthesisMessageParams;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    .line 101
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2c

    .line 103
    if-eqz v0, :cond_2f

    .line 108
    invoke-virtual {v0, p1}, Landroid/speech/tts/SynthesisMessageParams;->setIsError(Z)V

    .line 109
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisMessageParams;->clearBuffers()V

    .line 110
    if-eqz p1, :cond_15

    .line 112
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisDone(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_15

    .line 101
    .end local v0    # "token":Landroid/speech/tts/SynthesisMessageParams;
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    .line 120
    .restart local v0    # "token":Landroid/speech/tts/SynthesisMessageParams;
    :cond_2f
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onWriteData()V

    .line 122
    if-eqz p1, :cond_15

    .line 124
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    goto :goto_15
.end method
