.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v0, "density":F
    const/high16 v1, 0x42600000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 56
    const/high16 v1, 0x40800000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 57
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 17
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 331
    .local v7, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 333
    .local v2, "childHeightSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 334
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 336
    .local v3, "childHeightSpec":I
    const/4 v0, 0x0

    .line 337
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2e

    .line 338
    mul-int v10, p1, p2

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 340
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 343
    .local v8, "measuredWidth":I
    div-int v0, v8, p1

    .line 344
    rem-int v10, v8, p1

    if-eqz v10, :cond_2e

    add-int/lit8 v0, v0, 0x1

    .line 347
    .end local v4    # "childWidthSpec":I
    .end local v8    # "measuredWidth":I
    :cond_2e
    instance-of v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_53

    move-object v10, p0

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v6, v10

    .line 349
    .local v6, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_36
    iget-boolean v10, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_55

    if-eqz v6, :cond_55

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_55

    const/4 v5, 0x1

    .line 350
    .local v5, "expandable":Z
    :goto_43
    iput-boolean v5, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 352
    iput v0, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 353
    mul-int v9, v0, p1

    .line 354
    .local v9, "targetWidth":I
    const/high16 v10, 0x40000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Landroid/view/View;->measure(II)V

    .line 356
    return v0

    .line 347
    .end local v5    # "expandable":Z
    .end local v6    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v9    # "targetWidth":I
    :cond_53
    const/4 v6, 0x0

    goto :goto_36

    .line 349
    .restart local v6    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_55
    const/4 v5, 0x0

    goto :goto_43
.end method

