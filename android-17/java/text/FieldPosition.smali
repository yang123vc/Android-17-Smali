.class public Ljava/text/FieldPosition;
.super Ljava/lang/Object;
.source "FieldPosition.java"


# instance fields
.field private beginIndex:I

.field private endIndex:I

.field private myAttribute:Ljava/text/Format$Field;

.field private myField:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "field"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Ljava/text/FieldPosition;->myField:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/FieldPosition;->myField:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    .line 71
    iput p2, p0, Ljava/text/FieldPosition;->myField:I

    .line 72
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 76
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 91
    instance-of v2, p1, Ljava/text/FieldPosition;

    if-nez v2, :cond_6

    .line 95
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 94
    check-cast v0, Ljava/text/FieldPosition;

    .line 95
    .local v0, "pos":Ljava/text/FieldPosition;
    iget v2, p0, Ljava/text/FieldPosition;->myField:I

    iget v3, v0, Ljava/text/FieldPosition;->myField:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    iget-object v3, v0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    if-ne v2, v3, :cond_5

    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getBeginIndex()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public getField()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Ljava/text/FieldPosition;->myField:I

    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 137
    iget-object v1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    if-nez v1, :cond_13

    const/4 v0, 0x0

    .line 138
    .local v0, "attributeHash":I
    :goto_5
    iget v1, p0, Ljava/text/FieldPosition;->myField:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    add-int/2addr v1, v2

    return v1

    .line 137
    .end local v0    # "attributeHash":I
    :cond_13
    iget-object v1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    invoke-virtual {v1}, Ljava/text/Format$Field;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public setBeginIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 148
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 149
    return-void
.end method

.method public setEndIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 158
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->myField:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beginIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
