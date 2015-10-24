.class public Lorg/apache/xml/utils/StringToIntTable;
.super Ljava/lang/Object;
.source "StringToIntTable.java"


# static fields
.field public static final INVALID_KEY:I = -0x2710


# instance fields
.field private m_blocksize:I

.field private m_firstFree:I

.field private m_map:[Ljava/lang/String;

.field private m_mapSize:I

.field private m_values:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    .line 58
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    .line 59
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    .line 60
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "blocksize"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    .line 71
    iput p1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    .line 72
    iput p1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    .line 73
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    .line 74
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    .line 75
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    if-ge v0, v1, :cond_14

    .line 173
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 174
    const/4 v1, 0x1

    .line 177
    :goto_10
    return v1

    .line 171
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public final get(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    if-ge v0, v1, :cond_17

    .line 132
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 133
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    aget v1, v1, v0

    .line 136
    :goto_13
    return v1

    .line 130
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_17
    const/16 v1, -0x2710

    goto :goto_13
.end method

.method public final getIgnoreCase(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v1, -0x2710

    .line 149
    if-nez p1, :cond_5

    .line 158
    :cond_4
    :goto_4
    return v1

    .line 152
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    if-ge v0, v2, :cond_4

    .line 154
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 155
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    aget v1, v1, v0

    goto :goto_4

    .line 152
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public final getLength()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    return v0
.end method

.method public final keys()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 187
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    new-array v1, v2, [Ljava/lang/String;

    .line 189
    .local v1, "keysArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    if-ge v0, v2, :cond_12

    .line 191
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 194
    :cond_12
    return-object v1
.end method

.method public final put(Ljava/lang/String;I)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    if-lt v2, v3, :cond_2e

    .line 98
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    .line 100
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    new-array v0, v2, [Ljava/lang/String;

    .line 102
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    .line 106
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    new-array v1, v2, [I

    .line 108
    .local v1, "newValues":[I
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    .line 113
    .end local v0    # "newMap":[Ljava/lang/String;
    .end local v1    # "newValues":[I
    :cond_2e
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    aput-object p1, v2, v3

    .line 114
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    aput p2, v2, v3

    .line 116
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    .line 117
    return-void
.end method
