.class final Ljava/nio/LongToByteBufferAdapter;
.super Ljava/nio/LongBuffer;
.source "LongToByteBufferAdapter.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Ljava/nio/LongBuffer;-><init>(I)V

    .line 46
    iput-object p1, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 48
    iget v0, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:I

    iput v0, p0, Ljava/nio/LongToByteBufferAdapter;->effectiveDirectAddress:I

    .line 49
    return-void
.end method

.method static asLongBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;
    .registers 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    new-instance v1, Ljava/nio/LongToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/LongToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .registers 4

    .prologue
    .line 53
    new-instance v0, Ljava/nio/LongToByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/LongToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 54
    .local v0, "buf":Ljava/nio/LongToByteBufferAdapter;
    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    iput v1, v0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    .line 55
    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    iput v1, v0, Ljava/nio/LongToByteBufferAdapter;->position:I

    .line 56
    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/LongToByteBufferAdapter;->mark:I

    .line 57
    iget-object v1, v0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 58
    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 64
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 66
    :cond_e
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 67
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 69
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    iget v0, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    .line 71
    iget v0, p0, Ljava/nio/LongToByteBufferAdapter;->capacity:I

    iput v0, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/LongToByteBufferAdapter;->mark:I

    .line 73
    return-object p0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .registers 5

    .prologue
    .line 78
    iget-object v2, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/LongToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/LongToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 80
    .local v1, "buf":Ljava/nio/LongToByteBufferAdapter;
    iget v2, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    iput v2, v1, Ljava/nio/LongToByteBufferAdapter;->limit:I

    .line 81
    iget v2, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    iput v2, v1, Ljava/nio/LongToByteBufferAdapter;->position:I

    .line 82
    iget v2, p0, Ljava/nio/LongToByteBufferAdapter;->mark:I

    iput v2, v1, Ljava/nio/LongToByteBufferAdapter;->mark:I

    .line 83
    return-object v1
.end method

.method public get()J
    .registers 4

    .prologue
    .line 88
    iget v0, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 89
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 91
    :cond_c
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Ljava/nio/LongToByteBufferAdapter;->checkIndex(I)V

    .line 97
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 102
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_25

    .line 105
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([JII)V

    .line 109
    :goto_1f
    iget v0, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    .line 110
    return-object p0

    .line 107
    :cond_25
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/HeapByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;->get([JII)V

    goto :goto_1f
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected protectedArray()[J
    .registers 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public put(IJ)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "c"    # J

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Ljava/nio/LongToByteBufferAdapter;->checkIndex(I)V

    .line 155
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 156
    return-object p0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "c"    # J

    .prologue
    .line 145
    iget v0, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 146
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 148
    :cond_c
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 149
    return-object p0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .registers 6
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 161
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 162
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/ReadWriteDirectByteBuffer;

    if-eqz v0, :cond_25

    .line 164
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->put([JII)V

    .line 168
    :goto_1f
    iget v0, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    .line 169
    return-object p0

    .line 166
    :cond_25
    iget-object v0, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->put([JII)V

    goto :goto_1f
.end method

.method public slice()Ljava/nio/LongBuffer;
    .registers 5

    .prologue
    .line 174
    iget-object v2, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/LongToByteBufferAdapter;->limit:I

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 175
    iget-object v2, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/LongToByteBufferAdapter;->position:I

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    iget-object v2, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/LongToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/LongToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 178
    .local v1, "result":Ljava/nio/LongBuffer;
    iget-object v2, p0, Ljava/nio/LongToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 179
    return-object v1
.end method
