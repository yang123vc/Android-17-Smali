.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 86
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 100
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 117
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 148
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 150
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    return-void
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 253
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v2, 0x1

    .line 255
    .end local v1    # "childWidth":I
    :cond_18
    return v2
.end method

.method private clamp(III)I
    .registers 5
    .param p1, "n"    # I
    .param p2, "my"    # I
    .param p3, "child"    # I

    .prologue
    .line 1526
    if-ge p2, p3, :cond_4

    if-gez p1, :cond_6

    .line 1527
    :cond_4
    const/4 p1, 0x0

    .line 1532
    .end local p1    # "n":I
    :cond_5
    :goto_5
    return p1

    .line 1529
    .restart local p1    # "n":I
    :cond_6
    add-int v0, p2, p1

    if-le v0, p3, :cond_5

    .line 1530
    sub-int p1, p3, p2

    goto :goto_5
.end method

.method private doScrollX(I)V
    .registers 4
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1055
    if-eqz p1, :cond_a

    .line 1056
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 1057
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1062
    :cond_a
    :goto_a
    return-void

    .line 1059
    :cond_b
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 801
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 802
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 811
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 813
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 814
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_52

    .line 815
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 816
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 817
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 819
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_29

    if-ge v8, p3, :cond_29

    .line 825
    if-ge p2, v8, :cond_2c

    if-ge v9, p3, :cond_2c

    const/4 v7, 0x1

    .line 828
    .local v7, "viewIsFullyContained":Z
    :goto_25
    if-nez v1, :cond_2e

    .line 830
    move-object v1, v5

    .line 831
    move v3, v7

    .line 814
    .end local v7    # "viewIsFullyContained":Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 825
    :cond_2c
    const/4 v7, 0x0

    goto :goto_25

    .line 833
    .restart local v7    # "viewIsFullyContained":Z
    :cond_2e
    if-eqz p1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_47

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_47

    :cond_3e
    const/4 v6, 0x1

    .line 837
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 838
    if-eqz v7, :cond_29

    if-eqz v6, :cond_29

    .line 844
    move-object v1, v5

    goto :goto_29

    .line 833
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_47
    const/4 v6, 0x0

    goto :goto_3f

    .line 847
    .restart local v6    # "viewIsCloserToBoundary":Z
    :cond_49
    if-eqz v7, :cond_4e

    .line 849
    move-object v1, v5

    .line 850
    const/4 v3, 0x1

    goto :goto_29

    .line 851
    :cond_4e
    if-eqz v6, :cond_29

    .line 856
    move-object v1, v5

    goto :goto_29

    .line 863
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_52
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 771
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 772
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 774
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_1e

    .line 780
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_1d
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_1e
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_1d
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 740
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 741
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 744
    .end local v0    # "child":Landroid/view/View;
    :cond_1f
    return v1
.end method