.method private onMeasureExactFormat(II)V
    .registers 45
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 105
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 106
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 107
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 109
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 110
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 112
    .local v18, "heightPadding":I
    sub-int v37, v37, v36

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 116
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 118
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_40

    .line 120
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 312
    :goto_3f
    return-void

    .line 124
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 126
    .local v5, "cellSize":I
    move v8, v4

    .line 127
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 128
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 129
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 130
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 131
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 134
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 136
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 137
    .local v12, "childCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5c
    move/from16 v0, v21

    if-ge v0, v12, :cond_134

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 139
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_77

    .line 137
    :cond_74
    :goto_74
    add-int/lit8 v21, v21, 0x1

    goto :goto_5c

    .line 141
    :cond_77
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v22, v0

    .line 142
    .local v22, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 144
    if-eqz v22, :cond_9a

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 150
    :cond_9a
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 151
    .local v23, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 152
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 153
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 154
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 155
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 156
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 157
    if-eqz v22, :cond_12f

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_12f

    const/16 v38, 0x1

    :goto_de
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 160
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_132

    const/4 v7, 0x1

    .line 162
    .local v7, "cellsAvailable":I
    :goto_ed
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 165
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 166
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_105

    add-int/lit8 v14, v14, 0x1

    .line 167
    :cond_105
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_10f

    const/16 v16, 0x1

    .line 169
    :cond_10f
    sub-int/2addr v8, v9

    .line 170
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 171
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_74

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_74

    .line 157
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_12f
    const/16 v38, 0x0

    goto :goto_de

    :cond_132
    move v7, v8

    .line 160
    goto :goto_ed

    .line 176
    .end local v11    # "child":Landroid/view/View;
    .end local v22    # "isGeneratedItem":Z
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_134
    if-eqz v16, :cond_16b

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_16b

    const/4 v10, 0x1

    .line 181
    .local v10, "centerSingleExpandedItem":Z
    :goto_13f
    const/16 v30, 0x0

    .line 182
    .local v30, "needsExpansion":Z
    :goto_141
    if-lez v14, :cond_1ab

    if-lez v8, :cond_1ab

    .line 183
    const v26, 0x7fffffff

    .line 184
    .local v26, "minCells":I
    const-wide/16 v27, 0x0

    .line 185
    .local v27, "minCellsAt":J
    const/16 v29, 0x0

    .line 186
    .local v29, "minCellsItemCount":I
    const/16 v21, 0x0

    :goto_14e
    move/from16 v0, v21

    if-ge v0, v12, :cond_1a5

    .line 187
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 188
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 191
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_16d

    .line 186
    :cond_168
    :goto_168
    add-int/lit8 v21, v21, 0x1

    goto :goto_14e

    .line 176
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    .end local v30    # "needsExpansion":Z
    :cond_16b
    const/4 v10, 0x0

    goto :goto_13f

    .line 194
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsAt":J
    .restart local v29    # "minCellsItemCount":I
    .restart local v30    # "needsExpansion":Z
    :cond_16d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_18b

    .line 195
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 196
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 197
    const/16 v29, 0x1

    goto :goto_168

    .line 198
    :cond_18b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_168

    .line 199
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    .line 200
    add-int/lit8 v29, v29, 0x1

    goto :goto_168

    .line 205
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1a5
    or-long v32, v32, v27

    .line 207
    move/from16 v0, v29

    if-le v0, v8, :cond_259

    .line 236
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    :cond_1ab
    if-nez v16, :cond_2e4

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_2e4

    const/16 v31, 0x1

    .line 237
    .local v31, "singleItem":Z
    :goto_1b7
    if-lez v8, :cond_364

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_364

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_1cf

    if-nez v31, :cond_1cf

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_364

    .line 239
    :cond_1cf
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 241
    .local v13, "expandCount":F
    if-nez v31, :cond_22d

    .line 243
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_1fe

    .line 244
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 245
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1fe

    const/high16 v38, 0x3f000000

    sub-float v13, v13, v38

    .line 247
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1fe
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_22d

    .line 248
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 249
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_22d

    const/high16 v38, 0x3f000000

    sub-float v13, v13, v38

    .line 253
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_22d
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_2e8

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 256
    .local v15, "extraPixels":I
    :goto_23f
    const/16 v21, 0x0

    :goto_241
    move/from16 v0, v21

    if-ge v0, v12, :cond_363

    .line 257
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_2eb

    .line 256
    :cond_256
    :goto_256
    add-int/lit8 v21, v21, 0x1

    goto :goto_241

    .line 210
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsAt":J
    .restart local v29    # "minCellsItemCount":I
    :cond_259
    add-int/lit8 v26, v26, 0x1

    .line 212
    const/16 v21, 0x0

    :goto_25d
    move/from16 v0, v21

    if-ge v0, v12, :cond_2e0

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 214
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 215
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_29a

    .line 217
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_297

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 212
    :cond_297
    :goto_297
    add-int/lit8 v21, v21, 0x1

    goto :goto_25d

    .line 221
    :cond_29a
    if-eqz v10, :cond_2c7

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2c7

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_2c7

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    :cond_2c7
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 226
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 227
    add-int/lit8 v8, v8, -0x1

    goto :goto_297

    .line 230
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_2e0
    const/16 v30, 0x1

    .line 231
    goto/16 :goto_141

    .line 236
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    :cond_2e4
    const/16 v31, 0x0

    goto/16 :goto_1b7

    .line 253
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_2e8
    const/4 v15, 0x0

    goto/16 :goto_23f

    .line 259
    .restart local v15    # "extraPixels":I
    :cond_2eb
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 260
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 261
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_324

    .line 263
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 264
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 265
    if-nez v21, :cond_320

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_320

    .line 268
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 270
    :cond_320
    const/16 v30, 0x1

    goto/16 :goto_256

    .line 271
    :cond_324
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_347

    .line 272
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 273
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 274
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 275
    const/16 v30, 0x1

    goto/16 :goto_256

    .line 280
    :cond_347
    if-eqz v21, :cond_351

    .line 281
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 283
    :cond_351
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v21

    move/from16 v1, v38

    if-eq v0, v1, :cond_256

    .line 284
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_256

    .line 289
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_363
    const/4 v8, 0x0

    .line 293
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_364
    if-eqz v30, :cond_3b1

    .line 294
    sub-int v38, v19, v18

    move/from16 v0, v38

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 295
    .local v20, "heightSpec":I
    const/16 v21, 0x0

    :goto_372
    move/from16 v0, v21

    if-ge v0, v12, :cond_3b1

    .line 296
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 297
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 299
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_38f

    .line 295
    :goto_38c
    add-int/lit8 v21, v21, 0x1

    goto :goto_372

    .line 301
    :cond_38f
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 302
    .local v35, "width":I
    const/high16 v38, 0x40000000

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_38c

    .line 306
    .end local v11    # "child":Landroid/view/View;
    .end local v20    # "heightSpec":I
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_3b1
    const/high16 v38, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_3bb

    .line 307
    move/from16 v19, v25

    .line 310
    :cond_3bb
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 311
    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_3f
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 480
    if-eqz p1, :cond_8

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 455
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 457
    .local v0, "params":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 458
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 463
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 468
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_14

    .line 469
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 470
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_13

    .line 471
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 475
    .end local v0    # "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_13
    :goto_13
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_13
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 3

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 485
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 486
    return-object v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .prologue
    .line 503
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 504
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 506
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1c

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1c

    .line 507
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 509
    :cond_1c
    if-lez p1, :cond_29

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_29

    .line 510
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 512
    :cond_29
    return v2
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 499
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 74
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 76
    :cond_1f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 441
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 442
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 443
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 36
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 362
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 437
    :cond_b
    :goto_b
    return-void

    .line 366
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 367
    .local v6, "childCount":I
    add-int v28, p3, p5

    div-int/lit8 v14, v28, 0x2

    .line 368
    .local v14, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 369
    .local v7, "dividerWidth":I
    const/16 v17, 0x0

    .line 370
    .local v17, "overflowWidth":I
    const/16 v16, 0x0

    .line 371
    .local v16, "nonOverflowWidth":I
    const/4 v15, 0x0

    .line 372
    .local v15, "nonOverflowCount":I
    sub-int v28, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v29

    sub-int v27, v28, v29

    .line 373
    .local v27, "widthRemaining":I
    const/4 v8, 0x0

    .line 374
    .local v8, "hasOverflow":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2d
    if-ge v10, v6, :cond_b0

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 376
    .local v25, "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_44

    .line 374
    :goto_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    .line 380
    :cond_44
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 381
    .local v18, "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8b

    .line 382
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 383
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_60

    .line 384
    add-int v17, v17, v7

    .line 387
    :cond_60
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 388
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v19, v28, v29

    .line 389
    .local v19, "r":I
    sub-int v11, v19, v17

    .line 390
    .local v11, "l":I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 391
    .local v24, "t":I
    add-int v5, v24, v9

    .line 392
    .local v5, "b":I
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 394
    sub-int v27, v27, v17

    .line 395
    const/4 v8, 0x1

    .line 396
    goto :goto_41

    .line 397
    .end local v5    # "b":I
    .end local v9    # "height":I
    .end local v11    # "l":I
    .end local v19    # "r":I
    .end local v24    # "t":I
    :cond_8b
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v20, v28, v29

    .line 398
    .local v20, "size":I
    add-int v16, v16, v20

    .line 399
    sub-int v27, v27, v20

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_ad

    .line 401
    add-int v16, v16, v7

    .line 403
    :cond_ad
    add-int/lit8 v15, v15, 0x1

    goto :goto_41

    .line 407
    .end local v18    # "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20    # "size":I
    .end local v25    # "v":Landroid/view/View;
    :cond_b0
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v6, v0, :cond_e7

    if-nez v8, :cond_e7

    .line 409
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 410
    .restart local v25    # "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 411
    .local v26, "width":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 412
    .restart local v9    # "height":I
    sub-int v28, p4, p2

    div-int/lit8 v13, v28, 0x2

    .line 413
    .local v13, "midHorizontal":I
    div-int/lit8 v28, v26, 0x2

    sub-int v11, v13, v28

    .line 414
    .restart local v11    # "l":I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 415
    .restart local v24    # "t":I
    add-int v28, v11, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    .line 419
    .end local v9    # "height":I
    .end local v11    # "l":I
    .end local v13    # "midHorizontal":I
    .end local v24    # "t":I
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "width":I
    :cond_e7
    if-eqz v8, :cond_123

    const/16 v28, 0x0

    :goto_eb
    sub-int v21, v15, v28

    .line 420
    .local v21, "spacerCount":I
    const/16 v29, 0x0

    if-lez v21, :cond_126

    div-int v28, v27, v21

    :goto_f3
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 422
    .local v22, "spacerSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v23

    .line 423
    .local v23, "startLeft":I
    const/4 v10, 0x0

    :goto_100
    if-ge v10, v6, :cond_b

    .line 424
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 425
    .restart local v25    # "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 426
    .local v12, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_120

    iget-boolean v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_129

    .line 423
    :cond_120
    :goto_120
    add-int/lit8 v10, v10, 0x1

    goto :goto_100

    .line 419
    .end local v12    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21    # "spacerCount":I
    .end local v22    # "spacerSize":I
    .end local v23    # "startLeft":I
    .end local v25    # "v":Landroid/view/View;
    :cond_123
    const/16 v28, 0x1

    goto :goto_eb

    .line 420
    .restart local v21    # "spacerCount":I
    :cond_126
    const/16 v28, 0x0

    goto :goto_f3

    .line 430
    .restart local v12    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v22    # "spacerSize":I
    .restart local v23    # "startLeft":I
    .restart local v25    # "v":Landroid/view/View;
    :cond_129
    iget v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v23, v23, v28

    .line 431
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 432
    .restart local v26    # "width":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 433
    .restart local v9    # "height":I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 434
    .restart local v24    # "t":I
    add-int v28, v23, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 435
    iget v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v22

    add-int v23, v23, v28

    goto :goto_120
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 82
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000

    if-ne v2, v5, :cond_34

    move v2, v3

    :goto_d
    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 84
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v0, v2, :cond_15

    .line 85
    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 90
    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 91
    .local v1, "widthSize":I
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v2, :cond_2c

    .line 92
    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 93
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 96
    :cond_2c
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_36

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 101
    :goto_33
    return-void

    .end local v1    # "widthSize":I
    :cond_34
    move v2, v4

    .line 82
    goto :goto_d

    .line 99
    .restart local v1    # "widthSize":I
    :cond_36
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_33
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 451
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .registers 2
    .param p1, "presenter"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 61
    return-void
.end method
