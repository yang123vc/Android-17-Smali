.class public abstract Ljava/nio/ShortBuffer;
.super Ljava/nio/Buffer;
.source "ShortBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ShortBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 96
    return-void
.end method

.method public static allocate(I)Ljava/nio/ShortBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .prologue
    .line 48
    if-gez p0, :cond_8

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([S)Ljava/nio/ShortBuffer;
    .registers 3
    .param p0, "array"    # [S

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([SII)Ljava/nio/ShortBuffer;
    .registers 5
    .param p0, "array"    # [S
    .param p1, "start"    # I
    .param p2, "shortCount"    # I

    .prologue
    .line 87
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 88
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>([S)V

    .line 89
    .local v0, "buf":Ljava/nio/ShortBuffer;
    iput p1, v0, Ljava/nio/ShortBuffer;->position:I

    .line 90
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ShortBuffer;->limit:I

    .line 91
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v0

    return-object v0
.end method

.method public final array()[S
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedArray()[S

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ShortBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Ljava/nio/ShortBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->compareTo(Ljava/nio/ShortBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ShortBuffer;)I
    .registers 9
    .param p1, "otherBuffer"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_22

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    .line 149
    .local v0, "compareRemaining":I
    :goto_e
    iget v4, p0, Ljava/nio/ShortBuffer;->position:I

    .line 150
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/ShortBuffer;->position:I

    .line 152
    .local v2, "otherPos":I
    :goto_12
    if-lez v0, :cond_30

    .line 153
    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    .line 154
    .local v3, "thisByte":S
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v1

    .line 155
    .local v1, "otherByte":S
    if-eq v3, v1, :cond_29

    .line 156
    if-ge v3, v1, :cond_27

    const/4 v5, -0x1

    .line 162
    .end local v1    # "otherByte":S
    .end local v3    # "thisByte":S
    :goto_21
    return v5

    .line 147
    .end local v0    # "compareRemaining":I
    .end local v2    # "otherPos":I
    .end local v4    # "thisPos":I
    :cond_22
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    goto :goto_e

    .line 156
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherByte":S
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":S
    .restart local v4    # "thisPos":I
    :cond_27
    const/4 v5, 0x1

    goto :goto_21

    .line 158
    :cond_29
    add-int/lit8 v4, v4, 0x1

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 162
    .end local v1    # "otherByte":S
    .end local v3    # "thisByte":S
    :cond_30
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_21
.end method

.method public abstract duplicate()Ljava/nio/ShortBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 194
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-nez v7, :cond_6

    .line 210
    :cond_5
    :goto_5
    return v6

    :cond_6
    move-object v3, p1

    .line 197
    check-cast v3, Ljava/nio/ShortBuffer;

    .line 199
    .local v3, "otherBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 203
    iget v1, p0, Ljava/nio/ShortBuffer;->position:I

    .line 204
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/ShortBuffer;->position:I

    .line 205
    .local v4, "otherPosition":I
    const/4 v0, 0x1

    .local v0, "equalSoFar":Z
    move v5, v4

    .end local v4    # "otherPosition":I
    .local v5, "otherPosition":I
    move v2, v1

    .line 206
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_1a
    if-eqz v0, :cond_34

    iget v7, p0, Ljava/nio/ShortBuffer;->limit:I

    if-ge v2, v7, :cond_34

    .line 207
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v8

    if-ne v7, v8, :cond_32

    const/4 v0, 0x1

    :goto_2f
    move v5, v4

    .end local v4    # "otherPosition":I
    .restart local v5    # "otherPosition":I
    move v2, v1

    .end local v1    # "myPosition":I
    .restart local v2    # "myPosition":I
    goto :goto_1a

    .end local v2    # "myPosition":I
    .end local v5    # "otherPosition":I
    .restart local v1    # "myPosition":I
    .restart local v4    # "otherPosition":I
    :cond_32
    move v0, v6

    goto :goto_2f

    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_34
    move v6, v0

    .line 210
    goto :goto_5
.end method

.method public get([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "dst"    # [S

    .prologue
    .line 237
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 260
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 261
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 262
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 264
    :cond_10
    move v0, p2

    .local v0, "i":I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 265
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v1

    aput-short v1, p1, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 267
    :cond_1e
    return-object p0
.end method

.method public abstract get()S
.end method

.method public abstract get(I)S
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 293
    iget v1, p0, Ljava/nio/ShortBuffer;->position:I

    .line 294
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 295
    .local v0, "hash":I
    :goto_3
    iget v3, p0, Ljava/nio/ShortBuffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 296
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_3

    .line 298
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[S
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IS)Ljava/nio/ShortBuffer;
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 428
    if-ne p1, p0, :cond_8

    .line 429
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 431
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 432
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 434
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [S

    .line 435
    .local v0, "contents":[S
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 436
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 437
    return-object p0
.end method

.method public abstract put(S)Ljava/nio/ShortBuffer;
.end method

.method public final put([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "src"    # [S

    .prologue
    .line 376
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 401
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 402
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 403
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 405
    :cond_10
    move v0, p2

    .local v0, "i":I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 406
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 408
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/ShortBuffer;
.end method
