.class public final Landroid/os/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle;

.field private static final LOG_TAG:Ljava/lang/String; = "Bundle"


# instance fields
.field private mAllowFds:Z

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFdsKnown:Z

.field private mHasFds:Z

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 40
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 1572
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 57
    iput-boolean v0, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 116
    iget-object v0, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_46

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 118
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 119
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    :goto_2c
    iget-object v0, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_49

    .line 125
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 130
    :goto_39
    iget-boolean v0, p1, Landroid/os/Bundle;->mHasFds:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 131
    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 132
    iget-object v0, p1, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 133
    return-void

    .line 121
    :cond_46
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_2c

    .line 127
    :cond_49
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    goto :goto_39
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 79
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 96
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 143
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-object v0
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 784
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 785
    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 777
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v1, "Bundle"

    const-string v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 251
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 254
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 265
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 3

    .prologue
    .line 1587
    const/4 v0, 0x0

    .line 1588
    .local v0, "mask":I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1589
    or-int/lit8 v0, v0, 0x1

    .line 1591
    :cond_9
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 276
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 796
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 797
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 804
    .end local p2    # "defaultValue":Z
    :goto_b
    return p2

    .line 801
    .restart local p2    # "defaultValue":Z
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result p2

    goto :goto_b

    .line 802
    :catch_15
    move-exception v6

    .line 803
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1335
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1336
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1337
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1344
    :goto_d
    return-object v3

    .line 1341
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1342
    :catch_15
    move-exception v1

    .line 1343
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1344
    goto :goto_d
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1136
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1137
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1138
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1145
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1142
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1143
    :catch_11
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1145
    goto :goto_d
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 817
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 828
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 829
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 830
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_10

    .line 831
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 837
    .end local v2    # "o":Ljava/lang/Object;
    :goto_f
    return-object v2

    .line 834
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_10
    :try_start_10
    check-cast v2, Ljava/lang/Byte;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_13

    goto :goto_f

    .line 835
    :catch_13
    move-exception v5

    .line 836
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 837
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_f
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1357
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1358
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1359
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1366
    :goto_d
    return-object v3

    .line 1363
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1364
    :catch_15
    move-exception v1

    .line 1365
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1366
    goto :goto_d
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 849
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 850
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 862
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 863
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 870
    .end local p2    # "defaultValue":C
    :goto_b
    return p2

    .line 867
    .restart local p2    # "defaultValue":C
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result p2

    goto :goto_b

    .line 868
    :catch_15
    move-exception v6

    .line 869
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1401
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1402
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1403
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1410
    :goto_d
    return-object v3

    .line 1407
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1408
    :catch_15
    move-exception v1

    .line 1409
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1410
    goto :goto_d
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1092
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1093
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1094
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1101
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1098
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1099
    :catch_11
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "CharSequence"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1101
    goto :goto_d
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 1114
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1115
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1116
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_c

    .line 1123
    .end local v1    # "o":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :goto_b
    return-object p2

    .line 1120
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_c
    :try_start_c
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_10

    .end local v1    # "o":Ljava/lang/Object;
    move-object p2, v1

    goto :goto_b

    .line 1121
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_10
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1533
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1534
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1535
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1542
    :goto_d
    return-object v3

    .line 1539
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Ljava/lang/CharSequence;

    move-object v3, v0

    check-cast v3, [Ljava/lang/CharSequence;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1540
    :catch_15
    move-exception v1

    .line 1541
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1542
    goto :goto_d
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1313
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1314
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1315
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1322
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1319
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1320
    :catch_11
    move-exception v0

    .line 1321
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<CharSequence>"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1322
    goto :goto_d
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1014
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1015
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 1026
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1027
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1028
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1035
    .end local p2    # "defaultValue":D
    :goto_b
    return-wide p2

    .line 1032
    .restart local p2    # "defaultValue":D
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result-wide p2

    goto :goto_b

    .line 1033
    :catch_15
    move-exception v6

    .line 1034
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1489
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1490
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1491
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1498
    :goto_d
    return-object v3

    .line 1495
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1496
    :catch_15
    move-exception v1

    .line 1497
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1498
    goto :goto_d
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 982
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 993
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 994
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 995
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1002
    .end local p2    # "defaultValue":F
    :goto_b
    return p2

    .line 999
    .restart local p2    # "defaultValue":F
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result p2

    goto :goto_b

    .line 1000
    :catch_15
    move-exception v6

    .line 1001
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1467
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1468
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1469
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1476
    :goto_d
    return-object v3

    .line 1473
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1474
    :catch_15
    move-exception v1

    .line 1475
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1476
    goto :goto_d
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1559
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1560
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1561
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1568
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1565
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1566
    :catch_11
    move-exception v0

    .line 1567
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1568
    goto :goto_d
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 928
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 929
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 936
    .end local p2    # "defaultValue":I
    :goto_b
    return p2

    .line 933
    .restart local p2    # "defaultValue":I
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result p2

    goto :goto_b

    .line 934
    :catch_15
    move-exception v6

    .line 935
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1423
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1424
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1425
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1432
    :goto_d
    return-object v3

    .line 1429
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1430
    :catch_15
    move-exception v1

    .line 1431
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1432
    goto :goto_d
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1269
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1270
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1271
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1278
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1275
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1276
    :catch_11
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<Integer>"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1278
    goto :goto_d
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 949
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 960
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 961
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 962
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 969
    .end local p2    # "defaultValue":J
    :goto_b
    return-wide p2

    .line 966
    .restart local p2    # "defaultValue":J
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result-wide p2

    goto :goto_b

    .line 967
    :catch_15
    move-exception v6

    .line 968
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1445
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1446
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1447
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1454
    :goto_d
    return-object v3

    .line 1451
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1452
    :catch_15
    move-exception v1

    .line 1453
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1454
    goto :goto_d
.end method

.method public getPairValue()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 158
    iget-object v4, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    .line 159
    .local v2, "size":I
    const/4 v4, 0x1

    if-le v2, v4, :cond_14

    .line 160
    const-string v4, "Bundle"

    const-string v5, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_14
    if-nez v2, :cond_18

    move-object v1, v3

    .line 170
    :goto_17
    return-object v1

    .line 165
    :cond_18
    iget-object v4, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "o":Ljava/lang/Object;
    :try_start_26
    check-cast v1, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_28} :catch_29

    goto :goto_17

    .line 168
    :catch_29
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "getPairValue()"

    const-string v5, "String"

    invoke-direct {p0, v4, v1, v5, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v3

    .line 170
    goto :goto_17
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1158
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1159
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1160
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1167
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1164
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/Parcelable;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1165
    :catch_11
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1167
    goto :goto_d
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1180
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1181
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1182
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1189
    :goto_d
    return-object v3

    .line 1186
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Landroid/os/Parcelable;

    move-object v3, v0

    check-cast v3, [Landroid/os/Parcelable;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1187
    :catch_15
    move-exception v1

    .line 1188
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1189
    goto :goto_d
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1202
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1203
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1204
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1211
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1208
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1209
    :catch_11
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1211
    goto :goto_d
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1247
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1248
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1249
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1256
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1253
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/io/Serializable;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1254
    :catch_11
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Serializable"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1256
    goto :goto_d
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 883
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 895
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 896
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 903
    .end local p2    # "defaultValue":S
    :goto_b
    return p2

    .line 900
    .restart local p2    # "defaultValue":S
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result p2

    goto :goto_b

    .line 901
    :catch_15
    move-exception v6

    .line 902
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1379
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1380
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1381
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1388
    :goto_d
    return-object v3

    .line 1385
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1386
    :catch_15
    move-exception v1

    .line 1387
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1388
    goto :goto_d
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1225
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1226
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1227
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1234
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1231
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/util/SparseArray;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1232
    :catch_11
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "SparseArray"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1234
    goto :goto_d
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1048
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1049
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1050
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1057
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1054
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1055
    :catch_11
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "String"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1057
    goto :goto_d
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1070
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1071
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1072
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_c

    .line 1079
    .end local v1    # "o":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_b
    return-object p2

    .line 1076
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_c
    :try_start_c
    check-cast v1, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_10

    .end local v1    # "o":Ljava/lang/Object;
    move-object p2, v1

    goto :goto_b

    .line 1077
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_10
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    goto :goto_b
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1511
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1512
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1513
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1520
    :goto_d
    return-object v3

    .line 1517
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1518
    :catch_15
    move-exception v1

    .line 1519
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1520
    goto :goto_d
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1291
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1292
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1293
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 1300
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 1297
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 1298
    :catch_11
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<String>"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1300
    goto :goto_d
.end method

.method public hasFileDescriptors()Z
    .registers 9

    .prologue
    .line 318
    iget-boolean v7, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-nez v7, :cond_17

    .line 319
    const/4 v2, 0x0

    .line 321
    .local v2, "fdFound":Z
    iget-object v7, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v7, :cond_1a

    .line 322
    iget-object v7, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 323
    const/4 v2, 0x1

    .line 374
    :cond_12
    :goto_12
    iput-boolean v2, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 375
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 377
    .end local v2    # "fdFound":Z
    :cond_17
    iget-boolean v7, p0, Landroid/os/Bundle;->mHasFds:Z

    return v7

    .line 327
    .restart local v2    # "fdFound":Z
    :cond_1a
    iget-object v7, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 328
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_24
    :goto_24
    if-nez v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 329
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 330
    .local v5, "obj":Ljava/lang/Object;
    instance-of v7, v5, Landroid/os/Parcelable;

    if-eqz v7, :cond_46

    .line 331
    check-cast v5, Landroid/os/Parcelable;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-interface {v5}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_24

    .line 333
    const/4 v2, 0x1

    .line 334
    goto :goto_12

    .line 336
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_46
    instance-of v7, v5, [Landroid/os/Parcelable;

    if-eqz v7, :cond_63

    .line 337
    check-cast v5, [Landroid/os/Parcelable;

    .end local v5    # "obj":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Landroid/os/Parcelable;

    .line 338
    .local v0, "array":[Landroid/os/Parcelable;
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    .local v4, "n":I
    :goto_52
    if-ltz v4, :cond_24

    .line 339
    aget-object v7, v0, v4

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_60

    .line 341
    const/4 v2, 0x1

    .line 342
    goto :goto_24

    .line 338
    :cond_60
    add-int/lit8 v4, v4, -0x1

    goto :goto_52

    .line 345
    .end local v0    # "array":[Landroid/os/Parcelable;
    .end local v4    # "n":I
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_63
    instance-of v7, v5, Landroid/util/SparseArray;

    if-eqz v7, :cond_85

    move-object v1, v5

    .line 346
    check-cast v1, Landroid/util/SparseArray;

    .line 348
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "n":I
    :goto_70
    if-ltz v4, :cond_24

    .line 349
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_82

    .line 351
    const/4 v2, 0x1

    .line 352
    goto :goto_24

    .line 348
    :cond_82
    add-int/lit8 v4, v4, -0x1

    goto :goto_70

    .line 355
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v4    # "n":I
    :cond_85
    instance-of v7, v5, Ljava/util/ArrayList;

    if-eqz v7, :cond_24

    move-object v0, v5

    .line 356
    check-cast v0, Ljava/util/ArrayList;

    .line 359
    .local v0, "array":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_24

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/os/Parcelable;

    if-eqz v7, :cond_24

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "n":I
    :goto_a1
    if-ltz v4, :cond_24

    .line 362
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 363
    .local v6, "p":Landroid/os/Parcelable;
    if-eqz v6, :cond_b6

    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b6

    .line 365
    const/4 v2, 0x1

    .line 366
    goto/16 :goto_24

    .line 361
    :cond_b6
    add-int/lit8 v4, v4, -0x1

    goto :goto_a1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 243
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 311
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 296
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 297
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    iget-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v1, p1, Landroid/os/Bundle;->mHasFds:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 301
    iget-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 302
    return-void

    .line 301
    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 389
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 614
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 734
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 401
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 626
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 413
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 650
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 497
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 722
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 590
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 473
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 697
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 698
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 461
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 686
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 750
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 437
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 662
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 566
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 449
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 673
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 674
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 509
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 511
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 523
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 525
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 538
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 540
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 602
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 425
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 638
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p2, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 553
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 555
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 485
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 709
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 710
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 578
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1633
    .local v0, "length":I
    if-gez v0, :cond_1f

    .line 1634
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length in parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1636
    :cond_1f
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1637
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;I)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 1640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1641
    .local v0, "magic":I
    const v4, 0x4c444e42

    if-eq v0, v4, :cond_34

    .line 1643
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1644
    .local v3, "st":Ljava/lang/String;
    const-string v4, "Bundle"

    const-string/jumbo v5, "readBundle: bad magic number"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const-string v4, "Bundle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readBundle: trace = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    .end local v3    # "st":Ljava/lang/String;
    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1650
    .local v1, "offset":I
    add-int v4, v1, p2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1653
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1654
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1655
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1657
    iput-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1658
    invoke-virtual {v2}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v4

    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 1659
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 1660
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 286
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method public setAllowFds(Z)Z
    .registers 3
    .param p1, "allowFds"    # Z

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 194
    .local v0, "orig":Z
    iput-boolean p1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 195
    return v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 181
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 182
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 235
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1664
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_26

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_46

    move-result-object v0

    .line 1668
    :goto_24
    monitor-exit p0

    return-object v0

    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_46

    move-result-object v0

    goto :goto_24

    .line 1664
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unparcel()V
    .registers 5

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-nez v1, :cond_7

    .line 226
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 216
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, "N":I
    if-ltz v0, :cond_5

    .line 220
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 223
    :cond_1a
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 224
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_5

    .line 212
    .end local v0    # "N":I
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1600
    iget-boolean v4, p0, Landroid/os/Bundle;->mAllowFds:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v2

    .line 1602
    .local v2, "oldAllowFds":Z
    :try_start_6
    iget-object v4, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v4, :cond_23

    .line 1603
    iget-object v4, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1604
    .local v0, "length":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1605
    const v4, 0x4c444e42

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    iget-object v4, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_48

    .line 1622
    :goto_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1624
    return-void

    .line 1608
    .end local v0    # "length":I
    :cond_23
    const/4 v4, -0x1

    :try_start_24
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    const v4, 0x4c444e42

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1612
    .local v3, "oldPos":I
    iget-object v4, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1616
    .local v1, "newPos":I
    add-int/lit8 v4, v3, -0x8

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1617
    sub-int v0, v1, v3

    .line 1618
    .restart local v0    # "length":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_47
    .catchall {:try_start_24 .. :try_end_47} :catchall_48

    goto :goto_1f

    .line 1622
    .end local v0    # "length":I
    .end local v1    # "newPos":I
    .end local v3    # "oldPos":I
    :catchall_48
    move-exception v4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    throw v4
.end method
