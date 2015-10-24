.class public Ljava/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayDeque$1;,
        Ljava/util/ArrayDeque$DescendingIterator;,
        Ljava/util/ArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient head:I

.field private transient tail:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/ArrayDeque;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 158
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "numElements"    # I

    .prologue
    .line 167
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 168
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 182
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 183
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 184
    return-void
.end method

.method static synthetic access$200(Ljava/util/ArrayDeque;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayDeque;

    .prologue
    .line 55
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    return v0
.end method

.method static synthetic access$300(Ljava/util/ArrayDeque;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayDeque;

    .prologue
    .line 55
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    return v0
.end method

.method static synthetic access$400(Ljava/util/ArrayDeque;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayDeque;

    .prologue
    .line 55
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/ArrayDeque;I)Z
    .registers 3
    .param p0, "x0"    # Ljava/util/ArrayDeque;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .registers 4
    .param p1, "numElements"    # I

    .prologue
    .line 97
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    .line 100
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_1a

    .line 101
    move v0, p1

    .line 102
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 103
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 104
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 105
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 106
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 109
    if-gez v0, :cond_1a

    .line 110
    ushr-int/lit8 v0, v0, 0x1

    .line 112
    :cond_1a
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 113
    return-void
.end method

.method private checkInvariants()V
    .registers 4

    .prologue
    .line 483
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    sget-boolean v0, Ljava/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 484
    :cond_12
    sget-boolean v0, Ljava/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_24

    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-nez v0, :cond_56

    .line 487
    :cond_24
    sget-boolean v0, Ljava/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 484
    :cond_3e
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_56

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_24

    :cond_56
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 488
    :cond_5c
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 143
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-ge v1, v2, :cond_13

    .line 144
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_12
    :goto_12
    return-object p1

    .line 145
    :cond_13
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-le v1, v2, :cond_12

    .line 146
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    sub-int v0, v1, v2

    .line 147
    .local v0, "headPortionLen":I
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    invoke-static {v1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12
.end method

.method private delete(I)Z
    .registers 12
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 501
    invoke-direct {p0}, Ljava/util/ArrayDeque;->checkInvariants()V

    .line 502
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 503
    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .line 504
    .local v4, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 505
    .local v3, "h":I
    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    .line 506
    .local v5, "t":I
    sub-int v8, p1, v3

    and-int v2, v8, v4

    .line 507
    .local v2, "front":I
    sub-int v8, v5, p1

    and-int v0, v8, v4

    .line 510
    .local v0, "back":I
    sub-int v8, v5, v3

    and-int/2addr v8, v4

    if-lt v2, v8, :cond_21

    .line 511
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 514
    :cond_21
    if-ge v2, v0, :cond_42

    .line 515
    if-gt v3, p1, :cond_33

    .line 516
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    :goto_2a
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 523
    add-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v4

    iput v7, p0, Ljava/util/ArrayDeque;->head:I

    .line 535
    :goto_32
    return v6

    .line 518
    :cond_33
    invoke-static {v1, v6, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    aget-object v7, v1, v4

    aput-object v7, v1, v6

    .line 520
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v4, v3

    invoke-static {v1, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    .line 526
    :cond_42
    if-ge p1, v5, :cond_4f

    .line 527
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    :goto_4d
    move v6, v7

    .line 535
    goto :goto_32

    .line 530
    :cond_4f
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v4, p1

    invoke-static {v1, v8, v1, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    aget-object v8, v1, v6

    aput-object v8, v1, v4

    .line 532
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    goto :goto_4d
.end method

.method private doubleCapacity()V
    .registers 9

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v7, 0x0

    .line 120
    sget-boolean v5, Ljava/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v5, :cond_11

    iget v5, p0, Ljava/util/ArrayDeque;->head:I

    iget v6, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v5, v6, :cond_11

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 121
    :cond_11
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 122
    .local v3, "p":I
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 123
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 124
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 125
    .local v2, "newCapacity":I
    if-gez v2, :cond_24

    .line 126
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_24
    new-array v0, v2, [Ljava/lang/Object;

    .line 128
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v7, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "a":[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 131
    iput v7, p0, Ljava/util/ArrayDeque;->head:I

    .line 132
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 133
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 826
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 829
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 830
    .local v1, "size":I
    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 831
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 832
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 835
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1d

    .line 836
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 837
    :cond_1d
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 813
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 816
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 817
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .local v0, "i":I
    :goto_11
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_21

    .line 818
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 817
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_11

    .line 819
    :cond_21
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_8

    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 199
    :cond_8
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 200
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_21

    .line 201
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 202
    :cond_21
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_8

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 215
    :cond_8
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 216
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    if-ne v0, v1, :cond_21

    .line 217
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 218
    :cond_21
    return-void
.end method

.method public clear()V
    .registers 7

    .prologue
    .line 701
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 702
    .local v0, "h":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    .line 703
    .local v3, "t":I
    if-eq v0, v3, :cond_1c

    .line 704
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/ArrayDeque;->tail:I

    iput v4, p0, Ljava/util/ArrayDeque;->head:I

    .line 705
    move v1, v0

    .line 706
    .local v1, "i":I
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 708
    .local v2, "mask":I
    :cond_11
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 709
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 710
    if-ne v1, v3, :cond_11

    .line 712
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1c
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/ArrayDeque;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 789
    .local v1, "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_11} :catch_12

    .line 790
    return-object v1

    .line 792
    .end local v1    # "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :catch_12
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 666
    if-nez p1, :cond_4

    .line 676
    :cond_3
    :goto_3
    return v3

    .line 668
    :cond_4
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 669
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 671
    .local v0, "i":I
    :goto_b
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_3

    .line 672
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 673
    const/4 v3, 0x1

    goto :goto_3

    .line 674
    :cond_19
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_b
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 289
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_e

    .line 290
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 291
    :cond_e
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 299
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_16

    .line 300
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 301
    :cond_16
    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 556
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 265
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 266
    .local v0, "h":I
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 267
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_b

    move-object v1, v2

    .line 271
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :goto_a
    return-object v1

    .line 269
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_b
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 270
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    goto :goto_a
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 275
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v1, v3, v4

    .line 276
    .local v1, "t":I
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 277
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_14

    move-object v0, v2

    .line 281
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :goto_13
    return-object v0

    .line 279
    .restart local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_14
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 280
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    goto :goto_13
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 693
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_c

    .line 250
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 251
    :cond_c
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 325
    if-nez p1, :cond_4

    .line 337
    :cond_3
    :goto_3
    return v3

    .line 327
    :cond_4
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 328
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 330
    .local v0, "i":I
    :goto_b
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_3

    .line 331
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 332
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 333
    const/4 v3, 0x1

    goto :goto_3

    .line 335
    :cond_1c
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_b
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_c

    .line 260
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 261
    :cond_c
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 353
    if-nez p1, :cond_4

    .line 365
    :cond_3
    :goto_3
    return v3

    .line 355
    :cond_4
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 356
    .local v1, "mask":I
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v4, v4, -0x1

    and-int v0, v4, v1

    .line 358
    .local v0, "i":I
    :goto_f
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 360
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 361
    const/4 v3, 0x1

    goto :goto_3

    .line 363
    :cond_20
    add-int/lit8 v4, v0, -0x1

    and-int v0, v4, v1

    goto :goto_f
.end method

.method public size()I
    .registers 3

    .prologue
    .line 547
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 728
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    .line 770
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_18

    .line 771
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 773
    :cond_18
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 774
    array-length v1, p1

    if-le v1, v0, :cond_21

    .line 775
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 776
    :cond_21
    return-object p1
.end method
