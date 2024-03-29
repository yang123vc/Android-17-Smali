.class Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthesisToFileSpeechItem"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .param p2, "callingApp"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "file"    # Ljava/io/File;

    .prologue
    .line 622
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 623
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 624
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->mFile:Ljava/io/File;

    .line 625
    return-void
.end method

.method private checkFile(Ljava/io/File;)Z
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 657
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 658
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists, deleting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_44

    .line 660
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_43
    return v1

    .line 664
    :cond_44
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_87

    .line 665
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_62} :catch_63

    goto :goto_43

    .line 673
    :catch_63
    move-exception v0

    .line 674
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 668
    .end local v0    # "e":Ljava/io/IOException;
    :cond_87
    :try_start_87
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 669
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_a5} :catch_63

    goto :goto_43

    .line 672
    :cond_a6
    const/4 v1, 0x1

    goto :goto_43
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .registers 3

    .prologue
    .line 637
    new-instance v0, Landroid/speech/tts/FileSynthesisCallback;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/speech/tts/FileSynthesisCallback;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 629
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 630
    const/4 v0, 0x0

    .line 632
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->mFile:Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->checkFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_7
.end method

.method protected playImpl()I
    .registers 2

    .prologue
    .line 642
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->dispatchOnStart()V

    .line 643
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->playImpl()I

    move-result v0

    .line 644
    .local v0, "status":I
    if-nez v0, :cond_d

    .line 645
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->dispatchOnDone()V

    .line 649
    :goto_c
    return v0

    .line 647
    :cond_d
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->dispatchOnError()V

    goto :goto_c
.end method
