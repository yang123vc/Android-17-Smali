.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 49
    if-nez p0, :cond_3

    .line 59
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_2
    return-void

    .line 52
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_d

    .line 53
    check-cast p0, Ljava/nio/DirectByteBuffer;

    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->free()V

    goto :goto_2

    .line 54
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_d
    instance-of v0, p0, Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_17

    .line 55
    check-cast p0, Ljava/nio/MappedByteBufferAdapter;

    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/MappedByteBufferAdapter;->free()V

    goto :goto_2

    .line 57
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getDirectBufferAddress(Ljava/nio/Buffer;)I
    .registers 2
    .param p0, "buffer"    # Ljava/nio/Buffer;

    .prologue
    .line 45
    iget v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    return v0
.end method

.method public static getFD(Ljava/nio/channels/FileChannel;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 65
    check-cast p0, Ljava/nio/FileChannelImpl;

    .end local p0    # "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newFileChannel(Ljava/lang/Object;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;
    .registers 4
    .param p0, "stream"    # Ljava/lang/Object;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I

    .prologue
    .line 72
    new-instance v0, Ljava/nio/FileChannelImpl;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/FileChannelImpl;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static unsafeArray(Ljava/nio/ByteBuffer;)[B
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 80
    check-cast p0, Ljava/nio/HeapByteBuffer;

    .end local p0    # "b":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    return-object v0
.end method

.method public static unsafeArrayOffset(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 88
    check-cast p0, Ljava/nio/HeapByteBuffer;

    .end local p0    # "b":Ljava/nio/ByteBuffer;
    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    return v0
.end method
