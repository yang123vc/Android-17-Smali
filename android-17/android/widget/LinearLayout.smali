.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 106
    const v0, 0x800033

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 92
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 100
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 106
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 176
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 180
    .local v2, "index":I
    if-ltz v2, :cond_20

    .line 181
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    :cond_20
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 185
    if-ltz v2, :cond_29

    .line 186
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 189
    :cond_29
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 190
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_33

    .line 191
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 194
    :cond_33
    const/4 v3, 0x4

    const/high16 v4, -0x40800000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 196
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 199
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 201
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 203
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1309
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1311
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 1312
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1313
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_35

    .line 1314
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1316
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_35

    .line 1319
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1320
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1323
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1324
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1311
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1328
    .end local v1    # "child":Landroid/view/View;
    :cond_38
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 891
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 893
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 894
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 895
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_35

    .line 896
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 898
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_35

    .line 901
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 902
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 905
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 906
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 893
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 910
    .end local v1    # "child":Landroid/view/View;
    :cond_38
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1628
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1629
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1730
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 331
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_32

    .line 332
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2f

    .line 335
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 337
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v3, v6, v7

    .line 338
    .local v3, "left":I
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 331
    .end local v3    # "left":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 343
    .end local v0    # "child":Landroid/view/View;
    :cond_32
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 344
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .restart local v0    # "child":Landroid/view/View;
    const/4 v5, 0x0

    .line 346
    .local v5, "right":I
    if-nez v0, :cond_52

    .line 347
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .line 352
    :goto_4e
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 354
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "right":I
    :cond_51
    return-void

    .line 349
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "right":I
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 350
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    goto :goto_4e
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 304
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_32

    .line 305
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2f

    .line 308
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v5, v6, v7

    .line 311
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 304
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 316
    .end local v1    # "child":Landroid/view/View;
    :cond_32
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 317
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 318
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 319
    .local v0, "bottom":I
    if-nez v1, :cond_52

    .line 320
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 325
    :goto_4e
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 327
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_51
    return-void

    .line 322
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_52
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_4e
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 357
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 363
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 1713
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_b

    .line 1714
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1718
    :goto_a
    return-object v0

    .line 1715
    :cond_b
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1716
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_a

    .line 1718
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1700
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1723
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 421
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v6, :cond_a

    .line 422
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 469
    :cond_9
    :goto_9
    return v5

    .line 425
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    iget v7, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_1a

    .line 426
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 430
    :cond_1a
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 433
    .local v1, "childBaseline":I
    if-ne v1, v5, :cond_32

    .line 434
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_9

    .line 440
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 450
    :cond_32
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 452
    .local v2, "childTop":I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_44

    .line 453
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 454
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_44

    .line 455
    sparse-switch v4, :sswitch_data_6e

    .line 468
    .end local v4    # "majorGravity":I
    :cond_44
    :goto_44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 469
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_9

    .line 457
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_4f
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 458
    goto :goto_44

    .line 461
    :sswitch_5c
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_44

    .line 455
    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_5c
        0x50 -> :sswitch_4f
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .prologue
    .line 478
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerPadding()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1381
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 1651
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 7
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 567
    if-nez p1, :cond_d

    .line 568
    iget v4, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    .line 581
    :cond_a
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 568
    goto :goto_a

    .line 569
    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_1b

    .line 570
    iget v4, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_a

    move v2, v3

    goto :goto_a

    .line 571
    :cond_1b
    iget v2, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_38

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_33

    .line 574
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_35

    .line 575
    const/4 v0, 0x1

    :cond_33
    move v2, v0

    .line 579
    goto :goto_a

    .line 573
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_38
    move v2, v3

    .line 581
    goto :goto_a
.end method

