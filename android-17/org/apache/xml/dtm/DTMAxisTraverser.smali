.class public abstract Lorg/apache/xml/dtm/DTMAxisTraverser;
.super Ljava/lang/Object;
.source "DTMAxisTraverser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public first(I)I
    .registers 3
    .param p1, "context"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1, p1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    return v0
.end method

.method public first(II)I
    .registers 4
    .param p1, "context"    # I
    .param p2, "extendedTypeID"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    move-result v0

    return v0
.end method

.method public abstract next(II)I
.end method

.method public abstract next(III)I
.end method
