.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$1;,
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private mInitialized:Z

.field private mMaxWidths:[I

.field private mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private mShrinkAllColumns:Z

.field private mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private mStretchAllColumns:Z

.field private mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x2a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    sget-object v4, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "stretchedColumns":Ljava/lang/String;
    if-eqz v3, :cond_1b

    .line 111
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3d

    .line 112
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 118
    :cond_1b
    :goto_1b
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "shrinkedColumns":Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_44

    .line 121
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 127
    :cond_29
    :goto_29
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "collapsedColumns":Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 129
    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 132
    :cond_36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 134
    return-void

    .line 114
    .end local v1    # "collapsedColumns":Ljava/lang/String;
    .end local v2    # "shrinkedColumns":Ljava/lang/String;
    :cond_3d
    invoke-static {v3}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_1b

    .line 123
    .restart local v2    # "shrinkedColumns":Ljava/lang/String;
    :cond_44
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_29
.end method

.method static synthetic access$200(Landroid/widget/TableLayout;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/TableLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method private findLargestCells(I)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 478
    const/4 v7, 0x1

    .line 487
    .local v7, "firstRow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    .line 488
    .local v5, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v5, :cond_d5

    .line 489
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 490
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    .line 488
    :cond_1a
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 494
    :cond_1d
    instance-of v0, v4, Landroid/widget/TableRow;

    move/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object v15, v4

    .line 495
    check-cast v15, Landroid/widget/TableRow;

    .line 497
    .local v15, "row":Landroid/widget/TableRow;
    invoke-virtual {v15}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 498
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, -0x2

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 500
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->getColumnsWidths(I)[I

    move-result-object v16

    .line 501
    .local v16, "widths":[I
    move-object/from16 v0, v16

    array-length v13, v0

    .line 503
    .local v13, "newLength":I
    if-eqz v7, :cond_73

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v13, :cond_5c

    .line 505
    :cond_52
    new-array v0, v13, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 507
    :cond_5c
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    const/4 v7, 0x0

    goto :goto_1a

    .line 510
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v11, v0

    .line 511
    .local v11, "length":I
    sub-int v6, v13, v11

    .line 514
    .local v6, "difference":I
    if-lez v6, :cond_bd

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 516
    .local v14, "oldMaxWidths":[I
    new-array v0, v13, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 517
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    array-length v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    .end local v14    # "oldMaxWidths":[I
    :cond_bd
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 528
    .local v12, "maxWidths":[I
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 529
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_c6
    if-ge v9, v11, :cond_1a

    .line 530
    aget v17, v12, v9

    aget v18, v16, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput v17, v12, v9

    .line 529
    add-int/lit8 v9, v9, 0x1

    goto :goto_c6

    .line 535
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "difference":I
    .end local v9    # "j":I
    .end local v10    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "length":I
    .end local v12    # "maxWidths":[I
    .end local v13    # "newLength":I
    .end local v15    # "row":Landroid/widget/TableRow;
    .end local v16    # "widths":[I
    :cond_d5
    return-void
.end method

.method private initTableLayout()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 178
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 180
    :cond_b
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_16

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 183
    :cond_16
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_21

    .line 184
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 187
    :cond_21
    new-instance v0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$1;)V

    iput-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    .line 190
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 193
    return-void
.end method

.method private mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .registers 17
    .param p1, "columns"    # Landroid/util/SparseBooleanArray;
    .param p2, "allColumns"    # Z
    .param p3, "size"    # I
    .param p4, "totalWidth"    # I

    .prologue
    .line 574
    const/4 v8, 0x0

    .line 575
    .local v8, "skipped":I
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 576
    .local v6, "maxWidths":[I
    array-length v5, v6

    .line 577
    .local v5, "length":I
    if-eqz p2, :cond_20

    move v2, v5

    .line 578
    .local v2, "count":I
    :goto_7
    sub-int v9, p3, p4

    .line 579
    .local v9, "totalExtraSpace":I
    div-int v3, v9, v2

    .line 583
    .local v3, "extraSpace":I
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    .line 584
    .local v7, "nbChildren":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v7, :cond_25

    .line 585
    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 586
    .local v0, "child":Landroid/view/View;
    instance-of v10, v0, Landroid/widget/TableRow;

    if-eqz v10, :cond_1d

    .line 587
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 584
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 577
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "extraSpace":I
    .end local v4    # "i":I
    .end local v7    # "nbChildren":I
    .end local v9    # "totalExtraSpace":I
    :cond_20
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    goto :goto_7

    .line 591
    .restart local v2    # "count":I
    .restart local v3    # "extraSpace":I
    .restart local v4    # "i":I
    .restart local v7    # "nbChildren":I
    .restart local v9    # "totalExtraSpace":I
    :cond_25
    if-nez p2, :cond_41

    .line 592
    const/4 v4, 0x0

    :goto_28
    if-ge v4, v2, :cond_4c

    .line 593
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 594
    .local v1, "column":I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 595
    if-ge v1, v5, :cond_3e

    .line 596
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    .line 592
    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 598
    :cond_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 603
    .end local v1    # "column":I
    :cond_41
    const/4 v4, 0x0

    :goto_42
    if-ge v4, v2, :cond_75

    .line 604
    aget v10, v6, v4

    add-int/2addr v10, v3

    aput v10, v6, v4

    .line 603
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 611
    :cond_4c
    if-lez v8, :cond_75

    if-ge v8, v2, :cond_75

    .line 613
    mul-int v10, v8, v3

    sub-int v11, v2, v8

    div-int v3, v10, v11

    .line 614
    const/4 v4, 0x0

    :goto_57
    if-ge v4, v2, :cond_75

    .line 615
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 616
    .restart local v1    # "column":I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_6c

    if-ge v1, v5, :cond_6c

    .line 617
    aget v10, v6, v1

    if-le v3, v10, :cond_6f

    .line 618
    const/4 v10, 0x0

    aput v10, v6, v1

    .line 614
    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 620
    :cond_6f
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    goto :goto_6c

    .line 625
    .end local v1    # "column":I
    :cond_75
    return-void
.end method

.method private static parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .registers 10
    .param p0, "sequence"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 152
    .local v4, "columns":Landroid/util/SparseBooleanArray;
    const-string v8, "\\s*,\\s*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 153
    .local v7, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "columnDefs":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_12
    if-ge v5, v6, :cond_23

    aget-object v2, v0, v5

    .line 157
    .local v2, "columnIdentifier":Ljava/lang/String;
    :try_start_16
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 159
    .local v3, "columnIndex":I
    if-ltz v3, :cond_20

    .line 162
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_20} :catch_24

    .line 155
    .end local v3    # "columnIndex":I
    :cond_20
    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 169
    .end local v2    # "columnIdentifier":Ljava/lang/String;
    :cond_23
    return-object v4

    .line 164
    .restart local v2    # "columnIdentifier":Ljava/lang/String;
    :catch_24
    move-exception v8

    goto :goto_20
.end method

.method private requestRowsLayout()V
    .registers 4

    .prologue
    .line 206
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_15

    .line 207
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 208
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 209
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 212
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method private shrinkAndStretchColumns(I)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 549
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v6, :cond_5

    .line 570
    :cond_4
    :goto_4
    return-void

    .line 554
    :cond_5
    const/4 v4, 0x0

    .line 555
    .local v4, "totalWidth":I
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_12

    aget v5, v0, v1

    .line 556
    .local v5, "width":I
    add-int/2addr v4, v5

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 559
    .end local v5    # "width":I
    :cond_12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    sub-int v3, v6, v7

    .line 561
    .local v3, "size":I
    if-le v4, v3, :cond_33

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v6, :cond_2b

    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_33

    .line 564
    :cond_2b
    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_4

    .line 565
    :cond_33
    if-ge v4, v3, :cond_4

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v6, :cond_41

    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 568
    :cond_41
    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_4
.end method

.method private trackCollapsedColumns(Landroid/view/View;)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 372
    instance-of v6, p1, Landroid/widget/TableRow;

    if-eqz v6, :cond_20

    move-object v5, p1

    .line 373
    check-cast v5, Landroid/widget/TableRow;

    .line 374
    .local v5, "row":Landroid/widget/TableRow;
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 375
    .local v0, "collapsedColumns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 376
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_20

    .line 377
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 378
    .local v1, "columnIndex":I
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 382
    .local v4, "isCollapsed":Z
    if-eqz v4, :cond_1d

    .line 383
    invoke-virtual {v5, v1, v4}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 376
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 387
    .end local v0    # "collapsedColumns":Landroid/util/SparseBooleanArray;
    .end local v1    # "columnIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "isCollapsed":Z
    .end local v5    # "row":Landroid/widget/TableRow;
    :cond_20
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 396
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 403
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 404
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 405
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 421
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 423
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 412
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 414
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 650
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .prologue
    .line 642
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 658
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 632
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .registers 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 304
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isColumnShrinkable(I)Z
    .registers 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 358
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isColumnStretchable(I)Z
    .registers 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 331
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isShrinkAllColumns()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public isStretchAllColumns()Z
    .registers 2

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 452
    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 453
    check-cast v0, Landroid/widget/TableRow;

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    .line 456
    :cond_c
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 458
    return-void
.end method

.method measureVertical(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 465
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->findLargestCells(I)V

    .line 466
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    .line 468
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 469
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/widget/TableLayout;->layoutVertical()V

    .line 441
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 431
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    .line 432
    return-void
.end method

.method public requestLayout()V
    .registers 4

    .prologue
    .line 219
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_15

    .line 220
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 221
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 222
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 226
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_15
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 227
    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .registers 7
    .param p1, "columnIndex"    # I
    .param p2, "isCollapsed"    # Z

    .prologue
    .line 284
    iget-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 286
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 287
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 288
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 289
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_19

    .line 290
    check-cast v2, Landroid/widget/TableRow;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 287
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 294
    :cond_1c
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 295
    return-void
.end method

.method public setColumnShrinkable(IZ)V
    .registers 4
    .param p1, "columnIndex"    # I
    .param p2, "isShrinkable"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 348
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 349
    return-void
.end method

.method public setColumnStretchable(IZ)V
    .registers 4
    .param p1, "columnIndex"    # I
    .param p2, "isStretchable"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 321
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 322
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    # setter for: Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->access$102(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 203
    return-void
.end method

.method public setShrinkAllColumns(Z)V
    .registers 2
    .param p1, "shrinkAllColumns"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 247
    return-void
.end method

.method public setStretchAllColumns(Z)V
    .registers 2
    .param p1, "stretchAllColumns"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 267
    return-void
.end method
