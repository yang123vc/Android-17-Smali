.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 2

    .prologue
    .line 330
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
    .param p2, "x1"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .registers 3
    .param p1, "context"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstChild(I)I

    move-result v0

    return v0
.end method

.method public first(II)I
    .registers 6
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    .prologue
    .line 431
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v1

    .line 433
    .local v1, "identity":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_firstch(I)I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->getNextIndexed(III)I

    move-result v0

    .line 436
    .local v0, "firstMatch":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    return v2
.end method

.method protected getNextIndexed(III)I
    .registers 11
    .param p1, "axisRoot"    # I
    .param p2, "nextPotential"    # I
    .param p3, "expandedTypeID"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v4, -0x1

    .line 349
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v2

    .line 350
    .local v2, "nsIndex":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v0

    .line 354
    .local v0, "lnIndex":I
    :cond_12
    :goto_12
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v5, v2, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->findElementFromIndex(III)I

    move-result v1

    .line 356
    .local v1, "nextID":I
    if-eq v6, v1, :cond_3a

    .line 358
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 361
    .local v3, "parentID":I
    if-ne v3, p1, :cond_25

    .line 393
    .end local v1    # "nextID":I
    .end local v3    # "parentID":I
    :goto_24
    return v1

    .line 366
    .restart local v1    # "nextID":I
    .restart local v3    # "parentID":I
    :cond_25
    if-ge v3, p1, :cond_29

    move v1, v4

    .line 367
    goto :goto_24

    .line 376
    :cond_29
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 377
    if-ge v3, p1, :cond_35

    move v1, v4

    .line 378
    goto :goto_24

    .line 380
    :cond_35
    if-gt v3, p1, :cond_29

    .line 383
    add-int/lit8 p2, v1, 0x1

    .line 384
    goto :goto_12

    .line 387
    .end local v3    # "parentID":I
    :cond_3a
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->nextNode()Z

    .line 389
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    if-eq v5, v6, :cond_12

    move v1, v4

    .line 393
    goto :goto_24
.end method

.method public next(II)I
    .registers 4
    .param p1, "context"    # I
    .param p2, "current"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextSibling(I)I

    move-result v0

    return v0
.end method

.method public next(III)I
    .registers 7
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    .prologue
    const/4 v0, -0x1

    .line 478
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    move-result p2

    .line 479
    :goto_d
    if-eq v0, p2, :cond_1f

    .line 482
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    if-ne v1, p3, :cond_20

    .line 483
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v0

    .line 486
    :cond_1f
    return v0

    .line 480
    :cond_20
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    move-result p2

    goto :goto_d
.end method
