.class Landroid/net/Uri$PathPart;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathPart"
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$PathPart;

.field static final NULL:Landroid/net/Uri$PathPart;


# instance fields
.field private pathSegments:Landroid/net/Uri$PathSegments;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2158
    new-instance v0, Landroid/net/Uri$PathPart;

    invoke-direct {v0, v1, v1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 2161
    new-instance v0, Landroid/net/Uri$PathPart;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2164
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    return-void
.end method

.method static appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 4
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2251
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2254
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    return-object v1
.end method

.method static appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 7
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "newSegment"    # Ljava/lang/String;

    .prologue
    .line 2225
    if-nez p0, :cond_1a

    .line 2227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .line 2247
    :goto_19
    return-object v3

    .line 2230
    :cond_1a
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v1

    .line 2232
    .local v1, "oldPath":Ljava/lang/String;
    if-nez v1, :cond_22

    .line 2233
    const-string v1, ""

    .line 2236
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2238
    .local v2, "oldPathLength":I
    if-nez v2, :cond_40

    .line 2240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    .local v0, "newPath":Ljava/lang/String;
    :goto_3b
    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    goto :goto_19

    .line 2241
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_40
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_5c

    .line 2242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newPath":Ljava/lang/String;
    goto :goto_3b

    .line 2244
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newPath":Ljava/lang/String;
    goto :goto_3b
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 3
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2296
    if-nez p0, :cond_5

    .line 2297
    sget-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 2304
    :goto_4
    return-object v0

    .line 2300
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 2301
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    goto :goto_4

    .line 2304
    :cond_e
    new-instance v0, Landroid/net/Uri$PathPart;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 2
    .param p0, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2286
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 2
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 2277
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;
    .registers 9
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 2313
    iget-object v6, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_20

    move v1, v0

    .line 2317
    .local v1, "encodedCached":Z
    :goto_b
    if-eqz v1, :cond_22

    iget-object v4, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    .line 2319
    .local v4, "oldPath":Ljava/lang/String;
    :goto_f
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 2335
    .end local p0    # "oldPart":Landroid/net/Uri$PathPart;
    :cond_1f
    :goto_1f
    return-object p0

    .end local v1    # "encodedCached":Z
    .end local v4    # "oldPath":Ljava/lang/String;
    .restart local p0    # "oldPart":Landroid/net/Uri$PathPart;
    :cond_20
    move v1, v5

    .line 2313
    goto :goto_b

    .line 2317
    .restart local v1    # "encodedCached":Z
    :cond_22
    iget-object v4, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    goto :goto_f

    .line 2325
    .restart local v4    # "oldPath":Ljava/lang/String;
    :cond_25
    if-eqz v1, :cond_61

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2330
    .local v3, "newEncoded":Ljava/lang/String;
    :goto_3c
    iget-object v6, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_66

    .line 2331
    .local v0, "decodedCached":Z
    :goto_44
    if-eqz v0, :cond_68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2335
    .local v2, "newDecoded":Ljava/lang/String;
    :goto_5b
    new-instance p0, Landroid/net/Uri$PathPart;

    .end local p0    # "oldPart":Landroid/net/Uri$PathPart;
    invoke-direct {p0, v3, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 2325
    .end local v0    # "decodedCached":Z
    .end local v2    # "newDecoded":Ljava/lang/String;
    .end local v3    # "newEncoded":Ljava/lang/String;
    .restart local p0    # "oldPart":Landroid/net/Uri$PathPart;
    :cond_61
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .restart local v3    # "newEncoded":Ljava/lang/String;
    :cond_66
    move v0, v5

    .line 2330
    goto :goto_44

    .line 2331
    .restart local v0    # "decodedCached":Z
    :cond_68
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$PathPart;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2258
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2259
    .local v0, "representation":I
    packed-switch v0, :pswitch_data_40

    .line 2267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2261
    :pswitch_20
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    .line 2265
    :goto_2c
    return-object v1

    .line 2263
    :pswitch_2d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    goto :goto_2c

    .line 2265
    :pswitch_36
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    goto :goto_2c

    .line 2259
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2d
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method getEncoded()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2169
    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    .line 2172
    .local v0, "hasEncoded":Z
    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    :goto_d
    return-object v1

    .line 2169
    .end local v0    # "hasEncoded":Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    .line 2172
    .restart local v0    # "hasEncoded":Z
    :cond_10
    iget-object v1, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    const-string v2, "/"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    goto :goto_d
.end method

.method getPathSegments()Landroid/net/Uri$PathSegments;
    .registers 7

    .prologue
    .line 2188
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    if-eqz v5, :cond_7

    .line 2189
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    .line 2217
    :goto_6
    return-object v5

    .line 2192
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v2

    .line 2193
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 2194
    sget-object v5, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    goto :goto_6

    .line 2197
    :cond_12
    new-instance v4, Landroid/net/Uri$PathSegmentsBuilder;

    invoke-direct {v4}, Landroid/net/Uri$PathSegmentsBuilder;-><init>()V

    .line 2199
    .local v4, "segmentBuilder":Landroid/net/Uri$PathSegmentsBuilder;
    const/4 v3, 0x0

    .line 2201
    .local v3, "previous":I
    :goto_18
    const/16 v5, 0x2f

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "current":I
    const/4 v5, -0x1

    if-le v0, v5, :cond_31

    .line 2204
    if-ge v3, v0, :cond_2e

    .line 2205
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2207
    .local v1, "decodedSegment":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2209
    .end local v1    # "decodedSegment":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v3, v0, 0x1

    goto :goto_18

    .line 2213
    :cond_31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_42

    .line 2214
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2217
    :cond_42
    invoke-virtual {v4}, Landroid/net/Uri$PathSegmentsBuilder;->build()Landroid/net/Uri$PathSegments;

    move-result-object v5

    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    goto :goto_6
.end method
