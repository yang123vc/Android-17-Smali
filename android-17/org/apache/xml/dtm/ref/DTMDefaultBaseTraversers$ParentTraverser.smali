.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 2

    .prologue
    .line 1127
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
    .param p2, "x1"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .registers 3
    .param p1, "context"    # I

    .prologue
    .line 1143
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getParent(I)I

    move-result v0

    return v0
.end method

.method public first(II)I
    .registers 5
    .param p1, "current"    # I
    .param p2, "expandedTypeID"    # I

    .prologue
    const/4 v0, -0x1

    .line 1163
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result p1

    .line 1165
    :cond_7
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-eq v0, p1, :cond_21

    .line 1167
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    if-ne v1, p2, :cond_7

    .line 1168
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v0

    .line 1171
    :cond_21
    return v0
.end method

.method public next(II)I
    .registers 4
    .param p1, "context"    # I
    .param p2, "current"    # I

    .prologue
    .line 1186
    const/4 v0, -0x1

    return v0
.end method

.method public next(III)I
    .registers 5
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    .prologue
    .line 1204
    const/4 v0, -0x1

    return v0
.end method
