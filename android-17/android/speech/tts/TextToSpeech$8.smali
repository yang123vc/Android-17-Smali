.class Landroid/speech/tts/TextToSpeech$8;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$loc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .registers 3

    .prologue
    .line 1004
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 8
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    if-nez v4, :cond_a

    .line 1008
    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1029
    :goto_9
    return-object v4

    .line 1010
    :cond_a
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, "language":Ljava/lang/String;
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "country":Ljava/lang/String;
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "variant":Ljava/lang/String;
    invoke-interface {p1, v1, v0, v3}, Landroid/speech/tts/ITextToSpeechService;->loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1018
    .local v2, "result":I
    if-ltz v2, :cond_4e

    .line 1019
    const/4 v4, 0x2

    if-ge v2, v4, :cond_2c

    .line 1020
    const-string v3, ""

    .line 1021
    const/4 v4, 0x1

    if-ge v2, v4, :cond_2c

    .line 1022
    const-string v0, ""

    .line 1025
    :cond_2c
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "language"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "country"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "variant"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_9
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$8;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method