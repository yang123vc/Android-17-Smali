.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .registers 3
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 70
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ExpandableListConnector;ZZ)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .registers 16
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .prologue
    const/4 v12, -0x1

    .line 518
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 519
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 520
    .local v3, "egmlSize":I
    const/4 v0, 0x0

    .line 523
    .local v0, "curFlPos":I
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 525
    if-eqz p2, :cond_38

    .line 527
    const/4 v8, 0x0

    .line 529
    .local v8, "positionsChanged":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_10
    if-ltz v5, :cond_33

    .line 530
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 531
    .local v1, "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 532
    .local v7, "newGPos":I
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_30

    .line 533
    if-ne v7, v12, :cond_2b

    .line 535
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 536
    add-int/lit8 v3, v3, -0x1

    .line 539
    :cond_2b
    iput v7, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 540
    if-nez v8, :cond_30

    const/4 v8, 0x1

    .line 529
    :cond_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    .line 544
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_33
    if-eqz v8, :cond_38

    .line 546
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 551
    .end local v5    # "i":I
    .end local v8    # "positionsChanged":Z
    :cond_38
    const/4 v6, 0x0

    .line 552
    .local v6, "lastGPos":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3a
    if-ge v5, v3, :cond_6a

    .line 554
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 560
    .restart local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_48

    if-eqz p1, :cond_63

    .line 561
    :cond_48
    iget-object v9, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 570
    .local v4, "gChildrenCount":I
    :goto_50
    iget v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 577
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 578
    iget v6, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 581
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 582
    add-int/2addr v0, v4

    .line 583
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 552
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 566
    .end local v4    # "gChildrenCount":I
    :cond_63
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4    # "gChildrenCount":I
    goto :goto_50

    .line 585
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v4    # "gChildrenCount":I
    :cond_6a
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .registers 6
    .param p1, "groupPos"    # I

    .prologue
    const/4 v3, -0x1

    .line 593
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 595
    .local v0, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    .line 599
    :goto_d
    return v1

    .line 597
    :cond_e
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 598
    .local v1, "retValue":Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_d
.end method

.method collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .registers 5
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v0, 0x0

    .line 612
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v1, :cond_6

    .line 626
    :goto_5
    return v0

    .line 615
    :cond_6
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-direct {p0, v0, v0}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 621
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 624
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 626
    const/4 v0, 0x1

    goto :goto_5
.end method

.method expandGroup(I)Z
    .registers 6
    .param p1, "groupPos"    # I

    .prologue
    const/4 v3, -0x1

    .line 634
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 636
    .local v0, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 637
    .local v1, "retValue":Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 638
    return v1
.end method

.method expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .registers 10
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 646
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-gez v4, :cond_10

    .line 648
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 651
    :cond_10
    iget v4, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_15

    .line 690
    :cond_14
    :goto_14
    return v3

    .line 654
    :cond_15
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v4, :cond_14

    .line 657
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_40

    .line 661
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 663
    .local v0, "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 665
    .local v1, "collapsedIndex":I
    iget v4, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 668
    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_40

    .line 669
    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 673
    .end local v0    # "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v1    # "collapsedIndex":I
    :cond_40
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v6, v6, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v5

    invoke-static {v7, v7, v4, v5, v6}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 679
    .local v2, "expandedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 682
    invoke-direct {p0, v3, v3}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 685
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 688
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 690
    const/4 v3, 0x1

    goto :goto_14
.end method

