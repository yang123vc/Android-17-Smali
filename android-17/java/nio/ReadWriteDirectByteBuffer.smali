.class final Ljava/nio/ReadWriteDirectByteBuffer;
.super Ljava/nio/DirectByteBuffer;
.source "ReadWriteDirectByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .line 46
    invoke-static {p1}, Ljava/nio/MemoryBlock;->allocate(I)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 47
    return-void
.end method

.method constructor <init>(II)V
    .registers 5
    .param p1, "address"    # I
    .param p2, "capacity"    # I

    .prologue
    .line 51
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Ljava/nio/MemoryBlock;->wrapFromJni(IJ)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/nio/MemoryBlock;II)V
    .registers 4
    .param p1, "block"    # Ljava/nio/MemoryBlock;
    .param p2, "capacity"    # I
    .param p3, "offset"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 56
    return-void
.end method

.method static copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;
    .registers 6
    .param p0, "other"    # Ljava/nio/DirectByteBuffer;
    .param p1, "markOfOther"    # I

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 38
    .local v0, "buf":Ljava/nio/ReadWriteDirectByteBuffer;
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 7

    .prologue
    .line 65
    const/4 v1, 0x0

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 66
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 67
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    .line 69
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "value"    # B

    .prologue
    .line 84
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 85
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 87
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 88
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(I)V

    .line 94
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 95
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 100
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    .line 101
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->pokeByteArray(I[BII)V

    .line 102
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 103
    return-object p0
.end method

.method final put([CII)V
    .registers 11
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 107
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 108
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeCharArray(I[CIIZ)V

    .line 109
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 110
    return-void
.end method

.method final put([DII)V
    .registers 11
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 113
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 114
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeDoubleArray(I[DIIZ)V

    .line 115
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 116
    return-void
.end method

.method final put([FII)V
    .registers 11
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 119
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 120
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeFloatArray(I[FIIZ)V

    .line 121
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 122
    return-void
.end method

.method final put([III)V
    .registers 11
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 125
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 126
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeIntArray(I[IIIZ)V

    .line 127
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 128
    return-void
.end method

.method final put([JII)V
    .registers 11
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 131
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 132
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeLongArray(I[JIIZ)V

    .line 133
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 134
    return-void
.end method

.method final put([SII)V
    .registers 11
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 137
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 138
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeShortArray(I[SIIZ)V

    .line 139
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 140
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "value"    # C

    .prologue
    .line 144
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 145
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 146
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 148
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 149
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 150
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 156
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 157
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "value"    # D

    .prologue
    .line 162
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 163
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 164
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 166
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    iget-object v5, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 167
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 168
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 173
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 174
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-object v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 175
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "value"    # F

    .prologue
    .line 180
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 181
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 182
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 184
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 185
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 186
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 191
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 192
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 193
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 198
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 199
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 200
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 202
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 203
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 204
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 209
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 210
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 211
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 227
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 228
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 229
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "value"    # J

    .prologue
    .line 216
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 217
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 218
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 220
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, p2, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 221
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 222
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 245
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 246
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 247
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "value"    # S

    .prologue
    .line 234
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 235
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 236
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 238
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 239
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 240
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 252
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-object v0
.end method
