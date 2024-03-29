.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .prologue
    .line 5764
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5778
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 5764
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$3502(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 5764
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 5764
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 5764
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 5764
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .registers 13

    .prologue
    .line 5997
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 5998
    .local v3, "maxViews":I
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5999
    .local v8, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6000
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v8, :cond_2d

    .line 6001
    aget-object v4, v5, v1

    .line 6002
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 6003
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 6004
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 6005
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_16
    if-ge v2, v0, :cond_2a

    .line 6006
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 6005
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_16

    .line 6000
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6009
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_2d
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .registers 7
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 5913
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 5914
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_9

    .line 5941
    :cond_8
    :goto_8
    return-void

    .line 5920
    :cond_9
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 5921
    .local v1, "viewType":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 5922
    const/4 v2, -0x2

    if-eq v1, v2, :cond_8

    .line 5923
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v2, p1, v3}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_8

    .line 5928
    :cond_1b
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 5930
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 5931
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5932
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5938
    :goto_2a
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v2, :cond_8

    .line 5939
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_8

    .line 5934
    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5935
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method clear()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 5830
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 5831
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5832
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5833
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 5834
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsListView;->access$4000(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 5833
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 5837
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_20
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5838
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    if-ge v0, v4, :cond_44

    .line 5839
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 5840
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5841
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 5842
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 5841
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 5838
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 5846
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_44
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 5856
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 5857
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5859
    :cond_9
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 5861
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5862
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 5863
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5864
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 5866
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 5869
    aput-object v1, v0, v2

    .line 5862
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5872
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 5882
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 5883
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5884
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_11

    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 5885
    aget-object v2, v0, v1

    .line 5886
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 5889
    .end local v2    # "match":Landroid/view/View;
    :goto_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto :goto_10
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 5896
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 5897
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 5904
    :goto_b
    return-object v1

    .line 5899
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 5900
    .local v0, "whichScrap":I
    if-ltz v0, :cond_24

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 5901
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 5904
    :cond_24
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public markChildrenDirty()V
    .registers 8

    .prologue
    .line 5804
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    .line 5805
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5806
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5807
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v3, :cond_39

    .line 5808
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 5807
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 5811
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_1a
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5812
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    if-ge v0, v4, :cond_39

    .line 5813
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 5814
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5815
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_28
    if-ge v1, v3, :cond_36

    .line 5816
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 5815
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 5812
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 5820
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_39
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6015
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 6016
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6025
    :cond_a
    return-void

    .line 6018
    :cond_b
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6019
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6020
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 6021
    aget-object v1, v2, v0

    .line 6022
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6020
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method scrapActiveViews()V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 5947
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5948
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v11, :cond_35

    move v2, v9

    .line 5949
    .local v2, "hasListener":Z
    :goto_9
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v11, v9, :cond_37

    move v5, v9

    .line 5951
    .local v5, "multipleScraps":Z
    :goto_e
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5952
    .local v6, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 5953
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_13
    if-ltz v3, :cond_52

    .line 5954
    aget-object v7, v0, v3

    .line 5955
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_32

    .line 5956
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 5958
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v8, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 5960
    .local v8, "whichScrap":I
    const/4 v9, 0x0

    aput-object v9, v0, v3

    .line 5962
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-nez v9, :cond_39

    .line 5964
    const/4 v9, -0x2

    if-eq v8, v9, :cond_32

    .line 5965
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v9, v7, v10}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 5953
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v8    # "whichScrap":I
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v5    # "multipleScraps":Z
    .end local v6    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "victim":Landroid/view/View;
    :cond_35
    move v2, v10

    .line 5948
    goto :goto_9

    .restart local v2    # "hasListener":Z
    :cond_37
    move v5, v10

    .line 5949
    goto :goto_e

    .line 5970
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .restart local v5    # "multipleScraps":Z
    .restart local v6    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "victim":Landroid/view/View;
    .restart local v8    # "whichScrap":I
    :cond_39
    if-eqz v5, :cond_3f

    .line 5971
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v6, v9, v8

    .line 5973
    :cond_3f
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5974
    iget v9, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v9, v3

    iput v9, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 5975
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5977
    if-eqz v2, :cond_32

    .line 5978
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v9, v7}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_32

    .line 5989
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "victim":Landroid/view/View;
    .end local v8    # "whichScrap":I
    :cond_52
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 5990
    return-void
.end method

.method setCacheColorHint(I)V
    .registers 12
    .param p1, "color"    # I

    .prologue
    .line 6033
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 6034
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6035
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6036
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v5, :cond_39

    .line 6037
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6036
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 6040
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_1a
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6041
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 6042
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 6043
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6044
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_28
    if-ge v3, v5, :cond_36

    .line 6045
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6044
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 6041
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 6050
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_39
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6051
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 6052
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_49

    .line 6053
    aget-object v7, v0, v2

    .line 6054
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_46

    .line 6055
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6052
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 6058
    .end local v7    # "victim":Landroid/view/View;
    :cond_49
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 5790
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 5791
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5794
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 5795
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 5796
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 5795
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 5798
    :cond_1a
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5799
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5800
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5801
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .prologue
    .line 5823
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
