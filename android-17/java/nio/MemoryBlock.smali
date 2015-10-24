.class Ljava/nio/MemoryBlock;
.super Ljava/lang/Object;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/MemoryBlock$1;,
        Ljava/nio/MemoryBlock$UnmanagedBlock;,
        Ljava/nio/MemoryBlock$NonMovableHeapBlock;,
        Ljava/nio/MemoryBlock$MemoryMappedBlock;
    }
.end annotation


# instance fields
.field protected address:I

.field protected final size:J


# direct methods
.method private constructor <init>(IJ)V
    .registers 4
    .param p1, "address"    # I
    .param p2, "size"    # J

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Ljava/nio/MemoryBlock;->address:I

    .line 137
    iput-wide p2, p0, Ljava/nio/MemoryBlock;->size:J

    .line 138
    return-void
.end method

.method synthetic constructor <init>(IJLjava/nio/MemoryBlock$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/MemoryBlock;-><init>(IJ)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/MemoryBlock;
    .registers 8
    .param p0, "byteCount"    # I

    .prologue
    .line 125
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 126
    .local v6, "runtime":Ldalvik/system/VMRuntime;
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v0, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    .line 127
    .local v1, "array":[B
    invoke-virtual {v6, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    long-to-int v2, v3

    .line 128
    .local v2, "address":I
    new-instance v0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;

    int-to-long v3, p0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BIJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method

.method public static mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;
    .registers 20
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "size"    # J
    .param p5, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_f

    .line 98
    new-instance v2, Ljava/nio/MemoryBlock;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/nio/MemoryBlock;-><init>(IJ)V

    .line 118
    :goto_e
    return-object v2

    .line 101
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_29

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_29

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_29

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p3, v2

    if-lez v2, :cond_4f

    .line 102
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_4f
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_79

    .line 107
    sget v2, Llibcore/io/OsConstants;->PROT_READ:I

    sget v3, Llibcore/io/OsConstants;->PROT_WRITE:I

    or-int v7, v2, v3

    .line 108
    .local v7, "prot":I
    sget v8, Llibcore/io/OsConstants;->MAP_PRIVATE:I

    .line 117
    .local v8, "flags":I
    :goto_5d
    :try_start_5d
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p3

    move-object v9, p0

    move-wide v10, p1

    invoke-interface/range {v2 .. v11}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v2

    long-to-int v12, v2

    .line 118
    .local v12, "address":I
    new-instance v2, Ljava/nio/MemoryBlock$MemoryMappedBlock;

    const/4 v3, 0x0

    move-wide/from16 v0, p3

    invoke-direct {v2, v12, v0, v1, v3}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V
    :try_end_72
    .catch Llibcore/io/ErrnoException; {:try_start_5d .. :try_end_72} :catch_73

    goto :goto_e

    .line 119
    .end local v12    # "address":I
    :catch_73
    move-exception v13

    .line 120
    .local v13, "errnoException":Llibcore/io/ErrnoException;
    invoke-virtual {v13}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 109
    .end local v7    # "prot":I
    .end local v8    # "flags":I
    .end local v13    # "errnoException":Llibcore/io/ErrnoException;
    :cond_79
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_84

    .line 110
    sget v7, Llibcore/io/OsConstants;->PROT_READ:I

    .line 111
    .restart local v7    # "prot":I
    sget v8, Llibcore/io/OsConstants;->MAP_SHARED:I

    .restart local v8    # "flags":I
    goto :goto_5d

    .line 113
    .end local v7    # "prot":I
    .end local v8    # "flags":I
    :cond_84
    sget v2, Llibcore/io/OsConstants;->PROT_READ:I

    sget v3, Llibcore/io/OsConstants;->PROT_WRITE:I

    or-int v7, v2, v3

    .line 114
    .restart local v7    # "prot":I
    sget v8, Llibcore/io/OsConstants;->MAP_SHARED:I

    .restart local v8    # "flags":I
    goto :goto_5d
.end method

.method public static wrapFromJni(IJ)Ljava/nio/MemoryBlock;
    .registers 5
    .param p0, "address"    # I
    .param p1, "byteCount"    # J

    .prologue
    .line 132
    new-instance v0, Ljava/nio/MemoryBlock$UnmanagedBlock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method


# virtual methods
.method public array()[B
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public free()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method public final getSize()J
    .registers 3

    .prologue
    .line 245
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->size:J

    return-wide v0
.end method

.method public final peekByte(I)B
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 181
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0}, Llibcore/io/Memory;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final peekByteArray(I[BII)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 185
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4}, Llibcore/io/Memory;->peekByteArray(I[BII)V

    .line 186
    return-void
.end method

.method public final peekCharArray(I[CIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 189
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekCharArray(I[CIIZ)V

    .line 190
    return-void
.end method

.method public final peekDoubleArray(I[DIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 193
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekDoubleArray(I[DIIZ)V

    .line 194
    return-void
.end method

.method public final peekFloatArray(I[FIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 197
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekFloatArray(I[FIIZ)V

    .line 198
    return-void
.end method

.method public final peekInt(ILjava/nio/ByteOrder;)I
    .registers 5
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 225
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekInt(IZ)I

    move-result v0

    return v0
.end method

.method public final peekIntArray(I[IIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 201
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekIntArray(I[IIIZ)V

    .line 202
    return-void
.end method

.method public final peekLong(ILjava/nio/ByteOrder;)J
    .registers 5
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 233
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekLong(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final peekLongArray(I[JIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 205
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekLongArray(I[JIIZ)V

    .line 206
    return-void
.end method

.method public final peekShort(ILjava/nio/ByteOrder;)S
    .registers 5
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 217
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekShort(IZ)S

    move-result v0

    return v0
.end method

.method public final peekShortArray(I[SIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 209
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekShortArray(I[SIIZ)V

    .line 210
    return-void
.end method

.method public final pokeByte(IB)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "value"    # B

    .prologue
    .line 149
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2}, Llibcore/io/Memory;->pokeByte(IB)V

    .line 150
    return-void
.end method

.method public final pokeByteArray(I[BII)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "src"    # [B
    .param p3, "srcOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 153
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4}, Llibcore/io/Memory;->pokeByteArray(I[BII)V

    .line 154
    return-void
.end method

.method public final pokeCharArray(I[CIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 157
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeCharArray(I[CIIZ)V

    .line 158
    return-void
.end method

.method public final pokeDoubleArray(I[DIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 161
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeDoubleArray(I[DIIZ)V

    .line 162
    return-void
.end method

.method public final pokeFloatArray(I[FIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 165
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeFloatArray(I[FIIZ)V

    .line 166
    return-void
.end method

.method public final pokeInt(IILjava/nio/ByteOrder;)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 221
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, v1}, Llibcore/io/Memory;->pokeInt(IIZ)V

    .line 222
    return-void
.end method

.method public final pokeIntArray(I[IIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 169
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeIntArray(I[IIIZ)V

    .line 170
    return-void
.end method

.method public final pokeLong(IJLjava/nio/ByteOrder;)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 229
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p4, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, p3, v1}, Llibcore/io/Memory;->pokeLong(IJZ)V

    .line 230
    return-void
.end method

.method public final pokeLongArray(I[JIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 173
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeLongArray(I[JIIZ)V

    .line 174
    return-void
.end method

.method public final pokeShort(ISLjava/nio/ByteOrder;)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 213
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, v1}, Llibcore/io/Memory;->pokeShort(ISZ)V

    .line 214
    return-void
.end method

.method public final pokeShortArray(I[SIIZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 177
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeShortArray(I[SIIZ)V

    .line 178
    return-void
.end method

.method public final toInt()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/nio/MemoryBlock;->address:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
