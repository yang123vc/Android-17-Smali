.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChildrenIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 2

    .prologue
    .line 287
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public next()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 327
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    if-eq v2, v1, :cond_19

    .line 328
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    .line 329
    .local v0, "node":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    .line 330
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->returnNode(I)I

    move-result v1

    .line 333
    .end local v0    # "node":I
    :cond_19
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4
    .param p1, "node"    # I

    .prologue
    const/4 v0, -0x1

    .line 305
    if-nez p1, :cond_9

    .line 306
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 307
    :cond_9
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_isRestartable:Z

    if-eqz v1, :cond_17

    .line 309
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_startNode:I

    .line 310
    if-ne p1, v0, :cond_18

    :goto_11
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    .line 313
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 316
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;
    :cond_17
    return-object p0

    .line 310
    .restart local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;
    :cond_18
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    move-result v0

    goto :goto_11
.end method
