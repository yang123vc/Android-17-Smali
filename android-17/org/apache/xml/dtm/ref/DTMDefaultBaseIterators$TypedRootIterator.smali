.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .param p2, "nodeType"    # I

    .prologue
    .line 755
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 756
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 757
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    .line 758
    return-void
.end method


# virtual methods
.method public next()I
    .registers 8

    .prologue
    const/16 v6, 0xe

    const/4 v3, -0x1

    .line 767
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_startNode:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_currentNode:I

    if-ne v4, v5, :cond_a

    .line 792
    :cond_9
    :goto_9
    return v3

    .line 770
    :cond_a
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    .line 771
    .local v2, "nodeType":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_startNode:I

    .line 772
    .local v1, "node":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    move-result v0

    .line 774
    .local v0, "expType":I
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_currentNode:I

    .line 776
    if-lt v2, v6, :cond_1f

    .line 777
    if-ne v2, v0, :cond_9

    .line 778
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    move-result v3

    goto :goto_9

    .line 781
    :cond_1f
    if-ge v0, v6, :cond_28

    .line 782
    if-ne v0, v2, :cond_9

    .line 783
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    move-result v3

    goto :goto_9

    .line 786
    :cond_28
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-ne v4, v2, :cond_9

    .line 787
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    move-result v3

    goto :goto_9
.end method
