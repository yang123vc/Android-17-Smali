.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicException;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_ALL:I = -0x1

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private final elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 658
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 128
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 129
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 130
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 131
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 132
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 133
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 134
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 135
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 136
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 151
    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;
    .registers 15
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    .line 431
    if-eqz p1, :cond_44

    move-object v0, p1

    .line 433
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_8
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 434
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 435
    iput v10, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 436
    iput v4, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 437
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 438
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 439
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 440
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 441
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 443
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget v6, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v6, :cond_7c

    .line 444
    if-eq p3, v10, :cond_29

    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    aget v6, v6, v1

    if-ne p3, v6, :cond_4a

    :cond_29
    move v3, v5

    .line 445
    .local v3, "matchesUid":Z
    :goto_2a
    if-eqz p2, :cond_36

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    :cond_36
    move v2, v5

    .line 447
    .local v2, "matchesIface":Z
    :goto_37
    if-eqz v3, :cond_41

    if-eqz v2, :cond_41

    .line 449
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v1

    if-eqz v6, :cond_4e

    .line 443
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 431
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_44
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_8

    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v1    # "i":I
    :cond_4a
    move v3, v4

    .line 444
    goto :goto_2a

    .restart local v3    # "matchesUid":Z
    :cond_4c
    move v2, v4

    .line 445
    goto :goto_37

    .line 451
    .restart local v2    # "matchesIface":Z
    :cond_4e
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 452
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 453
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 454
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 455
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_41

    .line 458
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_7c
    return-object v0
.end method

.method public static setToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "set"    # I

    .prologue
    .line 627
    packed-switch p0, :pswitch_data_10

    .line 635
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 629
    :pswitch_6
    const-string v0, "ALL"

    goto :goto_5

    .line 631
    :pswitch_9
    const-string v0, "DEFAULT"

    goto :goto_5

    .line 633
    :pswitch_c
    const-string v0, "FOREGROUND"

    goto :goto_5

    .line 627
    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static tagToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # I

    .prologue
    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .registers 25
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .prologue
    .line 182
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 198
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_5e

    .line 199
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 200
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 201
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 202
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 203
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 204
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 205
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 206
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 207
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 208
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 211
    .end local v0    # "newLength":I
    :cond_5e
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 212
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 213
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 214
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 215
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v3, v1, v2

    .line 216
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v3, v1, v2

    .line 217
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v3, v1, v2

    .line 218
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v3, v1, v2

    .line 219
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v3, v1, v2

    .line 220
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 222
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 30
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 189
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 170
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v5, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 171
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 172
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_19

    .line 173
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 176
    :cond_19
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .registers 5
    .param p1, "another"    # Landroid/net/NetworkStats;

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_10

    .line 302
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 303
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_10
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 8
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 282
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 283
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 285
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 293
    :goto_12
    return-object p0

    .line 287
    :cond_13
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 288
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 289
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 290
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 291
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_12
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 30
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 272
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .registers 29
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 606
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    const-string v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_9a

    .line 609
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 613
    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 616
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 617
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 618
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 619
    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 621
    :cond_9a
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_25

    .line 312
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_22

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_22

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_22

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 317
    .end local v0    # "i":I
    :goto_21
    return v0

    .line 311
    .restart local v0    # "i":I
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    :cond_25
    const/4 v0, -0x1

    goto :goto_21
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I

    .prologue
    .line 326
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_1
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_3c

    .line 327
    div-int/lit8 v0, v2, 0x2

    .line 331
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2e

    .line 332
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 337
    .local v1, "i":I
    :goto_11
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_39

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_39

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_39

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 342
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :goto_2d
    return v1

    .line 334
    .restart local v0    # "halfOffset":I
    :cond_2e
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_11

    .line 326
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_3c
    const/4 v1, -0x1

    goto :goto_2d
.end method