.method public isBaselineAligned()Z
    .registers 2

    .prologue
    .line 375
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal()V
    .registers 31

    .prologue
    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v20

    .line 1505
    .local v20, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v27, v0

    .line 1511
    .local v27, "paddingTop":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTop:I

    sub-int v18, v2, v4

    .line 1512
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v18, v2

    .line 1515
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v13, v2, v4

    .line 1517
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1519
    .local v14, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1520
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1522
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1524
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1525
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1527
    .local v25, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResolvedLayoutDirection()I

    move-result v21

    .line 1528
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_154

    .line 1541
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1545
    .local v12, "childLeft":I
    :goto_58
    const/16 v28, 0x0

    .line 1546
    .local v28, "start":I
    const/16 v16, 0x1

    .line 1548
    .local v16, "dir":I
    if-eqz v20, :cond_62

    .line 1549
    add-int/lit8 v28, v14, -0x1

    .line 1550
    const/16 v16, -0x1

    .line 1553
    :cond_62
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_64
    move/from16 v0, v19

    if-ge v0, v14, :cond_153

    .line 1554
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1555
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1557
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_b0

    .line 1558
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1553
    :cond_7b
    :goto_7b
    add-int/lit8 v19, v19, 0x1

    goto :goto_64

    .line 1531
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_7e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mLeft:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v12, v2, v4

    .line 1532
    .restart local v12    # "childLeft":I
    goto :goto_58

    .line 1536
    .end local v12    # "childLeft":I
    :sswitch_93
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1537
    .restart local v12    # "childLeft":I
    goto :goto_58

    .line 1559
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_b0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_7b

    .line 1560
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1561
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1562
    .local v7, "childHeight":I
    const/4 v9, -0x1

    .line 1564
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 1567
    .local v22, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_d4

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d4

    .line 1568
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1571
    :cond_d4
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 1572
    .local v17, "gravity":I
    if-gez v17, :cond_de

    .line 1573
    move/from16 v17, v26

    .line 1576
    :cond_de
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_15e

    .line 1608
    move/from16 v5, v27

    .line 1612
    .local v5, "childTop":I
    :cond_e5
    :goto_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 1613
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 1616
    :cond_f2
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 1617
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1619
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1622
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_7b

    .line 1578
    .end local v5    # "childTop":I
    :sswitch_11b
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 1579
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_e5

    .line 1580
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_e5

    .line 1596
    .end local v5    # "childTop":I
    :sswitch_12a
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1598
    .restart local v5    # "childTop":I
    goto :goto_e5

    .line 1601
    .end local v5    # "childTop":I
    :sswitch_13c
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1602
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_e5

    .line 1603
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1604
    .local v15, "descent":I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    .line 1605
    goto :goto_e5

    .line 1625
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_153
    return-void

    .line 1528
    :sswitch_data_154
    .sparse-switch
        0x1 -> :sswitch_93
        0x5 -> :sswitch_7e
    .end sparse-switch

    .line 1576
    :sswitch_data_15e
    .sparse-switch
        0x10 -> :sswitch_12a
        0x30 -> :sswitch_11b
        0x50 -> :sswitch_13c
    .end sparse-switch
.end method

