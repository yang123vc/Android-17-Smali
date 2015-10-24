.class Ljava/nio/PipeImpl$PipeSourceChannel;
.super Ljava/nio/channels/Pipe$SourceChannel;
.source "PipeImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeSourceChannel"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final fd:Ljava/io/FileDescriptor;

.field final synthetic this$0:Ljava/nio/PipeImpl;


# direct methods
.method private constructor <init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->this$0:Ljava/nio/PipeImpl;

    .line 75
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/Pipe$SourceChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 76
    iput-object p2, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->fd:Ljava/io/FileDescriptor;

    .line 77
    new-instance v0, Ljava/nio/PipeImpl$FdCloser;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Ljava/nio/PipeImpl$FdCloser;-><init>(Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V

    sget v1, Llibcore/io/OsConstants;->O_RDONLY:I

    invoke-static {v0, p2, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/FileChannel;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/nio/PipeImpl;
    .param p2, "x1"    # Ljava/io/FileDescriptor;
    .param p3, "x2"    # Ljava/nio/PipeImpl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/nio/PipeImpl$PipeSourceChannel;-><init>(Ljava/nio/PipeImpl;Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 82
    return-void
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/nio/PipeImpl$PipeSourceChannel;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 86
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