.method public getElapsedRealtime()J
    .registers 3

    .prologue
    .line 243
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .registers 5

    .prologue
    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 4
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 404
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .registers 4
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .registers 4
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .registers 6

    .prologue
    .line 396
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 397
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 365
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 366
    .local v3, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v4, :cond_17

    aget-object v2, v0, v1

    .line 367
    .local v2, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v2, v5, :cond_14

    .line 368
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 371
    .end local v2    # "iface":Ljava/lang/String;
    :cond_17
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUniqueUids()[I
    .registers 10

    .prologue
    .line 378
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 379
    .local v7, "uids":Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_14

    aget v6, v0, v2

    .line 380
    .local v6, "uid":I
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 383
    .end local v6    # "uid":I
    :cond_14
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 384
    .local v5, "size":I
    new-array v4, v5, [I

    .line 385
    .local v4, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v5, :cond_26

    .line 386
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    aput v8, v4, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 388
    :cond_26
    return-object v4
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 6
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 229
    if-eqz p2, :cond_3a

    move-object v0, p2

    .line 230
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_3
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 232
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 233
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 234
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 235
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 236
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 237
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 238
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 239
    return-object v0

    .line 229
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_3a
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_3
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 536
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 538
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 539
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 540
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 541
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 542
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 544
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_4a

    .line 546
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_28

    .line 544
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 548
    :cond_28
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 549
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 550
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 551
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 552
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 553
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_25

    .line 556
    :cond_4a
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 564
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 566
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 567
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 568
    const/4 v3, -0x1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 569
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 571
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_4e

    .line 573
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_26

    .line 571
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 575
    :cond_26
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 576
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 577
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 578
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 579
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 580
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 581
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_23

    .line 584
    :cond_4e
    return-object v2
.end method

.method public internalSize()I
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .registers 8
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_2c

    .line 352
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/net/NetworkStats;->set:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 353
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    .line 354
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 351
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_23
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v0

    goto :goto_20

    .line 359
    .end local v1    # "j":I
    :cond_2c
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "value"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/NetworkStats$NonMonotonicException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    .registers 16
    .param p1, "value"    # Landroid/net/NetworkStats;
    .param p2, "clampNonMonotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/NetworkStats$NonMonotonicException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 480
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, p1, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v6, v0, v2

    .line 481
    .local v6, "deltaRealtime":J
    cmp-long v0, v6, v11

    if-gez v0, :cond_12

    .line 482
    new-instance v0, Landroid/net/NetworkStats$NonMonotonicException;

    invoke-direct {v0, p0, p1}, Landroid/net/NetworkStats$NonMonotonicException;-><init>(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    throw v0

    .line 486
    :cond_12
    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 487
    .local v8, "entry":Landroid/net/NetworkStats$Entry;
    new-instance v10, Landroid/net/NetworkStats;

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v10, v6, v7, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 488
    .local v10, "result":Landroid/net/NetworkStats;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    if-ge v5, v0, :cond_f6

    .line 489
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, v5

    iput v0, v8, Landroid/net/NetworkStats$Entry;->uid:I

    .line 491
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, v5

    iput v0, v8, Landroid/net/NetworkStats$Entry;->set:I

    .line 492
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, v5

    iput v0, v8, Landroid/net/NetworkStats$Entry;->tag:I

    .line 495
    iget-object v1, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, v8, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v8, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, v8, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v9

    .line 496
    .local v9, "j":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_6f

    .line 498
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 499
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 500
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 501
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 502
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 525
    :cond_69
    :goto_69
    invoke-virtual {v10, v8}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 488
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 505
    :cond_6f
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 506
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 507
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 508
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 509
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 511
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_c4

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_c4

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_c4

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_c4

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v11

    if-gez v0, :cond_69

    .line 513
    :cond_c4
    if-eqz p2, :cond_f0

    .line 514
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 515
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 516
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 517
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 518
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_69

    .line 520
    :cond_f0
    new-instance v0, Landroid/net/NetworkStats$NonMonotonicException;

    invoke-direct {v0, p0, v5, p1, v9}, Landroid/net/NetworkStats$NonMonotonicException;-><init>(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;I)V

    throw v0

    .line 528
    .end local v9    # "j":I
    :cond_f6
    return-object v10
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 648
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 649
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 650
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUid(I)Landroid/net/NetworkStats;
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 592
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 594
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 595
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_21

    .line 596
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 597
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-eq v3, p1, :cond_1e

    .line 598
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 595
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 602
    :cond_21
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 155
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 159
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 160
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 162
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 163
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 164
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 165
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 166
    return-void
.end method
