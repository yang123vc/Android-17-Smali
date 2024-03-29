.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mObject:I

.field private mOwnObject:I

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 189
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 190
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 227
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2047
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "obj"    # I

    .prologue
    .line 2068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2073
    invoke-direct {p0, p1}, Landroid/os/Parcel;->init(I)V

    .line 2074
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native destroy()V
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native freeBuffer()V
.end method

.method private native init(I)V
.end method

.method private native internalReadFileDescriptor()Ljava/io/FileDescriptor;
.end method

.method public static obtain()Landroid/os/Parcel;
    .registers 4

    .prologue
    .line 241
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 242
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_13

    .line 245
    :try_start_7
    aget-object v1, v2, v0

    .line 246
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_10

    .line 247
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 251
    monitor-exit v2

    .line 255
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_f
    return-object v1

    .line 244
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 254
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    .line 255
    new-instance v1, Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_f

    .line 254
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .registers 5
    .param p0, "obj"    # I

    .prologue
    .line 2050
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 2051
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 2053
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_16

    .line 2054
    :try_start_7
    aget-object v1, v2, v0

    .line 2055
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_13

    .line 2056
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2060
    invoke-direct {v1, p0}, Landroid/os/Parcel;->init(I)V

    .line 2061
    monitor-exit v2

    .line 2065
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_12
    return-object v1

    .line 2053
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2064
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 2065
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_12

    .line 2064
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_c

    .line 2113
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2115
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2117
    .end local v1    # "value":Ljava/lang/Object;
    :cond_c
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .registers 5
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2102
    :goto_0
    if-lez p2, :cond_c

    .line 2103
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2105
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2106
    add-int/lit8 p2, p2, -0x1

    .line 2107
    goto :goto_0

    .line 2108
    .end local v0    # "value":Ljava/lang/Object;
    :cond_c
    return-void
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2121
    :goto_0
    if-lez p2, :cond_10

    .line 2122
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2123
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2125
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2126
    add-int/lit8 p2, p2, -0x1

    .line 2127
    goto :goto_0

    .line 2128
    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .registers 7
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    .prologue
    const/4 v2, 0x1

    .line 2132
    :goto_1
    if-lez p2, :cond_16

    .line 2133
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2134
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v2, :cond_14

    move v1, v2

    .line 2136
    .local v1, "value":Z
    :goto_e
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2137
    add-int/lit8 p2, p2, -0x1

    .line 2138
    goto :goto_1

    .line 2134
    .end local v1    # "value":Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_e

    .line 2139
    .end local v0    # "key":I
    :cond_16
    return-void
.end method