.method layoutVertical()V
    .registers 22

    .prologue
    .line 1414
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1420
    .local v18, "paddingLeft":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mLeft:I

    sub-int v19, v1, v4

    .line 1421
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v8, v19, v1

    .line 1424
    .local v8, "childRight":I
    sub-int v1, v19, v18

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v1, v4

    .line 1426
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1428
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1429
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1431
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_f4

    .line 1444
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1448
    .local v10, "childTop":I
    :goto_38
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_39
    if-ge v13, v11, :cond_f2

    .line 1449
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1450
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_7f

    .line 1451
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1448
    :cond_4a
    :goto_4a
    add-int/lit8 v13, v13, 0x1

    goto :goto_39

    .line 1434
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_4d
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mBottom:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v10, v1, v4

    .line 1435
    .restart local v10    # "childTop":I
    goto :goto_38

    .line 1439
    .end local v10    # "childTop":I
    :sswitch_62
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1440
    .restart local v10    # "childTop":I
    goto :goto_38

    .line 1452
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_7f
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4a

    .line 1453
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1454
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1456
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1459
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1460
    .local v12, "gravity":I
    if-gez v12, :cond_9b

    .line 1461
    move/from16 v12, v17

    .line 1463
    :cond_9b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResolvedLayoutDirection()I

    move-result v14

    .line 1464
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 1465
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_fe

    .line 1477
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 1481
    .local v3, "childLeft":I
    :goto_ac
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1482
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 1485
    :cond_b9
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 1486
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1488
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1490
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_4a

    .line 1467
    .end local v3    # "childLeft":I
    :sswitch_dd
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1469
    .restart local v3    # "childLeft":I
    goto :goto_ac

    .line 1472
    .end local v3    # "childLeft":I
    :sswitch_eb
    sub-int v1, v8, v5

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1473
    .restart local v3    # "childLeft":I
    goto :goto_ac

    .line 1493
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f2
    return-void

    .line 1431
    nop

    :sswitch_data_f4
    .sparse-switch
        0x10 -> :sswitch_62
        0x50 -> :sswitch_4d
    .end sparse-switch

    .line 1465
    :sswitch_data_fe
    .sparse-switch
        0x1 -> :sswitch_dd
        0x5 -> :sswitch_eb
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 1369
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1371
    return-void
.end method

