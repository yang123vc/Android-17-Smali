.class public Lorg/apache/http/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueParser;


# static fields
.field private static final ALL_DELIMITERS:[C

.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

.field private static final ELEM_DELIMITER:C = ','

.field private static final PARAM_DELIMITER:C = ';'


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    return-void

    :array_10
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf(C[C)Z
    .registers 4
    .param p0, "ch"    # C
    .param p1, "chs"    # [C

    .prologue
    .line 305
    if-eqz p1, :cond_f

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 307
    aget-char v1, p1, v0

    if-ne p0, v1, :cond_c

    .line 308
    const/4 v1, 0x1

    .line 312
    .end local v0    # "i":I
    :goto_b
    return v1

    .line 306
    .restart local v0    # "i":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 312
    .end local v0    # "i":I
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static final parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p0, :cond_a

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_a
    if-nez p1, :cond_e

    .line 103
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 105
    :cond_e
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 106
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 107
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 108
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2
.end method

.method public static final parseHeaderElement(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/HeaderElement;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p0, :cond_a

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_a
    if-nez p1, :cond_e

    .line 154
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 156
    :cond_e
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 157
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 158
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 159
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2
.end method

.method public static final parseNameValuePair(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/NameValuePair;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 283
    if-nez p0, :cond_a

    .line 284
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_a
    if-nez p1, :cond_e

    .line 289
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 291
    :cond_e
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 292
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 293
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 294
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2
.end method

.method public static final parseParameters(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/NameValuePair;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p0, :cond_a

    .line 214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_a
    if-nez p1, :cond_e

    .line 219
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 221
    :cond_e
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 222
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 223
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 224
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 196
    new-instance v0, Lorg/apache/http/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 416
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 116
    if-nez p1, :cond_a

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Char array buffer may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_a
    if-nez p2, :cond_14

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parser cursor may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "elements":Ljava/util/List;
    :cond_19
    :goto_19
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_37

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 126
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_33

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 127
    :cond_33
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 130
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/http/HeaderElement;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/http/HeaderElement;

    check-cast v2, [Lorg/apache/http/HeaderElement;

    return-object v2
.end method

.method public parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .registers 8
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 167
    if-nez p1, :cond_a

    .line 168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Char array buffer may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_a
    if-nez p2, :cond_14

    .line 171
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parser cursor may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_14
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 175
    .local v1, "nvp":Lorg/apache/http/NameValuePair;
    const/4 v2, 0x0

    .line 176
    .local v2, "params":[Lorg/apache/http/NameValuePair;
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_31

    .line 177
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "ch":C
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_31

    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 182
    .end local v0    # "ch":C
    :cond_31
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;

    move-result-object v3

    return-object v3
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 301
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v0

    return-object v0
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;
    .registers 18
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # [C

    .prologue
    .line 319
    if-nez p1, :cond_a

    .line 320
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Char array buffer may not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 322
    :cond_a
    if-nez p2, :cond_14

    .line 323
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Parser cursor may not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 326
    :cond_14
    const/4 v10, 0x0

    .line 328
    .local v10, "terminated":Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v8

    .line 329
    .local v8, "pos":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    .line 330
    .local v5, "indexFrom":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v6

    .line 333
    .local v6, "indexTo":I
    const/4 v7, 0x0

    .line 334
    .local v7, "name":Ljava/lang/String;
    :goto_22
    if-ge v8, v6, :cond_2c

    .line 335
    invoke-virtual {p1, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 336
    .local v1, "ch":C
    const/16 v12, 0x3d

    if-ne v1, v12, :cond_40

    .line 346
    .end local v1    # "ch":C
    :cond_2c
    :goto_2c
    if-ne v8, v6, :cond_4d

    .line 347
    const/4 v10, 0x1

    .line 348
    invoke-virtual {p1, v5, v6}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    .line 354
    :goto_33
    if-eqz v10, :cond_54

    .line 355
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 356
    const/4 v12, 0x0

    invoke-virtual {p0, v7, v12}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v12

    .line 403
    :goto_3f
    return-object v12

    .line 339
    .restart local v1    # "ch":C
    :cond_40
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 340
    const/4 v10, 0x1

    .line 341
    goto :goto_2c

    .line 343
    :cond_4a
    add-int/lit8 v8, v8, 0x1

    .line 344
    goto :goto_22

    .line 350
    .end local v1    # "ch":C
    :cond_4d
    invoke-virtual {p1, v5, v8}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    .line 351
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 360
    :cond_54
    const/4 v11, 0x0

    .line 361
    .local v11, "value":Ljava/lang/String;
    move v3, v8

    .line 363
    .local v3, "i1":I
    const/4 v9, 0x0

    .line 364
    .local v9, "qouted":Z
    const/4 v2, 0x0

    .line 365
    .local v2, "escaped":Z
    :goto_58
    if-ge v8, v6, :cond_74

    .line 366
    invoke-virtual {p1, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 367
    .restart local v1    # "ch":C
    const/16 v12, 0x22

    if-ne v1, v12, :cond_67

    if-nez v2, :cond_67

    .line 368
    if-nez v9, :cond_84

    const/4 v9, 0x1

    .line 370
    :cond_67
    :goto_67
    if-nez v9, :cond_86

    if-nez v2, :cond_86

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v12

    if-eqz v12, :cond_86

    .line 371
    const/4 v10, 0x1

    .line 382
    .end local v1    # "ch":C
    :cond_74
    move v4, v8

    .line 384
    .local v4, "i2":I
    :goto_75
    if-ge v3, v4, :cond_96

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_96

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 368
    .end local v4    # "i2":I
    .restart local v1    # "ch":C
    :cond_84
    const/4 v9, 0x0

    goto :goto_67

    .line 374
    :cond_86
    if-eqz v2, :cond_8c

    .line 375
    const/4 v2, 0x0

    .line 379
    :goto_89
    add-int/lit8 v8, v8, 0x1

    .line 380
    goto :goto_58

    .line 377
    :cond_8c
    if-eqz v9, :cond_94

    const/16 v12, 0x5c

    if-ne v1, v12, :cond_94

    const/4 v2, 0x1

    :goto_93
    goto :goto_89

    :cond_94
    const/4 v2, 0x0

    goto :goto_93

    .line 388
    .end local v1    # "ch":C
    .restart local v4    # "i2":I
    :cond_96
    :goto_96
    if-le v4, v3, :cond_a7

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_a7

    .line 389
    add-int/lit8 v4, v4, -0x1

    goto :goto_96

    .line 392
    :cond_a7
    sub-int v12, v4, v3

    const/4 v13, 0x2

    if-lt v12, v13, :cond_c2

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-ne v12, v13, :cond_c2

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-ne v12, v13, :cond_c2

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 396
    add-int/lit8 v4, v4, -0x1

    .line 398
    :cond_c2
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 399
    if-eqz v10, :cond_ca

    .line 400
    add-int/lit8 v8, v8, 0x1

    .line 402
    :cond_ca
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 403
    invoke-virtual {p0, v7, v11}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v12

    goto/16 :goto_3f
.end method

.method public parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;
    .registers 10
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 233
    if-nez p1, :cond_a

    .line 234
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Char array buffer may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_a
    if-nez p2, :cond_14

    .line 237
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parser cursor may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 240
    :cond_14
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 241
    .local v4, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 243
    .local v1, "indexTo":I
    :goto_1c
    if-ge v4, v1, :cond_2b

    .line 244
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 245
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 246
    add-int/lit8 v4, v4, 0x1

    .line 250
    goto :goto_1c

    .line 251
    .end local v0    # "ch":C
    :cond_2b
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 252
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 253
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    .line 266
    :goto_37
    return-object v5

    .line 256
    :cond_38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "params":Ljava/util/List;
    :cond_3d
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v5

    if-nez v5, :cond_58

    .line 258
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 259
    .local v2, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 261
    .restart local v0    # "ch":C
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_3d

    .line 266
    .end local v0    # "ch":C
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    :cond_58
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/http/NameValuePair;

    check-cast v5, [Lorg/apache/http/NameValuePair;

    goto :goto_37
.end method
