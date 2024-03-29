.class Landroid/speech/tts/TextToSpeechService$1;
.super Landroid/speech/tts/ITextToSpeechService$Stub;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .registers 2

    .prologue
    .line 749
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;-><init>()V

    return-void
.end method

.method private varargs checkNonNull([Ljava/lang/Object;)Z
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 857
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 858
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_b

    const/4 v4, 0x0

    .line 860
    .end local v3    # "o":Ljava/lang/Object;
    :goto_a
    return v4

    .line 857
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 860
    .end local v3    # "o":Ljava/lang/Object;
    :cond_e
    const/4 v4, 0x1

    goto :goto_a
.end method

.method private intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 819
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v2, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 820
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 821
    .local v1, "featuresArray":[Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 822
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 823
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 827
    :goto_12
    return-object v1

    .line 825
    :cond_13
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    goto :goto_12
.end method

.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 811
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 812
    const/4 v0, -0x1

    .line 815
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method public isSpeaking()Z
    .registers 2

    .prologue
    .line 791
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 835
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 836
    const/4 v0, -0x1

    .line 839
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method public playAudio(Ljava/lang/String;Landroid/net/Uri;ILandroid/os/Bundle;)I
    .registers 8
    .param p1, "callingApp"    # Ljava/lang/String;
    .param p2, "audioUri"    # Landroid/net/Uri;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    .line 773
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 774
    const/4 v1, -0x1

    .line 778
    :goto_13
    return v1

    .line 777
    :cond_14
    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$1;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p4, p2}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 778
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_13
.end method

.method public playSilence(Ljava/lang/String;JILandroid/os/Bundle;)I
    .registers 12
    .param p1, "callingApp"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "queueMode"    # I
    .param p5, "params"    # Landroid/os/Bundle;

    .prologue
    .line 782
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 783
    const/4 v1, -0x1

    .line 787
    :goto_10
    return v1

    .line 786
    :cond_11
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$1;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p5

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 787
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_10
.end method

.method public setCallback(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechCallback;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .prologue
    .line 844
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 849
    :goto_c
    return-void

    .line 848
    :cond_d
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->setCallback(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechCallback;)V

    goto :goto_c
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)I
    .registers 8
    .param p1, "callingApp"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    .line 752
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 753
    const/4 v1, -0x1

    .line 757
    :goto_13
    return v1

    .line 756
    :cond_14
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$1;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p4, p2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 757
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_13
.end method

.method public stop(Ljava/lang/String;)I
    .registers 4
    .param p1, "callingApp"    # Ljava/lang/String;

    .prologue
    .line 795
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 796
    const/4 v0, -0x1

    .line 799
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$1;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 12
    .param p1, "callingApp"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 762
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v6

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 763
    const/4 v1, -0x1

    .line 769
    :goto_16
    return v1

    .line 766
    :cond_17
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 767
    .local v5, "file":Ljava/io/File;
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$1;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/io/File;)V

    .line 769
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_16
.end method
