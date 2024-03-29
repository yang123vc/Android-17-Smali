.class public Landroid/net/rtp/AudioStream;
.super Landroid/net/rtp/RtpStream;
.source "AudioStream.java"


# instance fields
.field private mCodec:Landroid/net/rtp/AudioCodec;

.field private mDtmfType:I

.field private mGroup:Landroid/net/rtp/AudioGroup;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/net/rtp/RtpStream;-><init>(Ljava/net/InetAddress;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    .line 60
    return-void
.end method


# virtual methods
.method public getCodec()Landroid/net/rtp/AudioCodec;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    return-object v0
.end method

.method public getDtmfType()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    return v0
.end method

.method public getGroup()Landroid/net/rtp/AudioGroup;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    return-object v0
.end method

.method public final isBusy()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public join(Landroid/net/rtp/AudioGroup;)V
    .registers 4
    .param p1, "group"    # Landroid/net/rtp/AudioGroup;

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-ne v0, p1, :cond_7

    .line 90
    monitor-exit p0

    .line 101
    :goto_6
    return-void

    .line 92
    :cond_7
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    invoke-virtual {v0, p0}, Landroid/net/rtp/AudioGroup;->remove(Landroid/net/rtp/AudioStream;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    .line 96
    :cond_13
    if-eqz p1, :cond_1e

    .line 97
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    iget v1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    invoke-virtual {p1, p0, v0, v1}, Landroid/net/rtp/AudioGroup;->add(Landroid/net/rtp/AudioStream;Landroid/net/rtp/AudioCodec;I)V

    .line 98
    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    .line 100
    :cond_1e
    monitor-exit p0

    goto :goto_6

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public setCodec(Landroid/net/rtp/AudioCodec;)V
    .registers 4
    .param p1, "codec"    # Landroid/net/rtp/AudioCodec;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_e
    iget v0, p1, Landroid/net/rtp/AudioCodec;->type:I

    iget v1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    if-ne v0, v1, :cond_1c

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by DTMF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1c
    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    .line 127
    return-void
.end method

.method public setDtmfType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_e
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2f

    .line 158
    const/16 v0, 0x60

    if-lt p1, v0, :cond_19

    const/16 v0, 0x7f

    if-le p1, v0, :cond_21

    .line 159
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_21
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    iget v0, v0, Landroid/net/rtp/AudioCodec;->type:I

    if-ne p1, v0, :cond_2f

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2f
    iput p1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    .line 166
    return-void
.end method
