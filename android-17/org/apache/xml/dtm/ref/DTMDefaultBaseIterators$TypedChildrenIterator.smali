.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedChildrenIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .param p2, "nodeType"    # I

    .prologue
    .line 435
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 436
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_nodeType:I

    .line 437
    return-void
.end method


# virtual methods
.method public next()I
    .registers 7

    .prologue
    const/16 v5, 0xe

    const/4 v3, -0x1

    .line 473
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    .line 475
    .local v1, "node":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_nodeType:I

    .line 477
    .local v2, "nodeType":I
    if-lt v2, v5, :cond_20

    .line 478
    :goto_9
    if-eq v1, v3, :cond_2c

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v4

    if-eq v4, v2, :cond_2c

    .line 479
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v1

    goto :goto_9

    .line 491
    .local v0, "eType":I
    :cond_1a
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v1

    .line 482
    .end local v0    # "eType":I
    :cond_20
    if-eq v1, v3, :cond_2c

    .line 483
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    .line 484
    .restart local v0    # "eType":I
    if-ge v0, v5, :cond_31

    .line 485
    if-ne v0, v2, :cond_1a

    .line 495
    .end local v0    # "eType":I
    :cond_2c
    :goto_2c
    if-ne v1, v3, :cond_3c

    .line 496
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    .line 500
    :goto_30
    return v3

    .line 488
    .restart local v0    # "eType":I
    :cond_31
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-ne v4, v2, :cond_1a

    goto :goto_2c

    .line 499
    .end local v0    # "eType":I
    :cond_3c
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v3

    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    .line 500
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->returnNode(I)I

    move-result v3

    goto :goto_30
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 5
    .param p1, "node"    # I

    .prologue
    const/4 v0, -0x1

    .line 450
    if-nez p1, :cond_9

    .line 451
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 452
    :cond_9
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_isRestartable:Z

    if-eqz v1, :cond_17

    .line 454
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_startNode:I

    .line 455
    if-ne p1, v0, :cond_18

    :goto_11
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    .line 459
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 462
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;
    :cond_17
    return-object p0

    .line 455
    .restart local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;
    :cond_18
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_startNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    move-result v0

    goto :goto_11
.end method
