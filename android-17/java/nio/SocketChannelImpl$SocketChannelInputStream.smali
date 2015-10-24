.class Ljava/nio/SocketChannelImpl$SocketChannelInputStream;
.super Ljava/io/InputStream;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketChannelInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .registers 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 630
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    .line 631
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 639
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_e

    .line 644
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v2

    .line 646
    :cond_e
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 647
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 648
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .end local v1    # "result":I
    :goto_1c
    return v1

    .restart local v1    # "result":I
    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    goto :goto_1c
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 654
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_12

    .line 655
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 657
    :cond_12
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 658
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method
