.class public Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
.super Ljava/lang/Object;
.source "AreaCodeMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 54
    return-void
.end method

.method private binarySearch(IIJ)I
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "current":I
    :goto_1
    if-gt p1, p2, :cond_20

    .line 179
    add-int v3, p1, p2

    ushr-int/lit8 v0, v3, 0x1

    .line 180
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v3, v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPrefix(I)I

    move-result v2

    .line 181
    .local v2, "currentValue":I
    int-to-long v3, v2

    cmp-long v3, v3, p3

    if-nez v3, :cond_14

    move v1, v0

    .line 190
    .end local v0    # "current":I
    .end local v2    # "currentValue":I
    .local v1, "current":I
    :goto_13
    return v1

    .line 183
    .end local v1    # "current":I
    .restart local v0    # "current":I
    .restart local v2    # "currentValue":I
    :cond_14
    int-to-long v3, v2

    cmp-long v3, v3, p3

    if-lez v3, :cond_1d

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 185
    move p2, v0

    goto :goto_1

    .line 187
    :cond_1d
    add-int/lit8 p1, v0, 0x1

    goto :goto_1

    .end local v2    # "currentValue":I
    :cond_20
    move v1, v0

    .line 190
    .end local v0    # "current":I
    .restart local v1    # "current":I
    goto :goto_13
.end method

.method private createDefaultMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;-><init>()V

    return-object v0
.end method

.method private createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;-><init>()V

    return-object v0
.end method

.method private static getSizeOfAreaCodeMapStorage(Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;Ljava/util/SortedMap;)I
    .registers 5
    .param p0, "mapStorage"    # Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "areaCodeMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->readFromSortedMap(Ljava/util/SortedMap;)V

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v1, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 68
    .local v2, "sizeOfStorage":I
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 69
    return v2
.end method


# virtual methods
.method getAreaCodeMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    return-object v0
.end method

.method getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "areaCodeMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v2

    .line 89
    .local v2, "flyweightMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    invoke-static {v2, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->getSizeOfAreaCodeMapStorage(Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;Ljava/util/SortedMap;)I

    move-result v4

    .line 91
    .local v4, "sizeOfFlyweightMapStorage":I
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->createDefaultMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v0

    .line 92
    .local v0, "defaultMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    invoke-static {v0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->getSizeOfAreaCodeMapStorage(Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;Ljava/util/SortedMap;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_15

    move-result v3

    .line 94
    .local v3, "sizeOfDefaultMapStorage":I
    if-ge v4, v3, :cond_13

    .line 98
    .end local v0    # "defaultMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .end local v2    # "flyweightMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .end local v3    # "sizeOfDefaultMapStorage":I
    .end local v4    # "sizeOfFlyweightMapStorage":I
    :goto_12
    return-object v2

    .restart local v0    # "defaultMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .restart local v2    # "flyweightMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .restart local v3    # "sizeOfDefaultMapStorage":I
    .restart local v4    # "sizeOfFlyweightMapStorage":I
    :cond_13
    move-object v2, v0

    .line 94
    goto :goto_12

    .line 96
    .end local v0    # "defaultMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .end local v2    # "flyweightMapStorage":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .end local v3    # "sizeOfDefaultMapStorage":I
    .end local v4    # "sizeOfFlyweightMapStorage":I
    :catch_15
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v2

    goto :goto_12
.end method

.method lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 13
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v10, 0x0

    .line 143
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getNumOfEntries()I

    move-result v3

    .line 144
    .local v3, "numOfEntries":I
    if-nez v3, :cond_c

    .line 145
    const-string v8, ""

    .line 167
    :goto_b
    return-object v8

    .line 147
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v9, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 149
    .local v4, "phonePrefix":J
    add-int/lit8 v0, v3, -0x1

    .line 150
    .local v0, "currentIndex":I
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    move-result-object v2

    .line 151
    .local v2, "currentSetOfLengths":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :goto_33
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-lez v8, :cond_79

    .line 152
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 153
    .local v7, "possibleLength":Ljava/lang/Integer;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "phonePrefixStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_59

    .line 155
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 157
    :cond_59
    invoke-direct {p0, v10, v0, v4, v5}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->binarySearch(IIJ)I

    move-result v0

    .line 158
    if-gez v0, :cond_62

    .line 159
    const-string v8, ""

    goto :goto_b

    .line 161
    :cond_62
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPrefix(I)I

    move-result v1

    .line 162
    .local v1, "currentPrefix":I
    int-to-long v8, v1

    cmp-long v8, v4, v8

    if-nez v8, :cond_74

    .line 163
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    .line 165
    :cond_74
    invoke-interface {v2, v7}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    .line 166
    goto :goto_33

    .line 167
    .end local v1    # "currentPrefix":I
    .end local v6    # "phonePrefixStr":Ljava/lang/String;
    .end local v7    # "possibleLength":Ljava/lang/Integer;
    :cond_79
    const-string v8, ""

    goto :goto_b
.end method

.method public readAreaCodeMap(Ljava/util/SortedMap;)V
    .registers 3
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
    .line 111
    .local p1, "sortedAreaCodeMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    .line 112
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 120
    .local v0, "useFlyweightMapStorage":Z
    if-eqz v0, :cond_13

    .line 121
    new-instance v1, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    .line 125
    :goto_d
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    .line 126
    return-void

    .line 123
    :cond_13
    new-instance v1, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->isFlyweight()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 134
    return-void
.end method