.method private native writeNative([BII)V
.end method


# virtual methods
.method public final native appendFrom(Landroid/os/Parcel;II)V
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .registers 5

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 871
    .local v0, "N":I
    if-ltz v0, :cond_14

    .line 872
    new-array v2, v0, [Landroid/os/IBinder;

    .line 873
    .local v2, "val":[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 874
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 873
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 878
    .end local v1    # "i":I
    .end local v2    # "val":[Landroid/os/IBinder;
    :cond_14
    const/4 v2, 0x0

    :cond_15
    return-object v2
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1696
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1697
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1698
    const/4 v1, 0x0

    .line 1705
    :cond_7
    return-object v1

    .line 1700
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1701
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_d
    if-lez v0, :cond_7

    .line 1702
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public final createBooleanArray()[Z
    .registers 5

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 601
    .local v0, "N":I
    if-ltz v0, :cond_21

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_21

    .line 602
    new-array v2, v0, [Z

    .line 603
    .local v2, "val":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_22

    .line 604
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    :goto_1a
    aput-boolean v3, v2, v1

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 604
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1a

    .line 608
    .end local v1    # "i":I
    .end local v2    # "val":[Z
    :cond_21
    const/4 v2, 0x0

    :cond_22
    return-object v2
.end method

.method public final native createByteArray()[B
.end method

.method public final createCharArray()[C
    .registers 5

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 637
    .local v0, "N":I
    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1d

    .line 638
    new-array v2, v0, [C

    .line 639
    .local v2, "val":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1e

    .line 640
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 644
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_1d
    const/4 v2, 0x0

    :cond_1e
    return-object v2
.end method

.method public final createDoubleArray()[D
    .registers 6

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1c

    .line 785
    new-array v2, v0, [D

    .line 786
    .local v2, "val":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 787
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 791
    .end local v1    # "i":I
    .end local v2    # "val":[D
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createFloatArray()[F
    .registers 5

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 747
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1c

    .line 748
    new-array v2, v0, [F

    .line 749
    .local v2, "val":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 750
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 754
    .end local v1    # "i":I
    .end local v2    # "val":[F
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createIntArray()[I
    .registers 5

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 673
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1c

    .line 674
    new-array v2, v0, [I

    .line 675
    .local v2, "val":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 676
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 680
    .end local v1    # "i":I
    .end local v2    # "val":[I
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createLongArray()[J
    .registers 6

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 710
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1c

    .line 711
    new-array v2, v0, [J

    .line 712
    .local v2, "val":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 713
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 717
    .end local v1    # "i":I
    .end local v2    # "val":[J
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createStringArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 819
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .local v0, "N":I
    if-ltz v0, :cond_14

    .line 821
    new-array v2, v0, [Ljava/lang/String;

    .line 822
    .local v2, "val":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 823
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 827
    .end local v1    # "i":I
    .end local v2    # "val":[Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    :cond_15
    return-object v2
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1672
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1673
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1674
    const/4 v1, 0x0

    .line 1681
    :cond_7
    return-object v1

    .line 1676
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1677
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d
    if-lez v0, :cond_7

    .line 1678
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1769
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1770
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1771
    const/4 v2, 0x0

    .line 1779
    :cond_7
    return-object v2

    .line 1773
    :cond_8
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1774
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_7

    .line 1775
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 1776
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1774
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    .line 1609
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1610
    .local v0, "N":I
    if-gez v0, :cond_9

    move-object v1, v2

    .line 1622
    :cond_8
    return-object v1

    .line 1613
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1614
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_e
    if-lez v0, :cond_8

    .line 1615
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 1616
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1618
    :cond_20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method public final native dataAvail()I
.end method

.method public final native dataCapacity()I
.end method

.method public final native dataPosition()I
.end method

.method public final native dataSize()I
.end method

.method public final native enforceInterface(Ljava/lang/String;)V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2083
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2084
    return-void
.end method

.method public final native hasFileDescriptors()Z
.end method

.method public final native marshall()[B
.end method

.method public final native pushAllowFds(Z)Z
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1555
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1556
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1557
    const/4 v1, 0x0

    .line 1561
    :goto_7
    return-object v1

    .line 1559
    :cond_8
    new-array v1, v0, [Ljava/lang/Object;

    .line 1560
    .local v1, "l":[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1539
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1540
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1541
    const/4 v1, 0x0

    .line 1545
    :goto_7
    return-object v1

    .line 1543
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1544
    .local v1, "l":Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .registers 6
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 883
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 884
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 885
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 886
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 885
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 889
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1742
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1743
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1744
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1745
    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    .line 1746
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1745
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1748
    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    .line 1749
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1751
    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    .line 1752
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1751
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1754
    :cond_2b
    return-void
.end method

.method public final readBooleanArray([Z)V
    .registers 6
    .param p1, "val"    # [Z

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_18

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 616
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_11
    aput-boolean v2, p1, v1

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 616
    :cond_16
    const/4 v2, 0x0

    goto :goto_11

    .line 619
    .end local v1    # "i":I
    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    .restart local v1    # "i":I
    :cond_20
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 1449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1459
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1460
    .local v1, "length":I
    if-gez v1, :cond_8

    .line 1461
    const/4 v0, 0x0

    .line 1468
    :cond_7
    :goto_7
    return-object v0

    .line 1464
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1465
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_7

    .line 1466
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readByte()B
    .registers 2

    .prologue
    .line 1402
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .registers 6
    .param p1, "val"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1482
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1483
    .local v0, "ba":[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_e

    .line 1484
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1488
    return-void

    .line 1486
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .registers 6
    .param p1, "val"    # [C

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 650
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_14

    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 652
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 655
    .end local v1    # "i":I
    :cond_14
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    .restart local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1373
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 1516
    const/4 v0, 0x0

    .line 1518
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1519
    .local v2, "length":I
    if-ltz v2, :cond_15

    .line 1521
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_15

    .line 1525
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1523
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1529
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public final native readDouble()D
.end method

.method public final readDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 797
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 799
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 802
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 804
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readException()V
    .registers 3

    .prologue
    .line 1278
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 1279
    .local v0, "code":I
    if-eqz v0, :cond_d

    .line 1280
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1281
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 1283
    .end local v1    # "msg":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1325
    packed-switch p1, :pswitch_data_44

    .line 1337
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :pswitch_26
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :pswitch_2c
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :pswitch_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :pswitch_38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1335
    :pswitch_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :pswitch_data_44
    .packed-switch -0x5
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .registers 5

    .prologue
    .line 1299
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1300
    .local v0, "code":I
    const/16 v2, -0x80

    if-ne v0, v2, :cond_16

    .line 1301
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1302
    .local v1, "headerSize":I
    if-nez v1, :cond_17

    .line 1303
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :goto_15
    const/4 v0, 0x0

    .line 1315
    .end local v0    # "code":I
    .end local v1    # "headerSize":I
    :cond_16
    return v0

    .line 1309
    .restart local v0    # "code":I
    .restart local v1    # "headerSize":I
    :cond_17
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_15
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .prologue
    .line 1385
    invoke-direct {p0}, Landroid/os/Parcel;->internalReadFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1386
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public final native readFloat()F
.end method

.method public final readFloatArray([F)V
    .registers 6
    .param p1, "val"    # [F

    .prologue
    .line 759
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 760
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 762
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 765
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 767
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1434
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1435
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1436
    const/4 v1, 0x0

    .line 1440
    :goto_7
    return-object v1

    .line 1438
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1439
    .local v1, "m":Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final native readInt()I
.end method

.method public final readIntArray([I)V
    .registers 6
    .param p1, "val"    # [I

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 686
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 687
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 688
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 691
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 693
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1421
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1422
    .local v0, "N":I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1423
    return-void
.end method

.method public final native readLong()J
.end method

.method public final readLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 723
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 725
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 728
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 730
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1411
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1412
    .local v0, "N":I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1413
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2092
    :goto_0
    if-lez p2, :cond_10

    .line 2093
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2094
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2095
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    add-int/lit8 p2, p2, -0x1

    .line 2097
    goto :goto_0

    .line 2098
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 12
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1938
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1939
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 1992
    :goto_7
    return-object v6

    .line 1943
    :cond_8
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v7

    .line 1944
    :try_start_b
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1945
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    if-nez v4, :cond_1f

    .line 1946
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1947
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    :cond_1f
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_55

    .line 1950
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_10d

    .line 1952
    if-nez p1, :cond_58

    :try_start_29
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1954
    .local v0, "c":Ljava/lang/Class;
    :goto_2d
    const-string v6, "CREATOR"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1955
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_3a} :catch_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_3a} :catch_9a
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_3a} :catch_d6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_3a} :catch_f0
    .catchall {:try_start_29 .. :try_end_3a} :catchall_55

    .line 1979
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_10a

    .line 1980
    :try_start_3c
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1987
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_55

    throw v6

    .line 1952
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :cond_58
    const/4 v6, 0x1

    :try_start_59
    invoke-static {v5, v6, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_59 .. :try_end_5c} :catch_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_59 .. :try_end_5c} :catch_9a
    .catch Ljava/lang/ClassCastException; {:try_start_59 .. :try_end_5c} :catch_d6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_59 .. :try_end_5c} :catch_f0
    .catchall {:try_start_59 .. :try_end_5c} :catchall_55

    move-result-object v0

    goto :goto_2d

    .line 1957
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :catch_5e
    move-exception v2

    .line 1958
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_5f
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1963
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_9a
    move-exception v2

    .line 1964
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1969
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_d6
    move-exception v2

    .line 1970
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1974
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_f0
    move-exception v2

    .line 1975
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1985
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    :cond_10a
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_10d
    monitor-exit v7
    :try_end_10e
    .catchall {:try_start_5f .. :try_end_10e} :catchall_55

    .line 1989
    instance-of v6, v1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v6, :cond_11c

    .line 1990
    check-cast v1, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {v1, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    goto/16 :goto_7

    .line 1992
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_11c
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    goto/16 :goto_7
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .registers 6
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2002
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2003
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 2004
    const/4 v2, 0x0

    .line 2010
    :cond_7
    return-object v2

    .line 2006
    :cond_8
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 2007
    .local v2, "p":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_7

    .line 2008
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2007
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .registers 10

    .prologue
    .line 2019
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2020
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_8

    .line 2024
    const/4 v6, 0x0

    .line 2031
    :goto_7
    return-object v6

    .line 2027
    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2028
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2030
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_11
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2031
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_1c} :catch_3d

    goto :goto_7

    .line 2032
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_1d
    move-exception v2

    .line 2033
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2036
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_3d
    move-exception v1

    .line 2037
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encounteredClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1571
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1572
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1573
    const/4 v1, 0x0

    .line 1577
    :goto_7
    return-object v1

    .line 1575
    :cond_8
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1576
    .local v1, "sa":Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .registers 3

    .prologue
    .line 1586
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1587
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1588
    const/4 v1, 0x0

    .line 1592
    :goto_7
    return-object v1

    .line 1590
    :cond_8
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1591
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    goto :goto_7
.end method

.method public final native readString()Ljava/lang/String;
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .registers 6
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 832
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 835
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 838
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 840
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1495
    const/4 v0, 0x0

    .line 1497
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1498
    .local v2, "length":I
    if-ltz v2, :cond_15

    .line 1500
    new-array v0, v2, [Ljava/lang/String;

    .line 1502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_15

    .line 1504
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1508
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1718
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1719
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1720
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1721
    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    .line 1722
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1721
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1724
    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    .line 1725
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1724
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1727
    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    .line 1728
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1727
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1730
    :cond_2b
    return-void
.end method

.method public final native readStrongBinder()Landroid/os/IBinder;
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1783
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1784
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1d

    .line 1785
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_25

    .line 1786
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 1787
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1785
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1789
    :cond_19
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_16

    .line 1793
    .end local v1    # "i":I
    :cond_1d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1795
    .restart local v1    # "i":I
    :cond_25
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1803
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1638
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1639
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1640
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1641
    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_22

    if-ge v2, v1, :cond_22

    .line 1642
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 1643
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1641
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1645
    :cond_1e
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 1648
    :cond_22
    :goto_22
    if-ge v2, v1, :cond_38

    .line 1649
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 1650
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1652
    :cond_34
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1655
    :cond_38
    :goto_38
    if-ge v2, v0, :cond_40

    .line 1656
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1655
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1658
    :cond_40
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v2, 0x1

    .line 1838
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1840
    .local v1, "type":I
    packed-switch v1, :pswitch_data_e2

    .line 1920
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x4

    .line 1921
    .local v0, "off":I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1842
    .end local v0    # "off":I
    :pswitch_3b
    const/4 v2, 0x0

    .line 1917
    :goto_3c
    return-object v2

    .line 1845
    :pswitch_3d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 1848
    :pswitch_42
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3c

    .line 1851
    :pswitch_4b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_3c

    .line 1854
    :pswitch_50
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_3c

    .line 1857
    :pswitch_55
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_3c

    .line 1860
    :pswitch_5f
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3c

    .line 1863
    :pswitch_68
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_3c

    .line 1866
    :pswitch_71
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_3c

    .line 1869
    :pswitch_7a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_85

    :goto_80
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3c

    :cond_85
    const/4 v2, 0x0

    goto :goto_80

    .line 1872
    :pswitch_87
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3c

    .line 1875
    :pswitch_8c
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3c

    .line 1878
    :pswitch_91
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_3c

    .line 1881
    :pswitch_96
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_3c

    .line 1884
    :pswitch_9b
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 1887
    :pswitch_a0
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3c

    .line 1890
    :pswitch_a5
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_3c

    .line 1893
    :pswitch_aa
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_3c

    .line 1896
    :pswitch_af
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_3c

    .line 1899
    :pswitch_b4
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_3c

    .line 1902
    :pswitch_b9
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_3c

    .line 1905
    :pswitch_c3
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_3c

    .line 1908
    :pswitch_c9
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_3c

    .line 1911
    :pswitch_cf
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_3c

    .line 1914
    :pswitch_d5
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_3c

    .line 1917
    :pswitch_db
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_3c

    .line 1840
    nop

    :pswitch_data_e2
    .packed-switch -0x1
        :pswitch_3b
        :pswitch_3d
        :pswitch_42
        :pswitch_4b
        :pswitch_db
        :pswitch_50
        :pswitch_55
        :pswitch_5f
        :pswitch_68
        :pswitch_71
        :pswitch_7a
        :pswitch_87
        :pswitch_8c
        :pswitch_cf
        :pswitch_96
        :pswitch_9b
        :pswitch_a5
        :pswitch_c9
        :pswitch_aa
        :pswitch_af
        :pswitch_b4
        :pswitch_b9
        :pswitch_c3
        :pswitch_d5
        :pswitch_91
        :pswitch_a0
    .end packed-switch
.end method

.method public final recycle()V
    .registers 4

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 265
    iget v2, p0, Landroid/os/Parcel;->mOwnObject:I

    if-eqz v2, :cond_16

    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 266
    .local v1, "pool":[Landroid/os/Parcel;
    :goto_9
    monitor-enter v1

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1c

    .line 268
    :try_start_e
    aget-object v2, v1, v0

    if-nez v2, :cond_19

    .line 269
    aput-object p0, v1, v0

    .line 270
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1e

    .line 274
    :goto_15
    return-void

    .line 265
    .end local v0    # "i":I
    .end local v1    # "pool":[Landroid/os/Parcel;
    :cond_16
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    goto :goto_9

    .line 267
    .restart local v0    # "i":I
    .restart local v1    # "pool":[Landroid/os/Parcel;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 273
    :cond_1c
    :try_start_1c
    monitor-exit v1

    goto :goto_15

    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public final native restoreAllowFds(Z)V
.end method

.method public final native setDataCapacity(I)V
.end method

.method public final native setDataPosition(I)V
.end method

.method public final native setDataSize(I)V
.end method

.method public final native unmarshall([BII)V
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/Object;

    .prologue
    .line 535
    if-nez p1, :cond_7

    .line 536
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    :cond_6
    return-void

    .line 539
    :cond_7
    array-length v0, p1

    .line 540
    .local v0, "N":I
    const/4 v1, 0x0

    .line 541
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    :goto_c
    if-ge v1, v0, :cond_6

    .line 543
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .registers 5
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 843
    if-eqz p1, :cond_11

    .line 844
    array-length v0, p1

    .line 845
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 847
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 846
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 850
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    :cond_15
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 964
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_7

    .line 965
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    :cond_6
    return-void

    .line 968
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 969
    .local v0, "N":I
    const/4 v1, 0x0

    .line 970
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    :goto_f
    if-ge v1, v0, :cond_6

    .line 972
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeBooleanArray([Z)V
    .registers 5
    .param p1, "val"    # [Z

    .prologue
    .line 585
    if-eqz p1, :cond_16

    .line 586
    array-length v0, p1

    .line 587
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 589
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 589
    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    .line 592
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_16
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    :cond_1a
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "val"    # Landroid/os/Bundle;

    .prologue
    .line 502
    if-nez p1, :cond_7

    .line 503
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    :goto_6
    return-void

    .line 507
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method

.method public final writeByte(B)V
    .registers 2
    .param p1, "val"    # B

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    return-void
.end method

.method public final writeByteArray([B)V
    .registers 4
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 371
    if-eqz p1, :cond_8

    array-length v0, p1

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 372
    return-void

    :cond_8
    move v0, v1

    .line 371
    goto :goto_4
.end method

.method public final writeByteArray([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 382
    if-nez p1, :cond_7

    .line 383
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    :goto_6
    return-void

    .line 386
    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 387
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->writeNative([BII)V

    goto :goto_6
.end method

.method public final writeCharArray([C)V
    .registers 5
    .param p1, "val"    # [C

    .prologue
    .line 624
    if-eqz p1, :cond_11

    .line 625
    array-length v0, p1

    .line 626
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 628
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 631
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    :cond_15
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 429
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .prologue
    .line 858
    if-eqz p1, :cond_11

    .line 859
    array-length v0, p1

    .line 860
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 862
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 861
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 865
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    :cond_15
    return-void
.end method

.method public final native writeDouble(D)V
.end method

.method public final writeDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .prologue
    .line 770
    if-eqz p1, :cond_11

    .line 771
    array-length v0, p1

    .line 772
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 774
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 777
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    :cond_15
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "code":I
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_15

    .line 1212
    const/4 v0, -0x1

    .line 1222
    :cond_6
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1224
    if-nez v0, :cond_33

    .line 1225
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2d

    .line 1226
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1213
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_15
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_1b

    .line 1214
    const/4 v0, -0x2

    goto :goto_6

    .line 1215
    :cond_1b
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_21

    .line 1216
    const/4 v0, -0x3

    goto :goto_6

    .line 1217
    :cond_21
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_27

    .line 1218
    const/4 v0, -0x4

    goto :goto_6

    .line 1219
    :cond_27
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_6

    .line 1220
    const/4 v0, -0x5

    goto :goto_6

    .line 1228
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1230
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public final native writeFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method public final native writeFloat(F)V
.end method

.method public final writeFloatArray([F)V
    .registers 5
    .param p1, "val"    # [F

    .prologue
    .line 733
    if-eqz p1, :cond_11

    .line 734
    array-length v0, p1

    .line 735
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 737
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 740
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    :cond_15
    return-void
.end method

.method public final native writeInt(I)V
.end method

.method public final writeIntArray([I)V
    .registers 5
    .param p1, "val"    # [I

    .prologue
    .line 660
    if-eqz p1, :cond_11

    .line 661
    array-length v0, p1

    .line 662
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 664
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 667
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    :cond_15
    return-void
.end method

.method public final native writeInterfaceToken(Ljava/lang/String;)V
.end method

.method public final writeList(Ljava/util/List;)V
    .registers 5
    .param p1, "val"    # Ljava/util/List;

    .prologue
    .line 516
    if-nez p1, :cond_7

    .line 517
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    :cond_6
    return-void

    .line 520
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 521
    .local v0, "N":I
    const/4 v1, 0x0

    .line 522
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    :goto_f
    if-ge v1, v0, :cond_6

    .line 524
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final native writeLong(J)V
.end method

.method public final writeLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .prologue
    .line 696
    if-eqz p1, :cond_11

    .line 697
    array-length v0, p1

    .line 698
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 700
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 703
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    :cond_15
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .registers 2
    .param p1, "val"    # Ljava/util/Map;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 478
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 486
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    :cond_6
    return-void

    .line 489
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 490
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 492
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 493
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final writeNoException()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1254
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1255
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1257
    .local v1, "sizePosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 1259
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1260
    .local v0, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1261
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1266
    .end local v0    # "payloadPosition":I
    .end local v1    # "sizePosition":I
    :goto_25
    return-void

    .line 1264
    :cond_26
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1150
    if-nez p1, :cond_7

    .line 1151
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1157
    :goto_6
    return-void

    .line 1154
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .registers 6
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1821
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_11

    .line 1822
    array-length v0, p1

    .line 1823
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1825
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1824
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1828
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1830
    :cond_15
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .registers 9
    .param p1, "s"    # Ljava/io/Serializable;

    .prologue
    .line 1166
    if-nez p1, :cond_7

    .line 1167
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1185
    :goto_6
    return-void

    .line 1170
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1175
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_17
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1176
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1177
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_6

    .line 1180
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2a
    move-exception v1

    .line 1181
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 556
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    :cond_6
    return-void

    .line 559
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 560
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v1, 0x0

    .line 562
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_6

    .line 563
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .registers 5
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 570
    if-nez p1, :cond_7

    .line 571
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    :cond_6
    return-void

    .line 574
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 575
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_6

    .line 578
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_1f
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 579
    :cond_26
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public final native writeString(Ljava/lang/String;)V
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 807
    if-eqz p1, :cond_11

    .line 808
    array-length v0, p1

    .line 809
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 811
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 814
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    :cond_15
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 940
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    :cond_6
    return-void

    .line 943
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 944
    .local v0, "N":I
    const/4 v1, 0x0

    .line 945
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    :goto_f
    if-ge v1, v0, :cond_6

    .line 947
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final native writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "val"    # Landroid/os/IInterface;

    .prologue
    .line 442
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 443
    return-void

    .line 442
    :cond_7
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .registers 7
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1c

    .line 998
    array-length v0, p1

    .line 999
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1001
    aget-object v2, p1, v1

    .line 1002
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_17

    .line 1003
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1000
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1006
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 1010
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1c
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    :cond_20
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 908
    if-nez p1, :cond_8

    .line 909
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    :cond_7
    return-void

    .line 912
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 913
    .local v0, "N":I
    const/4 v1, 0x0

    .line 914
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    :goto_10
    if-ge v1, v0, :cond_7

    .line 916
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 917
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_24

    .line 918
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 923
    :goto_21
    add-int/lit8 v1, v1, 0x1

    .line 924
    goto :goto_10

    .line 921
    :cond_24
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .registers 5
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1058
    if-nez p1, :cond_9

    .line 1059
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    .end local p1    # "v":Ljava/lang/Object;
    :goto_8
    return-void

    .line 1060
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 1061
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 1063
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_27

    .line 1064
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1066
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_27
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_35

    .line 1067
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    check-cast p1, Ljava/util/Map;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_8

    .line 1069
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_35
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_43

    .line 1071
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_8

    .line 1073
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_43
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_51

    .line 1074
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_8

    .line 1076
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_51
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_63

    .line 1077
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1079
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_63
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_75

    .line 1080
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 1082
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_75
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_87

    .line 1083
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_8

    .line 1085
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_87
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_9b

    .line 1086
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_8

    .line 1088
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9b
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_b3

    .line 1089
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b1

    :goto_ac
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_b1
    move v0, v1

    goto :goto_ac

    .line 1091
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_b3
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c3

    .line 1093
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1095
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d3

    .line 1096
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    check-cast p1, Ljava/util/List;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 1098
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d3
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_e3

    .line 1099
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_8

    .line 1101
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e3
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f5

    .line 1102
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    check-cast p1, [Z

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_8

    .line 1104
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f5
    instance-of v0, p1, [B

    if-eqz v0, :cond_107

    .line 1105
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    check-cast p1, [B

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_8

    .line 1107
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_107
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_119

    .line 1108
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1110
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_119
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_12b

    .line 1112
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1114
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12b
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_13b

    .line 1115
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    check-cast p1, Landroid/os/IBinder;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 1117
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13b
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_14d

    .line 1118
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    .line 1120
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14d
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15f

    .line 1121
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1123
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15f
    instance-of v0, p1, [I

    if-eqz v0, :cond_171

    .line 1124
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    check-cast p1, [I

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8

    .line 1126
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_171
    instance-of v0, p1, [J

    if-eqz v0, :cond_183

    .line 1127
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    check-cast p1, [J

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_8

    .line 1129
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_183
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_197

    .line 1130
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 1132
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_197
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_1a7

    .line 1134
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_8

    .line 1137
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1a7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
