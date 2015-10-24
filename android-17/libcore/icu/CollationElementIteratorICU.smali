.class public final Llibcore/icu/CollationElementIteratorICU;
.super Ljava/lang/Object;
.source "CollationElementIteratorICU.java"


# static fields
.field public static final NULLORDER:I = -0x1

.field private static final PRIMARY_ORDER_MASK_:I = -0x10000

.field private static final PRIMARY_ORDER_SHIFT_:I = 0x10

.field private static final SECONDARY_ORDER_MASK_:I = 0xff00

.field private static final SECONDARY_ORDER_SHIFT_:I = 0x8

.field private static final TERTIARY_ORDER_MASK_:I = 0xff

.field private static final UNSIGNED_16_BIT_MASK_:I = 0xffff


# instance fields
.field private address:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .param p1, "address"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    .line 165
    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Llibcore/icu/CollationElementIteratorICU;
    .registers 4
    .param p0, "collatorAddress"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p0, p1}, Llibcore/icu/NativeCollation;->getCollationElementIterator(ILjava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "iteratorAddress":I
    new-instance v1, Llibcore/icu/CollationElementIteratorICU;

    invoke-direct {v1, v0}, Llibcore/icu/CollationElementIteratorICU;-><init>(I)V

    return-object v1
.end method

.method public static primaryOrder(I)I
    .registers 3
    .param p0, "order"    # I

    .prologue
    .line 134
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static secondaryOrder(I)I
    .registers 2
    .param p0, "order"    # I

    .prologue
    .line 145
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static tertiaryOrder(I)I
    .registers 2
    .param p0, "order"    # I

    .prologue
    .line 155
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->closeElements(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 178
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    return-void

    .line 178
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getMaxExpansion(I)I
    .registers 3
    .param p1, "order"    # I

    .prologue
    .line 90
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeCollation;->getMaxExpansion(II)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->getOffset(I)I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->next(I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->previous(I)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->reset(I)V

    .line 56
    return-void
.end method

.method public setOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 124
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeCollation;->setOffset(II)V

    .line 125
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 99
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeCollation;->setText(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 4
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .prologue
    .line 103
    iget v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->setText(ILjava/lang/String;)V

    .line 104
    return-void
.end method
