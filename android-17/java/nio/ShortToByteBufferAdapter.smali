.class final Ljava/nio/ShortToByteBufferAdapter;
.super Ljava/nio/ShortBuffer;
.source "ShortToByteBufferAdapter.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/nio/ShortBuffer;-><init>(I)V

    .line 45
    iput-object p1, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 46
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 47
    iget v0, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:I

    iput v0, p0, Ljava/nio/ShortToByteBufferAdapter;->effectiveDirectAddress:I

    .line 48
    return-void
.end method

.method static asShortBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;
    .registers 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    new-instance v1, Ljava/nio/ShortToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/ShortToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/nio/ShortToByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/ShortToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 53
    .local v0, "buf":Ljava/nio/ShortToByteBufferAdapter;
    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    iput v1, v0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    .line 54
    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    iput v1, v0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    .line 55
    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/ShortToByteBufferAdapter;->mark:I

    .line 56
    iget-object v1, v0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 57
    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 65
    :cond_e
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 66
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 68
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    iget v0, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    .line 70
    iget v0, p0, Ljava/nio/ShortToByteBufferAdapter;->capacity:I

    iput v0, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ShortToByteBufferAdapter;->mark:I

    .line 72
    return-object p0
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .registers 5

    .prologue
    .line 77
    iget-object v2, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ShortToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/ShortToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 79
    .local v1, "buf":Ljava/nio/ShortToByteBufferAdapter;
    iget v2, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    iput v2, v1, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    .line 80
    iget v2, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    iput v2, v1, Ljava/nio/ShortToByteBufferAdapter;->position:I

    .line 81
    iget v2, p0, Ljava/nio/ShortToByteBufferAdapter;->mark:I

    iput v2, v1, Ljava/nio/ShortToByteBufferAdapter;->mark:I

    .line 82
    return-object v1
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 101
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_25

    .line 104
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([SII)V

    .line 108
    :goto_1f
    iget v0, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    .line 109
    return-object p0

    .line 106
    :cond_25
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/HeapByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;->get([SII)V

    goto :goto_1f
.end method

.method public get()S
    .registers 4

    .prologue
    .line 87
    iget v0, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 88
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 90
    :cond_c
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public get(I)S
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljava/nio/ShortToByteBufferAdapter;->checkIndex(I)V

    .line 96
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected protectedArray()[S
    .registers 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "c"    # S

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Ljava/nio/ShortToByteBufferAdapter;->checkIndex(I)V

    .line 154
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 155
    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "c"    # S

    .prologue
    .line 144
    iget v0, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 145
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 147
    :cond_c
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 148
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 160
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/ReadWriteDirectByteBuffer;

    if-eqz v0, :cond_25

    .line 163
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->put([SII)V

    .line 167
    :goto_1f
    iget v0, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    .line 168
    return-object p0

    .line 165
    :cond_25
    iget-object v0, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->put([SII)V

    goto :goto_1f
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .registers 5

    .prologue
    .line 173
    iget-object v2, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ShortToByteBufferAdapter;->limit:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 174
    iget-object v2, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ShortToByteBufferAdapter;->position:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    iget-object v2, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 176
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ShortToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/ShortToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 177
    .local v1, "result":Ljava/nio/ShortBuffer;
    iget-object v2, p0, Ljava/nio/ShortToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 178
    return-object v1
.end method
