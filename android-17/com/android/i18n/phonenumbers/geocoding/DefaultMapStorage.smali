.class Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;
.super Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
.source "DefaultMapStorage.java"


# instance fields
.field private descriptions:[Ljava/lang/String;

.field private phoneNumberPrefixes:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrefix(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v0, v0, p1

    return v0
.end method

.method public isFlyweight()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    .line 69
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    array-length v2, v2

    iget v3, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v2, v3, :cond_17

    .line 70
    :cond_11
    iget v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 72
    :cond_17
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v2, v3, :cond_28

    .line 73
    :cond_22
    iget v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 75
    :cond_28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    iget v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v2, :cond_40

    .line 76
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 77
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 79
    :cond_40
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 80
    .local v1, "sizeOfLengths":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    .line 81
    const/4 v0, 0x0

    :goto_4a
    if-ge v0, v1, :cond_5c

    .line 82
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 84
    :cond_5c
    return-void
.end method

.method public readFromSortedMap(Ljava/util/SortedMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "sortedAreaCodeMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    .line 56
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 57
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 60
    .local v3, "prefix":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput v3, v4, v1

    .line 61
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1b

    .line 63
    .end local v3    # "prefix":I
    :cond_44
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 7
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v4, :cond_1b

    .line 90
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v4, v4, v0

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 91
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 93
    :cond_1b
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v3

    .line 94
    .local v3, "sizeOfLengths":I
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 95
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 96
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_2a

    .line 98
    .end local v2    # "length":Ljava/lang/Integer;
    :cond_3e
    return-void
.end method
