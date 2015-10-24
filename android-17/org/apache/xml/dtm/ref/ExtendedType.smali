.class public final Lorg/apache/xml/dtm/ref/ExtendedType;
.super Ljava/lang/Object;
.source "ExtendedType.java"


# instance fields
.field private hash:I

.field private localName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nodetype:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 45
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "hash"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 62
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 64
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z
    .registers 6
    .param p1, "other"    # Lorg/apache/xml/dtm/ref/ExtendedType;

    .prologue
    const/4 v1, 0x0

    .line 111
    :try_start_1
    iget v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    if-ne v2, v3, :cond_1c

    iget-object v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_1d

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    .line 117
    :cond_1c
    :goto_1c
    return v1

    .line 115
    :catch_1d
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_1c
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return v0
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 75
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 78
    return-void
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "hash"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 88
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 90
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    .line 91
    return-void
.end method
