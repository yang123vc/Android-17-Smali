.class Ljava/nio/channels/Channels$ChannelInputStream;
.super Ljava/io/InputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 209
    if-nez p1, :cond_b

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 212
    :cond_b
    iput-object p1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 213
    return-void
.end method


# virtual methods
.method public available()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v3, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    instance-of v3, v3, Ljava/nio/channels/FileChannel;

    if-eqz v3, :cond_21

    .line 227
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 228
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 229
    .local v1, "result":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_1f

    const v3, 0x7fffffff

    .line 231
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v1    # "result":J
    :goto_1e
    return v3

    .line 229
    .restart local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "result":J
    :cond_1f
    long-to-int v3, v1

    goto :goto_1e

    .line 231
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v1    # "result":J
    :cond_21
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    goto :goto_1e
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 238
    monitor-exit p0

    return-void

    .line 237
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 6
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 221
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v1}, Ljava/nio/channels/Channels;->checkBlocking(Ljava/nio/channels/Channel;)V

    .line 222
    iget-object v1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v1

    monitor-exit p0

    return v1

    .line 220
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method