.method findGroupPosition(JI)I
    .registers 20
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v12}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    .line 775
    .local v2, "count":I
    if-nez v2, :cond_c

    .line 776
    const/4 v12, -0x1

    .line 845
    :goto_b
    return v12

    .line 780
    :cond_c
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, p1, v12

    if-nez v12, :cond_14

    .line 781
    const/4 v12, -0x1

    goto :goto_b

    .line 785
    :cond_14
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 786
    add-int/lit8 v12, v2, -0x1

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    add-long v3, v12, v14

    .line 793
    .local v3, "endTime":J
    move/from16 v5, p3

    .line 796
    .local v5, "first":I
    move/from16 v8, p3

    .line 799
    .local v8, "last":I
    const/4 v9, 0x0

    .line 809
    .local v9, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 810
    .local v1, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v1, :cond_43

    .line 811
    const/4 v12, -0x1

    goto :goto_b

    .line 829
    .local v6, "hitFirst":Z
    .local v7, "hitLast":Z
    .local v10, "rowId":J
    :cond_38
    if-nez v6, :cond_3e

    if-eqz v9, :cond_6a

    if-nez v7, :cond_6a

    .line 831
    :cond_3e
    add-int/lit8 v8, v8, 0x1

    .line 832
    move/from16 p3, v8

    .line 834
    const/4 v9, 0x0

    .line 814
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v10    # "rowId":J
    :cond_43
    :goto_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_64

    .line 815
    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    .line 816
    .restart local v10    # "rowId":J
    cmp-long v12, v10, p1

    if-nez v12, :cond_58

    move/from16 v12, p3

    .line 818
    goto :goto_b

    .line 821
    :cond_58
    add-int/lit8 v12, v2, -0x1

    if-ne v8, v12, :cond_66

    const/4 v7, 0x1

    .line 822
    .restart local v7    # "hitLast":Z
    :goto_5d
    if-nez v5, :cond_68

    const/4 v6, 0x1

    .line 824
    .restart local v6    # "hitFirst":Z
    :goto_60
    if-eqz v7, :cond_38

    if-eqz v6, :cond_38

    .line 845
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v10    # "rowId":J
    :cond_64
    const/4 v12, -0x1

    goto :goto_b

    .line 821
    .restart local v10    # "rowId":J
    :cond_66
    const/4 v7, 0x0

    goto :goto_5d

    .line 822
    .restart local v7    # "hitLast":Z
    :cond_68
    const/4 v6, 0x0

    goto :goto_60

    .line 835
    .restart local v6    # "hitFirst":Z
    :cond_6a
    if-nez v7, :cond_70

    if-nez v9, :cond_43

    if-nez v6, :cond_43

    .line 837
    :cond_70
    add-int/lit8 v5, v5, -0x1

    .line 838
    move/from16 p3, v5

    .line 840
    const/4 v9, 0x1

    goto :goto_43
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 724
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_f

    .line 725
    check-cast v0, Landroid/widget/Filterable;

    .end local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 727
    :goto_e
    return-object v1

    .restart local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 27
    .param p1, "pos"    # Landroid/widget/ExpandableListPosition;

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 260
    .local v20, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 263
    .local v23, "numExpGroups":I
    const/4 v13, 0x0

    .line 264
    .local v13, "leftExpGroupIndex":I
    add-int/lit8 v19, v23, -0x1

    .line 265
    .local v19, "rightExpGroupIndex":I
    const/16 v22, 0x0

    .line 268
    .local v22, "midExpGroupIndex":I
    if-nez v23, :cond_109

    .line 274
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 364
    .end local v22    # "midExpGroupIndex":I
    .local v7, "midExpGroupIndex":I
    :goto_29
    return-object v2

    .line 283
    :cond_2a
    :goto_2a
    move/from16 v0, v19

    if-gt v13, v0, :cond_97

    .line 284
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 285
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 287
    .local v6, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_47

    .line 291
    add-int/lit8 v13, v7, 0x1

    goto :goto_2a

    .line 292
    :cond_47
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_52

    .line 296
    add-int/lit8 v19, v7, -0x1

    goto :goto_2a

    .line 297
    :cond_52
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_2a

    .line 302
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    .line 304
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_29

    .line 306
    :cond_74
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_95

    .line 308
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_29

    .line 312
    :cond_95
    const/4 v2, 0x0

    goto :goto_29

    .line 321
    .end local v6    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_97
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a0

    .line 323
    const/4 v2, 0x0

    goto :goto_29

    .line 331
    :cond_a0
    if-le v13, v7, :cond_ce

    .line 342
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 343
    .local v21, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 347
    .local v8, "flPos":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_29

    .line 349
    .end local v8    # "flPos":I
    .end local v21    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_ce
    move/from16 v0, v19

    if-ge v0, v7, :cond_106

    .line 357
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 358
    .local v24, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 361
    .restart local v8    # "flPos":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_29

    .line 364
    .end local v8    # "flPos":I
    .end local v24    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_106
    const/4 v2, 0x0

    goto/16 :goto_29

    .end local v7    # "midExpGroupIndex":I
    .restart local v22    # "midExpGroupIndex":I
    :cond_109
    move/from16 v7, v22

    .end local v22    # "midExpGroupIndex":I
    .restart local v7    # "midExpGroupIndex":I
    goto/16 :goto_2a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7
    .param p1, "flatListPos"    # I

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 403
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 404
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 414
    .local v1, "retValue":Ljava/lang/Object;
    :goto_15
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 416
    return-object v1

    .line 406
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_19
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 407
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "retValue":Ljava/lang/Object;
    goto :goto_15

    .line 411
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_2f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .registers 12
    .param p1, "flatListPos"    # I

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 421
    .local v4, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 424
    .local v2, "groupId":J
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    .line 425
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 435
    .local v5, "retValue":J
    :goto_1b
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 437
    return-wide v5

    .line 426
    .end local v5    # "retValue":J
    :cond_1f
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3b

    .line 427
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v9, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v9, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 429
    .local v0, "childId":J
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 430
    .restart local v5    # "retValue":J
    goto :goto_1b

    .line 432
    .end local v0    # "childId":J
    .end local v5    # "retValue":J
    :cond_3b
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .registers 8
    .param p1, "flatListPos"    # I

    .prologue
    const/4 v5, 0x2

    .line 464
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 467
    .local v2, "pos":Landroid/widget/ExpandableListPosition;
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v4, v4, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v4, :cond_2e

    .line 468
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 470
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v5, :cond_1f

    .line 471
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v4}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .line 484
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v3, "retValue":I
    :goto_1b
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 486
    return v3

    .line 473
    .end local v3    # "retValue":I
    .restart local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_1f
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v5, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v4, v5}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 474
    .local v1, "childType":I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int v3, v4, v1

    .restart local v3    # "retValue":I
    goto :goto_1b

    .line 477
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .end local v1    # "childType":I
    .end local v3    # "retValue":I
    :cond_2e
    iget v4, v2, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v5, :cond_34

    .line 478
    const/4 v3, 0x0

    .restart local v3    # "retValue":I
    goto :goto_1b

    .line 480
    .end local v3    # "retValue":I
    :cond_34
    const/4 v3, 0x1

    .restart local v3    # "retValue":I
    goto :goto_1b