.method private inChild(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 388
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 389
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_28

    const/4 v2, 0x1

    .line 395
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_28
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 400
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 404
    :goto_a
    return-void

    .line 402
    :cond_b
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 198
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 200
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 202
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 203
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 206
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 207
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 208
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 408
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 410
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1034
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1416
    if-ne p1, p2, :cond_4

    .line 1421
    :cond_3
    :goto_3
    return v1

    .line 1420
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1421
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    .line 1042
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1043
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1045
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 651
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 652
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_2a

    .line 656
    if-nez v2, :cond_2b

    const/4 v0, 0x1

    .line 657
    .local v0, "newPointerIndex":I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 658
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 659
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2a

    .line 660
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 663
    .end local v0    # "newPointerIndex":I
    :cond_2a
    return-void

    .line 656
    :cond_2b
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 414
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 417
    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 946
    const/4 v4, 0x1

    .line 948
    .local v4, "handled":Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 949
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 950
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .line 951
    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_26

    const/4 v3, 0x1

    .line 953
    .local v3, "goLeft":Z
    :goto_10
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 954
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_17

    .line 955
    move-object v5, p0

    .line 958
    :cond_17
    if-lt p2, v0, :cond_28

    if-gt p3, v1, :cond_28

    .line 959
    const/4 v4, 0x0

    .line 965
    :goto_1c
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_25

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 967
    :cond_25
    return v4

    .line 951
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_26
    const/4 v3, 0x0

    goto :goto_10

    .line 961
    .restart local v3    # "goLeft":Z
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_28
    if-eqz v3, :cond_30

    sub-int v2, p2, v0

    .line 962
    .local v2, "delta":I
    :goto_2c
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1c

    .line 961
    .end local v2    # "delta":I
    :cond_30
    sub-int v2, p3, v1

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1218
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1221
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1223
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1225
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_16

    .line 1226
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1228
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1239
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1240
    .local v0, "delta":I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1241
    .local v1, "scroll":Z
    :goto_8
    if-eqz v1, :cond_f

    .line 1242
    if-eqz p2, :cond_12

    .line 1243
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1248
    :cond_f
    :goto_f
    return v1

    .end local v1    # "scroll":Z
    :cond_10
    move v1, v2

    .line 1240
    goto :goto_8

    .line 1245
    .restart local v1    # "scroll":Z
    :cond_12
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 226
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 979
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 982
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 984
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 986
    .local v3, "maxJump":I
    if-eqz v4, :cond_53

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 987
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 988
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 989
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 990
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 991
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1014
    :goto_34
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1021
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1022
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1023
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1024
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1026
    .end local v2    # "descendantFocusability":I
    :cond_51
    const/4 v7, 0x1

    :cond_52
    return v7

    .line 994
    .end local v6    # "scrollDelta":I
    :cond_53
    move v6, v3

    .line 996
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_6b

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_6b

    .line 997
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1008
    :cond_62
    :goto_62
    if-eqz v6, :cond_52

    .line 1011
    if-ne p1, v10, :cond_8c

    move v7, v6

    :goto_67
    invoke-direct {p0, v7}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_34

    .line 998
    :cond_6b
    if-ne p1, v10, :cond_62

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_62

    .line 1000
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1002
    .local v1, "daRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1004
    .local v5, "screenRight":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_62

    .line 1005
    sub-int v6, v1, v5

    goto :goto_62

    .line 1011
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_8c
    neg-int v7, v6

    goto :goto_67
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 3

    .prologue
    .line 1130
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1110
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1111
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1112
    .local v0, "contentWidth":I
    if-nez v1, :cond_13

    .line 1125
    .end local v0    # "contentWidth":I
    :goto_12
    return v0

    .line 1116
    .restart local v0    # "contentWidth":I
    :cond_13
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1117
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1118
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1119
    .local v2, "overscrollRight":I
    if-gez v4, :cond_28

    .line 1120
    sub-int/2addr v3, v4

    :cond_26
    :goto_26
    move v0, v3

    .line 1125
    goto :goto_12

    .line 1121
    :cond_28
    if-le v4, v2, :cond_26

    .line 1122
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_26
.end method

.method public computeScroll()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1164
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1181
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1182
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1183
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1184
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1186
    .local v13, "y":I
    if-ne v3, v12, :cond_1e

    if-eq v4, v13, :cond_51

    .line 1187
    :cond_1e
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1188
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v11

    .line 1189
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_2c

    if-ne v11, v10, :cond_58

    if-lez v5, :cond_58

    .line 1192
    .local v10, "canOverscroll":Z
    :cond_2c
    :goto_2c
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1194
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1196
    if-eqz v10, :cond_51

    .line 1197
    if-gez v12, :cond_5a

    if-ltz v3, :cond_5a

    .line 1198
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1205
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_51
    :goto_51
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1208
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    .line 1210
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_57
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_58
    move v10, v6

    .line 1189
    goto :goto_2c

    .line 1199
    .restart local v10    # "canOverscroll":Z
    :cond_5a
    if-le v12, v5, :cond_51

    if-gt v3, v5, :cond_51

    .line 1200
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_51
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1260
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    move v5, v7

    .line 1314
    :cond_8
    :goto_8
    return v5

    .line 1262
    :cond_9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1263
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1264
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 1266
    .local v4, "screenRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1269
    .local v1, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_1c

    .line 1270
    add-int/2addr v3, v1

    .line 1274
    :cond_1c
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_29

    .line 1275
    sub-int/2addr v4, v1

    .line 1278
    :cond_29
    const/4 v5, 0x0

    .line 1280
    .local v5, "scrollXDelta":I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_50

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_50

    .line 1285
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4b

    .line 1287
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1294
    :goto_3c
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1295
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 1296
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1298
    goto :goto_8

    .line 1290
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_4b
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_3c

    .line 1298
    :cond_50
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_8

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_8

    .line 1303
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6d

    .line 1305
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1312
    :goto_63
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_8

    .line 1308
    :cond_6d
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_63
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1493
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1494
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8f

    .line 1495
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1496
    .local v2, "scrollX":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 1497
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1498
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1500
    .local v0, "height":I
    const/high16 v4, 0x43870000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1501
    neg-int v4, v0

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1502
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1503
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1504
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1506
    :cond_47
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1508
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_4a
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 1509
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1510
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1511
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1513
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1514
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1516
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1517
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 1518
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1520
    :cond_8c
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1523
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_8f
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 346
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 348
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_31

    .line 349
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 350
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_1d

    const/4 v0, 0x0

    .line 352
    :cond_1d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 354
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_30

    if-eq v2, p0, :cond_30

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v3, 0x1

    .line 383
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_30
    :goto_30
    return v3

    .line 360
    :cond_31
    const/4 v1, 0x0

    .line 361
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3f

    .line 362
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6e

    :cond_3f
    :goto_3f
    move v3, v1

    .line 383
    goto :goto_30

    .line 364
    :sswitch_41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 365
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3f

    .line 367
    :cond_4c
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 369
    goto :goto_3f

    .line 371
    :sswitch_51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 372
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3f

    .line 374
    :cond_5c
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 376
    goto :goto_3f

    .line 378
    :sswitch_61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6c

    move v3, v4

    :goto_68
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_3f

    :cond_6c
    move v3, v5

    goto :goto_68

    .line 362
    :sswitch_data_6e
    .sparse-switch
        0x15 -> :sswitch_41
        0x16 -> :sswitch_51
        0x3e -> :sswitch_61
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 19
    .param p1, "velocityX"    # I

    .prologue
    .line 1432
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_64

    .line 1433
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 1434
    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 1436
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1439
    if-lez p1, :cond_65

    const/4 v13, 0x1

    .line 1441
    .local v13, "movingRight":Z
    :goto_42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 1442
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1445
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_58

    .line 1446
    move-object/from16 v14, p0

    .line 1449
    :cond_58
    if-eq v14, v12, :cond_61

    .line 1450
    if-eqz v13, :cond_67

    const/16 v1, 0x42

    :goto_5e
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1453
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1455
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_64
    return-void

    .line 1439
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_65
    const/4 v13, 0x0

    goto :goto_42

    .line 1450
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v13    # "movingRight":Z
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_67
    const/16 v1, 0x11

    goto :goto_5e
.end method

.method public fullScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 915
    const/16 v5, 0x42

    if-ne p1, v5, :cond_3c

    const/4 v1, 0x1

    .line 916
    .local v1, "right":Z
    :goto_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 918
    .local v3, "width":I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 919
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 921
    if-eqz v1, :cond_2f

    .line 922
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 923
    .local v0, "count":I
    if-lez v0, :cond_2f

    .line 924
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 925
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 926
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 930
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_2f
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_3c
    move v1, v4

    .line 915
    goto :goto_6
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 161
    const/4 v1, 0x0

    .line 169
    :goto_7
    return v1

    .line 164
    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 165
    .local v0, "length":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_16

    .line 166
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 169
    :cond_16
    const/high16 v1, 0x3f800000

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 193
    const/high16 v0, 0x3f000000

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 175
    const/4 v3, 0x0

    .line 185
    :goto_7
    return v3

    .line 178
    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 179
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 180
    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 181
    .local v2, "span":I
    if-ge v2, v0, :cond_28

    .line 182
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_7

    .line 185
    :cond_28
    const/high16 v3, 0x3f800000

    goto :goto_7
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1140
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1143
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1145
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1146
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1153
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1156
    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1159
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1160
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_52

    .line 696
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_13
    return v5

    .line 670
    :pswitch_14
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_f

    .line 672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_46

    .line 673
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 677
    .local v1, "hscroll":F
    :goto_27
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_f

    .line 678
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 679
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 680
    .local v4, "range":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 681
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .line 682
    .local v2, "newScrollX":I
    if-gez v2, :cond_4d

    .line 683
    const/4 v2, 0x0

    .line 687
    :cond_3d
    :goto_3d
    if-eq v2, v3, :cond_f

    .line 688
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 689
    const/4 v5, 0x1

    goto :goto_13

    .line 675
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_46
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_27

    .line 684
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_4d
    if-le v2, v4, :cond_3d

    .line 685
    move v2, v4

    goto :goto_3d

    .line 668
    nop

    :pswitch_data_52
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 729
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 730
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 731
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 732
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 733
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 734
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 735
    return-void

    .line 730
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 723
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 724
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 725
    return-void

    .line 724
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 441
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_f

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_f

    .line 527
    :goto_e
    return v0

    .line 445
    :cond_f
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_b6

    .line 527
    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_e

    .line 456
    :pswitch_17
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 457
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_14

    .line 462
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 463
    .local v10, "pointerIndex":I
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 464
    .local v11, "x":F
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    sub-float v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v12, v1

    .line 465
    .local v12, "xDiff":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_14

    .line 466
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 467
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 468
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 469
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 470
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    .line 476
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":F
    .end local v12    # "xDiff":I
    :pswitch_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 477
    .restart local v11    # "x":F
    float-to-int v1, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 478
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 479
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_14

    .line 487
    :cond_5c
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 488
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 490
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 491
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 498
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_75

    move v3, v0

    :cond_75
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_14

    .line 505
    .end local v11    # "x":F
    :pswitch_78
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 506
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 507
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 508
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_14

    .line 512
    :pswitch_92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 513
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 514
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_14

    .line 518
    .end local v9    # "index":I
    :pswitch_a4
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 519
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    goto/16 :goto_14

    .line 445
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_46
        :pswitch_78
        :pswitch_17
        :pswitch_78
        :pswitch_14
        :pswitch_92
        :pswitch_a4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1382
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1383
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1385
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1386
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1388
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1391
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1392
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 305
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_8

    .line 329
    :cond_7
    :goto_7
    return-void

    .line 309
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 310
    .local v5, "widthMode":I
    if-eqz v5, :cond_7

    .line 314
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 315
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 317
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_7

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 320
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 322
    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 323
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 324
    const/high16 v6, 0x40000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 326
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_7
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 12
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 708
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    .line 709
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 710
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 711
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    .line 712
    if-eqz p3, :cond_21

    .line 713
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 718
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 719
    return-void

    .line 716
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_21
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1342
    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 1343
    const/16 p1, 0x42

    .line 1348
    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1353
    .local v0, "nextFocus":Landroid/view/View;
    :goto_11
    if-nez v0, :cond_23

    .line 1361
    :cond_13
    :goto_13
    return v1

    .line 1344
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_14
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 1345
    const/16 p1, 0x11

    goto :goto_6

    .line 1348
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 1357
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_23
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1361
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1398
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1399
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1410
    :cond_b
    :goto_b
    return-void

    .line 1402
    :cond_c
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1404
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1405
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1406
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1407
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1408
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 532
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 537
    .local v16, "action":I
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_1fc

    .line 645
    :cond_17
    :goto_17
    :pswitch_17
    const/4 v3, 0x1

    :goto_18
    return v3

    .line 539
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    :goto_20
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 540
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_2e

    .line 541
    const/4 v3, 0x0

    goto :goto_18

    .line 539
    :cond_2c
    const/4 v3, 0x0

    goto :goto_20

    .line 548
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 553
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 554
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto :goto_17

    .line 558
    :pswitch_53
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_17

    .line 560
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 561
    .local v17, "activePointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    .line 562
    .local v25, "x":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    sub-float v3, v3, v25

    float-to-int v4, v3

    .line 563
    .local v4, "deltaX":I
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move/from16 v20, v0

    .line 566
    .local v20, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    move/from16 v21, v0

    .line 567
    .local v21, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 568
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v22

    .line 569
    .local v22, "overscrollMode":I
    if-eqz v22, :cond_95

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_108

    if-lez v8, :cond_108

    :cond_95
    const/16 v18, 0x1

    .line 572
    .local v18, "canOverscroll":Z
    :goto_97
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 577
    :cond_b3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 579
    if-eqz v18, :cond_17

    .line 580
    add-int v23, v20, v4

    .line 581
    .local v23, "pulledToX":I
    if-gez v23, :cond_10b

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 583
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e9

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 592
    :cond_e9
    :goto_e9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_103

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17

    .line 594
    :cond_103
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto/16 :goto_17

    .line 569
    .end local v18    # "canOverscroll":Z
    .end local v23    # "pulledToX":I
    :cond_108
    const/16 v18, 0x0

    goto :goto_97

    .line 586
    .restart local v18    # "canOverscroll":Z
    .restart local v23    # "pulledToX":I
    :cond_10b
    move/from16 v0, v23

    if-le v0, v8, :cond_e9

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e9

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_e9

    .line 600
    .end local v4    # "deltaX":I
    .end local v8    # "range":I
    .end local v17    # "activePointerIndex":I
    .end local v18    # "canOverscroll":Z
    .end local v20    # "oldX":I
    .end local v21    # "oldY":I
    .end local v22    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .end local v25    # "x":F
    :pswitch_12f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_17

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 602
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 603
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 605
    .local v19, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_16c

    .line 606
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_18f

    .line 607
    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 616
    :cond_16c
    :goto_16c
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 617
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 618
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_17

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_17

    .line 609
    :cond_18f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_16c

    .line 627
    .end local v19    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_1ac
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_17

    .line 628
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 629
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 631
    :cond_1d4
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 632
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 633
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_17

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_17

    .line 642
    :pswitch_1f7
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_17

    .line 537
    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_19
        :pswitch_12f
        :pswitch_53
        :pswitch_1ac
        :pswitch_17
        :pswitch_17
        :pswitch_1f7
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 879
    const/16 v5, 0x42

    if-ne p1, v5, :cond_49

    const/4 v1, 0x1

    .line 880
    .local v1, "right":Z
    :goto_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 882
    .local v3, "width":I
    if-eqz v1, :cond_4b

    .line 883
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 884
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 885
    .local v0, "count":I
    if-lez v0, :cond_33

    .line 886
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 887
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_33

    .line 888
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 897
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_33
    :goto_33
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 899
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_49
    move v1, v4

    .line 879
    goto :goto_6

    .line 892
    .restart local v1    # "right":Z
    .restart local v3    # "width":I
    :cond_4b
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 893
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_33

    .line 894
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_33
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1319
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 1320
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1325
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1326
    return-void

    .line 1323
    :cond_b
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1368
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1371
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 421
    if-eqz p1, :cond_5

    .line 422
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 424
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 425
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1377
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1378
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1465
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1466
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1467
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1468
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1469
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1470
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1473
    .end local v0    # "child":Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .param p1, "fillViewport"    # Z

    .prologue
    .line 280
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 281
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 282
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 284
    :cond_9
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1477
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    .line 1478
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1a

    .line 1479
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1480
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1481
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1487
    .end local v0    # "context":Landroid/content/Context;
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1488
    return-void

    .line 1484
    :cond_1e
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1485
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_1a
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 299
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1071
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 1092
    :goto_7
    return-void

    .line 1075
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1076
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_4e

    .line 1077
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1078
    .local v5, "width":I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1079
    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1080
    .local v2, "maxX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1081
    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1083
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1084
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1091
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_47
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    goto :goto_7

    .line 1086
    :cond_4e
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 1087
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1089
    :cond_5b
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_47
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1101
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1102
    return-void
.end method
