.class Lcom/android/internal/telephony/cat/PlayToneParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field settings:Lcom/android/internal/telephony/cat/ToneSettings;

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V
    .registers 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "tone"    # Lcom/android/internal/telephony/cat/Tone;
    .param p4, "duration"    # Lcom/android/internal/telephony/cat/Duration;
    .param p5, "vibrate"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 85
    iput-object p2, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-direct {v0, p4, p3, p5}, Lcom/android/internal/telephony/cat/ToneSettings;-><init>(Lcom/android/internal/telephony/cat/Duration;Lcom/android/internal/telephony/cat/Tone;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 87
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_c

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