.end method

.method getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 22
    .param p1, "flPos"    # I

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 110
    .local v13, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 113
    .local v17, "numExpGroups":I
    const/4 v15, 0x0

    .line 114
    .local v15, "leftExpGroupIndex":I
    add-int/lit8 v19, v17, -0x1

    .line 115
    .local v19, "rightExpGroupIndex":I
    const/16 v16, 0x0

    .line 118
    .local v16, "midExpGroupIndex":I
    if-nez v17, :cond_ab

    .line 124
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 243
    .end local v16    # "midExpGroupIndex":I
    .local v6, "midExpGroupIndex":I
    :goto_1d
    return-object v1

    .line 140
    :cond_1e
    :goto_1e
    move/from16 v0, v19

    if-gt v15, v0, :cond_67

    .line 141
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 144
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 146
    .local v5, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_37

    .line 151
    add-int/lit8 v15, v6, 0x1

    goto :goto_1e

    .line 152
    :cond_37
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_40

    .line 157
    add-int/lit8 v19, v6, -0x1

    goto :goto_1e

    .line 158
    :cond_40
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_51

    .line 163
    const/4 v2, 0x2

    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_1d

    .line 165
    :cond_51
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_1e

    .line 175
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 176
    .local v4, "childPos":I
    const/4 v2, 0x1

    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_1d

    .line 192
    .end local v4    # "childPos":I
    .end local v5    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_67
    const/4 v12, 0x0

    .line 195
    .local v12, "insertPosition":I
    const/4 v9, 0x0

    .line 202
    .local v9, "groupPos":I
    if-le v15, v6, :cond_86

    .line 210
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 212
    .local v14, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 218
    iget v1, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 243
    .end local v14    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_7c
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_1d

    .line 220
    :cond_86
    move/from16 v0, v19

    if-ge v0, v6, :cond_a3

    .line 227
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 229
    .local v18, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 237
    move-object/from16 v0, v18

    iget v1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 238
    goto :goto_7c

    .line 240
    .end local v18    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_a3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6    # "midExpGroupIndex":I
    .end local v9    # "groupPos":I
    .end local v12    # "insertPosition":I
    .restart local v16    # "midExpGroupIndex":I
    :cond_ab
    move/from16 v6, v16

    .end local v16    # "midExpGroupIndex":I
    .restart local v6    # "midExpGroupIndex":I
    goto/16 :goto_1e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 441
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 444
    .local v6, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 445
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 457
    .local v7, "retValue":Landroid/view/View;
    :goto_1a
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 459
    return-object v7

    .line 447
    .end local v7    # "retValue":Landroid/view/View;
    :cond_1e
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v0, v3, :cond_3d

    .line 448
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_3b

    .line 450
    .local v3, "isLastChild":Z
    :goto_2a
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 452
    .restart local v7    # "retValue":Landroid/view/View;
    goto :goto_1a

    .line 448
    .end local v3    # "isLastChild":Z
    .end local v7    # "retValue":Landroid/view/View;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_2a

    .line 454
    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .registers 4

    .prologue
    .line 491
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_14

    .line 492
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 494
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 496
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x2

    goto :goto_13
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 758
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isEnabled(I)Z
    .registers 7
    .param p1, "flatListPos"    # I

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 378
    .local v0, "pos":Landroid/widget/ExpandableListPosition;
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 379
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 385
    .local v1, "retValue":Z
    :goto_15
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 387
    return v1

    .line 382
    .end local v1    # "retValue":Z
    :cond_19
    const/4 v1, 0x1

    .restart local v1    # "retValue":Z
    goto :goto_15
.end method

.method public isGroupExpanded(I)Z
    .registers 5
    .param p1, "groupPosition"    # I

    .prologue
    .line 700
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_1b

    .line 701
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 703
    .local v0, "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_18

    .line 704
    const/4 v2, 0x1

    .line 708
    .end local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_17
    return v2

    .line 700
    .restart local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 708
    .end local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 4
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 91
    :cond_b
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 92
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_6

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_7

    .line 753
    :cond_6
    :goto_6
    return-void

    .line 743
    :cond_7
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 744
    .local v1, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_22

    .line 745
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_6

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 751
    :cond_22
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 752
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_6
.end method

.method public setMaxExpGroupCount(I)V
    .registers 2
    .param p1, "maxExpGroupCount"    # I

    .prologue
    .line 715
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 716
    return-void
.end method