.method measureHorizontal(II)V
    .registers 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 924
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 925
    const/16 v35, 0x0

    .line 926
    .local v35, "maxHeight":I
    const/16 v18, 0x0

    .line 927
    .local v18, "childState":I
    const/4 v11, 0x0

    .line 928
    .local v11, "alternativeMaxHeight":I
    const/16 v42, 0x0

    .line 929
    .local v42, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 930
    .local v10, "allFillParent":Z
    const/16 v39, 0x0

    .line 932
    .local v39, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    .line 934
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 935
    .local v43, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 937
    .local v25, "heightMode":I
    const/16 v31, 0x0

    .line 939
    .local v31, "matchHeight":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_37

    .line 940
    :cond_29
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 941
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 944
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v33, v0

    .line 945
    .local v33, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v34, v0

    .line 947
    .local v34, "maxDescent":[I
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 948
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 950
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 951
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v40, v0

    .line 953
    .local v40, "useLargestChild":Z
    const/high16 v3, 0x40000000

    move/from16 v0, v43

    if-ne v0, v3, :cond_90

    const/16 v27, 0x1

    .line 955
    .local v27, "isExactly":Z
    :goto_6f
    const/high16 v28, -0x80000000

    .line 958
    .local v28, "largestChildWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_72
    move/from16 v0, v20

    if-ge v5, v0, :cond_245

    .line 959
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 961
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_93

    .line 962
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 958
    :goto_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 953
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v27    # "isExactly":Z
    .end local v28    # "largestChildWidth":I
    :cond_90
    const/16 v27, 0x0

    goto :goto_6f

    .line 966
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v27    # "isExactly":Z
    .restart local v28    # "largestChildWidth":I
    :cond_93
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_a3

    .line 967
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 968
    goto :goto_8d

    .line 971
    :cond_a3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 972
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 975
    :cond_b8
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 978
    .local v29, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v39, v39, v3

    .line 980
    const/high16 v3, 0x40000000

    move/from16 v0, v43

    if-ne v0, v3, :cond_1a1

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_1a1

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1a1

    .line 984
    if-eqz v27, :cond_184

    .line 985
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 997
    :goto_ed
    if-eqz v13, :cond_fc

    .line 998
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 999
    .local v23, "freeSpec":I
    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1040
    .end local v23    # "freeSpec":I
    :cond_fc
    :goto_fc
    const/16 v32, 0x0

    .line 1041
    .local v32, "matchHeightLocally":Z
    const/high16 v3, 0x40000000

    move/from16 v0, v25

    if-eq v0, v3, :cond_10f

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_10f

    .line 1045
    const/16 v31, 0x1

    .line 1046
    const/16 v32, 0x1

    .line 1049
    :cond_10f
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 1050
    .local v30, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1051
    .local v16, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1053
    if-eqz v13, :cond_156

    .line 1054
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1055
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_156

    .line 1058
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_22b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_13c
    and-int/lit8 v24, v3, 0x70

    .line 1060
    .local v24, "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1063
    .local v26, "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1064
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 1068
    .end local v14    # "childBaseline":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    :cond_156
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1070
    if-eqz v10, :cond_231

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_231

    const/4 v10, 0x1

    .line 1071
    :goto_168
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_238

    .line 1076
    if-eqz v32, :cond_234

    .end local v30    # "margin":I
    :goto_173
    move/from16 v0, v42

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 1083
    :goto_17b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_8d

    .line 987
    .end local v16    # "childHeight":I
    .end local v32    # "matchHeightLocally":Z
    :cond_184
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 988
    .local v38, "totalLength":I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v3, v38

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_ed

    .line 1002
    .end local v38    # "totalLength":I
    :cond_1a1
    const/high16 v36, -0x80000000

    .line 1004
    .local v36, "oldWidth":I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_1b9

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1b9

    .line 1009
    const/16 v36, 0x0

    .line 1010
    const/4 v3, -0x2

    move-object/from16 v0, v29

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1017
    :cond_1b9
    const/4 v3, 0x0

    cmpl-float v3, v39, v3

    if-nez v3, :cond_205

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_1c2
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1021
    const/high16 v3, -0x80000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_1d8

    .line 1022
    move/from16 v0, v36

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1025
    :cond_1d8
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1026
    .local v19, "childWidth":I
    if-eqz v27, :cond_207

    .line 1027
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1035
    :goto_1f9
    if-eqz v40, :cond_fc

    .line 1036
    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_fc

    .line 1017
    .end local v19    # "childWidth":I
    :cond_205
    const/4 v7, 0x0

    goto :goto_1c2

    .line 1030
    .restart local v19    # "childWidth":I
    :cond_207
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 1031
    .restart local v38    # "totalLength":I
    add-int v3, v38, v19

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1f9

    .line 1058
    .end local v19    # "childWidth":I
    .end local v36    # "oldWidth":I
    .end local v38    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_22b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_13c

    .line 1070
    .end local v14    # "childBaseline":I
    :cond_231
    const/4 v10, 0x0

    goto/16 :goto_168

    :cond_234
    move/from16 v30, v16

    .line 1076
    goto/16 :goto_173

    .line 1079
    :cond_238
    if-eqz v32, :cond_242

    .end local v30    # "margin":I
    :goto_23a
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_17b

    .restart local v30    # "margin":I
    :cond_242
    move/from16 v30, v16

    goto :goto_23a

    .line 1086
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "margin":I
    .end local v32    # "matchHeightLocally":Z
    :cond_245
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_262

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_262

    .line 1087
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1092
    :cond_262
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_27a

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_27a

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_27a

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2b2

    .line 1096
    :cond_27a
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1099
    .local v12, "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1102
    .local v22, "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1105
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    :cond_2b2
    if-eqz v40, :cond_338

    const/high16 v3, -0x80000000

    move/from16 v0, v43

    if-eq v0, v3, :cond_2bc

    if-nez v43, :cond_338

    .line 1107
    :cond_2bc
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1109
    const/4 v5, 0x0

    :goto_2c2
    move/from16 v0, v20

    if-ge v5, v0, :cond_338

    .line 1110
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1112
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_2e0

    .line 1113
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1109
    :goto_2dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c2

    .line 1117
    :cond_2e0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2f0

    .line 1118
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1119
    goto :goto_2dd

    .line 1122
    :cond_2f0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 1124
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v27, :cond_314

    .line 1125
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v28

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2dd

    .line 1128
    :cond_314
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 1129
    .restart local v38    # "totalLength":I
    add-int v3, v38, v28

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2dd

    .line 1136
    .end local v4    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v38    # "totalLength":I
    :cond_338
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1138
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v44, v0

    .line 1141
    .local v44, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v44

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 1144
    const/4 v3, 0x0

    move/from16 v0, v44

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v45

    .line 1145
    .local v45, "widthSizeAndState":I
    const v3, 0xffffff

    and-int v44, v45, v3

    .line 1149
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v21, v44, v3

    .line 1150
    .local v21, "delta":I
    if-eqz v21, :cond_59f

    const/4 v3, 0x0

    cmpl-float v3, v39, v3

    if-lez v3, :cond_59f

    .line 1151
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3bd

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v41, v0

    .line 1153
    .local v41, "weightSum":F
    :goto_384
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 1154
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1155
    const/16 v35, -0x1

    .line 1157
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1159
    const/4 v5, 0x0

    :goto_3a6
    move/from16 v0, v20

    if-ge v5, v0, :cond_4fd

    .line 1160
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1162
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_3ba

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3c0

    .line 1159
    :cond_3ba
    :goto_3ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a6

    .end local v4    # "child":Landroid/view/View;
    .end local v41    # "weightSum":F
    :cond_3bd
    move/from16 v41, v39

    .line 1151
    goto :goto_384

    .line 1166
    .restart local v4    # "child":Landroid/view/View;
    .restart local v41    # "weightSum":F
    :cond_3c0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 1169
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1170
    .local v15, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_429

    .line 1172
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v41

    float-to-int v0, v3

    move/from16 v37, v0

    .line 1173
    .local v37, "share":I
    sub-float v41, v41, v15

    .line 1174
    sub-int v21, v21, v37

    .line 1176
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1183
    .local v17, "childHeightMeasureSpec":I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_405

    const/high16 v3, 0x40000000

    move/from16 v0, v43

    if-eq v0, v3, :cond_4b1

    .line 1186
    :cond_405
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v37

    .line 1187
    .restart local v19    # "childWidth":I
    if-gez v19, :cond_40f

    .line 1188
    const/16 v19, 0x0

    .line 1191
    :cond_40f
    const/high16 v3, 0x40000000

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1202
    .end local v19    # "childWidth":I
    .end local v37    # "share":I
    :goto_41c
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1206
    .end local v17    # "childHeightMeasureSpec":I
    :cond_429
    if-eqz v27, :cond_4c5

    .line 1207
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1215
    :goto_449
    const/high16 v3, 0x40000000

    move/from16 v0, v25

    if-eq v0, v3, :cond_4ee

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4ee

    const/16 v32, 0x1

    .line 1218
    .restart local v32    # "matchHeightLocally":Z
    :goto_458
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 1219
    .restart local v30    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1220
    .restart local v16    # "childHeight":I
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1221
    if-eqz v32, :cond_4f2

    .end local v30    # "margin":I
    :goto_472
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1224
    if-eqz v10, :cond_4f6

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4f6

    const/4 v10, 0x1

    .line 1226
    :goto_482
    if-eqz v13, :cond_3ba

    .line 1227
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1228
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3ba

    .line 1230
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_4f8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_495
    and-int/lit8 v24, v3, 0x70

    .line 1232
    .restart local v24    # "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1235
    .restart local v26    # "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1236
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    goto/16 :goto_3ba

    .line 1196
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    .end local v32    # "matchHeightLocally":Z
    .restart local v17    # "childHeightMeasureSpec":I
    .restart local v37    # "share":I
    :cond_4b1
    if-lez v37, :cond_4c2

    .end local v37    # "share":I
    :goto_4b3
    const/high16 v3, 0x40000000

    move/from16 v0, v37

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_41c

    .restart local v37    # "share":I
    :cond_4c2
    const/16 v37, 0x0

    goto :goto_4b3

    .line 1210
    .end local v17    # "childHeightMeasureSpec":I
    .end local v37    # "share":I
    :cond_4c5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 1211
    .restart local v38    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v38

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_449

    .line 1215
    .end local v38    # "totalLength":I
    :cond_4ee
    const/16 v32, 0x0

    goto/16 :goto_458

    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_4f2
    move/from16 v30, v16

    .line 1221
    goto/16 :goto_472

    .line 1224
    .end local v30    # "margin":I
    :cond_4f6
    const/4 v10, 0x0

    goto :goto_482

    .line 1230
    .restart local v14    # "childBaseline":I
    :cond_4f8
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_495

    .line 1243
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "matchHeightLocally":Z
    :cond_4fd
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1248
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_527

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_527

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_527

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_55f

    .line 1252
    :cond_527
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1255
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1258
    .restart local v22    # "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1287
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    .end local v41    # "weightSum":F
    :cond_55f
    if-nez v10, :cond_569

    const/high16 v3, 0x40000000

    move/from16 v0, v25

    if-eq v0, v3, :cond_569

    .line 1288
    move/from16 v35, v11

    .line 1291
    :cond_569
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int v35, v35, v3

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1296
    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v45

    shl-int/lit8 v6, v18, 0x10

    move/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1300
    if-eqz v31, :cond_59e

    .line 1301
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1303
    :cond_59e
    return-void

    .line 1261
    :cond_59f
    move/from16 v0, v42

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1265
    if-eqz v40, :cond_55f

    if-nez v43, :cond_55f

    .line 1266
    const/4 v5, 0x0

    :goto_5aa
    move/from16 v0, v20

    if-ge v5, v0, :cond_55f

    .line 1267
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1269
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_5be

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5c1

    .line 1266
    :cond_5be
    :goto_5be
    add-int/lit8 v5, v5, 0x1

    goto :goto_5aa

    .line 1273
    :cond_5c1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 1276
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1277
    .restart local v15    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_5be

    .line 1278
    const/high16 v3, 0x40000000

    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_5be
.end method

.method measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .prologue
    .line 1350
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 40
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 596
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 597
    const/16 v27, 0x0

    .line 598
    .local v27, "maxWidth":I
    const/4 v15, 0x0

    .line 599
    .local v15, "childState":I
    const/4 v11, 0x0

    .line 600
    .local v11, "alternativeMaxWidth":I
    const/16 v35, 0x0

    .line 601
    .local v35, "weightedMaxWidth":I
    const/4 v10, 0x1

    .line 602
    .local v10, "allFillParent":Z
    const/16 v32, 0x0

    .line 604
    .local v32, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v17

    .line 606
    .local v17, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    .line 607
    .local v36, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 609
    .local v19, "heightMode":I
    const/16 v25, 0x0

    .line 611
    .local v25, "matchWidth":Z
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 612
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v33, v0

    .line 614
    .local v33, "useLargestChild":Z
    const/high16 v22, -0x80000000

    .line 617
    .local v22, "largestChildHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_29
    move/from16 v0, v17

    if-ge v5, v0, :cond_199

    .line 618
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 620
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_47

    .line 621
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 617
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 625
    :cond_47
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_57

    .line 626
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 627
    goto :goto_44

    .line 630
    :cond_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 631
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 634
    :cond_6c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 636
    .local v23, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v32, v32, v3

    .line 638
    const/high16 v3, 0x40000000

    move/from16 v0, v19

    if-ne v0, v3, :cond_c9

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_c9

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c9

    .line 642
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 643
    .local v31, "totalLength":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 682
    :cond_a8
    :goto_a8
    if-ltz v12, :cond_b6

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_b6

    .line 683
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 689
    :cond_b6
    if-ge v5, v12, :cond_133

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_133

    .line 690
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 645
    .end local v31    # "totalLength":I
    :cond_c9
    const/high16 v29, -0x80000000

    .line 647
    .local v29, "oldHeight":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_e1

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_e1

    .line 652
    const/16 v29, 0x0

    .line 653
    const/4 v3, -0x2

    move-object/from16 v0, v23

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 660
    :cond_e1
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-nez v3, :cond_131

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_eb
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 664
    const/high16 v3, -0x80000000

    move/from16 v0, v29

    if-eq v0, v3, :cond_100

    .line 665
    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 668
    :cond_100
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 669
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 670
    .restart local v31    # "totalLength":I
    add-int v3, v31, v14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 673
    if-eqz v33, :cond_a8

    .line 674
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_a8

    .line 660
    .end local v14    # "childHeight":I
    .end local v31    # "totalLength":I
    :cond_131
    const/4 v9, 0x0

    goto :goto_eb

    .line 696
    .end local v29    # "oldHeight":I
    .restart local v31    # "totalLength":I
    :cond_133
    const/16 v26, 0x0

    .line 697
    .local v26, "matchWidthLocally":Z
    const/high16 v3, 0x40000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_146

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_146

    .line 702
    const/16 v25, 0x1

    .line 703
    const/16 v26, 0x1

    .line 706
    :cond_146
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 707
    .local v24, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 708
    .local v28, "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 709
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 711
    if-eqz v10, :cond_188

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_188

    const/4 v10, 0x1

    .line 712
    :goto_16c
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18d

    .line 717
    if-eqz v26, :cond_18a

    .end local v24    # "margin":I
    :goto_177
    move/from16 v0, v35

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 724
    :goto_17f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_44

    .line 711
    .restart local v24    # "margin":I
    :cond_188
    const/4 v10, 0x0

    goto :goto_16c

    :cond_18a
    move/from16 v24, v28

    .line 717
    goto :goto_177

    .line 720
    :cond_18d
    if-eqz v26, :cond_196

    .end local v24    # "margin":I
    :goto_18f
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_17f

    .restart local v24    # "margin":I
    :cond_196
    move/from16 v24, v28

    goto :goto_18f

    .line 727
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "margin":I
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v31    # "totalLength":I
    :cond_199
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_1b6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 728
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 731
    :cond_1b6
    if-eqz v33, :cond_21e

    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_1c0

    if-nez v19, :cond_21e

    .line 733
    :cond_1c0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 735
    const/4 v5, 0x0

    :goto_1c6
    move/from16 v0, v17

    if-ge v5, v0, :cond_21e

    .line 736
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 738
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1e4

    .line 739
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 735
    :goto_1e1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c6

    .line 743
    :cond_1e4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1f4

    .line 744
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 745
    goto :goto_1e1

    .line 748
    :cond_1f4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 751
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 752
    .restart local v31    # "totalLength":I
    add-int v3, v31, v22

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1e1

    .line 758
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "totalLength":I
    :cond_21e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    .line 763
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 766
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v21

    .line 767
    .local v21, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 771
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v18, v20, v3

    .line 772
    .local v18, "delta":I
    if-eqz v18, :cond_3b0

    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-lez v3, :cond_3b0

    .line 773
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_285

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v34, v0

    .line 775
    .local v34, "weightSum":F
    :goto_26a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 777
    const/4 v5, 0x0

    :goto_270
    move/from16 v0, v17

    if-ge v5, v0, :cond_364

    .line 778
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 780
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_288

    .line 777
    :goto_282
    add-int/lit8 v5, v5, 0x1

    goto :goto_270

    .end local v4    # "child":Landroid/view/View;
    .end local v34    # "weightSum":F
    :cond_285
    move/from16 v34, v32

    .line 773
    goto :goto_26a

    .line 784
    .restart local v4    # "child":Landroid/view/View;
    .restart local v34    # "weightSum":F
    :cond_288
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 786
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 787
    .local v13, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_2eb

    .line 789
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v34

    float-to-int v0, v3

    move/from16 v30, v0

    .line 790
    .local v30, "share":I
    sub-float v34, v34, v13

    .line 791
    sub-int v18, v18, v30

    .line 793
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 799
    .local v16, "childWidthMeasureSpec":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_2cd

    const/high16 v3, 0x40000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_349

    .line 802
    :cond_2cd
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v30

    .line 803
    .restart local v14    # "childHeight":I
    if-gez v14, :cond_2d6

    .line 804
    const/4 v14, 0x0

    .line 807
    :cond_2d6
    const/high16 v3, 0x40000000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 818
    .end local v14    # "childHeight":I
    .end local v30    # "share":I
    :goto_2e1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 822
    .end local v16    # "childWidthMeasureSpec":I
    :cond_2eb
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 823
    .restart local v24    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 824
    .restart local v28    # "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 826
    const/high16 v3, 0x40000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_35c

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_35c

    const/16 v26, 0x1

    .line 829
    .restart local v26    # "matchWidthLocally":Z
    :goto_30e
    if-eqz v26, :cond_35f

    .end local v24    # "margin":I
    :goto_310
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 832
    if-eqz v10, :cond_362

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_362

    const/4 v10, 0x1

    .line 834
    :goto_320
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 835
    .restart local v31    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_282

    .line 812
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v31    # "totalLength":I
    .restart local v16    # "childWidthMeasureSpec":I
    .restart local v30    # "share":I
    :cond_349
    if-lez v30, :cond_359

    .end local v30    # "share":I
    :goto_34b
    const/high16 v3, 0x40000000

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2e1

    .restart local v30    # "share":I
    :cond_359
    const/16 v30, 0x0

    goto :goto_34b

    .line 826
    .end local v16    # "childWidthMeasureSpec":I
    .end local v30    # "share":I
    .restart local v24    # "margin":I
    .restart local v28    # "measuredWidth":I
    :cond_35c
    const/16 v26, 0x0

    goto :goto_30e

    .restart local v26    # "matchWidthLocally":Z
    :cond_35f
    move/from16 v24, v28

    .line 829
    goto :goto_310

    .line 832
    .end local v24    # "margin":I
    :cond_362
    const/4 v10, 0x0

    goto :goto_320

    .line 840
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    :cond_364
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 872
    .end local v34    # "weightSum":F
    :cond_376
    if-nez v10, :cond_380

    const/high16 v3, 0x40000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_380

    .line 873
    move/from16 v27, v11

    .line 876
    :cond_380
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    add-int v27, v27, v3

    .line 879
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 881
    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 884
    if-eqz v25, :cond_3af

    .line 885
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 887
    :cond_3af
    return-void

    .line 843
    :cond_3b0
    move/from16 v0, v35

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 849
    if-eqz v33, :cond_376

    if-nez v36, :cond_376

    .line 850
    const/4 v5, 0x0

    :goto_3bb
    move/from16 v0, v17

    if-ge v5, v0, :cond_376

    .line 851
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 853
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_3cf

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3d2

    .line 850
    :cond_3cf
    :goto_3cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_3bb

    .line 857
    :cond_3d2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 860
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 861
    .restart local v13    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_3cf

    .line 862
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000

    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3cf
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 291
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 300
    :goto_4
    return-void

    .line 295
    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 296
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 298
    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1398
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1399
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 1403
    :goto_8
    return-void

    .line 1401
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 552
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 553
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 557
    :goto_8
    return-void

    .line 555
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_8
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 389
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 390
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 489
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2b

    .line 490
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_2b
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 494
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    .line 254
    :goto_5
    return-void

    .line 244
    :cond_6
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 245
    if-eqz p1, :cond_20

    .line 246
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 247
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 252
    :goto_16
    if-nez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 253
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_5

    .line 249
    :cond_20
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 250
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_16
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .prologue
    .line 266
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 267
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1666
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1667
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1668
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1671
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1672
    or-int/lit8 p1, p1, 0x30

    .line 1675
    :cond_14
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1676
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1678
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 1682
    and-int v0, p1, v2

    .line 1683
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    .line 1684
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1685
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1687
    :cond_16
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 416
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 417
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 1639
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1640
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1641
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1643
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .prologue
    .line 216
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 217
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 219
    :cond_7
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 220
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1691
    and-int/lit8 v0, p1, 0x70

    .line 1692
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1693
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1694
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1696
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 548
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method
