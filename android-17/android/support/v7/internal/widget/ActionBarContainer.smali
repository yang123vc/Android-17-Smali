.class public Landroid/support/v7/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 62
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_31

    .line 66
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 67
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_40

    :cond_3c
    :goto_3c
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 74
    return-void

    :cond_40
    move v1, v2

    .line 72
    goto :goto_3c

    :cond_42
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4a

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3c

    :cond_4a
    move v1, v2

    goto :goto_3c
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 145
    :cond_18
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 148
    :cond_2d
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 151
    :cond_42
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    .line 223
    :cond_c
    :goto_c
    return-void

    .line 211
    :cond_d
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1b

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 213
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c

    .line 216
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    .line 217
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    :cond_24
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_c

    .line 220
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    .line 80
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onLayout(ZIIII)V
    .registers 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 256
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 258
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_46

    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_46

    const/4 v4, 0x1

    .line 260
    .local v4, "hasTabs":Z
    :goto_12
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_5c

    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_5c

    .line 261
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    .line 262
    .local v2, "containerHeight":I
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 264
    .local v7, "tabHeight":I
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v8}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_7b

    .line 266
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    .line 267
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    if-ge v5, v3, :cond_54

    .line 268
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 270
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v1, v8, :cond_48

    .line 267
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 258
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "containerHeight":I
    .end local v3    # "count":I
    .end local v4    # "hasTabs":Z
    .end local v5    # "i":I
    .end local v7    # "tabHeight":I
    :cond_46
    const/4 v4, 0x0

    goto :goto_12

    .line 274
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "containerHeight":I
    .restart local v3    # "count":I
    .restart local v4    # "hasTabs":Z
    .restart local v5    # "i":I
    .restart local v7    # "tabHeight":I
    :cond_48
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v8}, Landroid/support/v7/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_43

    .line 275
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_43

    .line 278
    .end local v1    # "child":Landroid/view/View;
    :cond_54
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 284
    .end local v2    # "containerHeight":I
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v7    # "tabHeight":I
    :cond_5c
    :goto_5c
    const/4 v6, 0x0

    .line 285
    .local v6, "needsInvalidate":Z
    iget-boolean v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v8, :cond_85

    .line 286
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_75

    .line 287
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    const/4 v6, 0x1

    .line 303
    :cond_75
    :goto_75
    if-eqz v6, :cond_7a

    .line 304
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 306
    :cond_7a
    return-void

    .line 280
    .end local v6    # "needsInvalidate":Z
    .restart local v2    # "containerHeight":I
    .restart local v7    # "tabHeight":I
    :cond_7b
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v9, v2, v7

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_5c

    .line 291
    .end local v2    # "containerHeight":I
    .end local v7    # "tabHeight":I
    .restart local v6    # "needsInvalidate":Z
    :cond_85
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a7

    .line 292
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v9}, Landroid/support/v7/internal/widget/ActionBarView;->getLeft()I

    move-result v9

    iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ActionBarView;->getTop()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v11}, Landroid/support/v7/internal/widget/ActionBarView;->getRight()I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v12}, Landroid/support/v7/internal/widget/ActionBarView;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    const/4 v6, 0x1

    .line 296
    :cond_a7
    if-eqz v4, :cond_d1

    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_d1

    const/4 v8, 0x1

    :goto_ae
    iput-boolean v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v8, :cond_75

    .line 297
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    const/4 v6, 0x1

    goto :goto_75

    .line 296
    :cond_d1
    const/4 v8, 0x0

    goto :goto_ae
.end method

.method public onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 235
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    if-nez v4, :cond_8

    .line 252
    :cond_7
    :goto_7
    return-void

    .line 239
    :cond_8
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v0, 0x0

    .line 243
    .local v0, "actionBarViewHeight":I
    :goto_19
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 244
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 245
    .local v3, "mode":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_7

    .line 246
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 247
    .local v2, "maxHeight":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_7

    .line 240
    .end local v0    # "actionBarViewHeight":I
    .end local v2    # "maxHeight":I
    .end local v3    # "mode":I
    :cond_46
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    goto :goto_19
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 84
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 85
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_11
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 88
    if-eqz p1, :cond_18

    .line 89
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 91
    :cond_18
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_27

    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 93
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 94
    return-void

    :cond_27
    move v0, v1

    .line 91
    goto :goto_20

    :cond_29
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_31

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_20

    :cond_31
    move v0, v1

    goto :goto_20
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 112
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_11
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 116
    if-eqz p1, :cond_18

    .line 117
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 119
    :cond_18
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_27

    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 121
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 122
    return-void

    :cond_27
    move v0, v1

    .line 119
    goto :goto_20

    :cond_29
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_31

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_20

    :cond_31
    move v0, v1

    goto :goto_20
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 98
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_11
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 102
    if-eqz p1, :cond_18

    .line 103
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    :cond_18
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_27

    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 108
    return-void

    :cond_27
    move v0, v1

    .line 105
    goto :goto_20

    :cond_29
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_31

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_20

    :cond_31
    move v0, v1

    goto :goto_20
.end method

.method public setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .registers 4
    .param p1, "tabView"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 188
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 189
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 191
    :cond_9
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 192
    if-eqz p1, :cond_1e

    .line 193
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 194
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 195
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 199
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    return-void
.end method

.method public setTransitioning(Z)V
    .registers 3
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 162
    if-eqz p1, :cond_a

    const/high16 v0, 0x60000

    :goto_6
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 164
    return-void

    .line 162
    :cond_a
    const/high16 v0, 0x40000

    goto :goto_6
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 127
    if-nez p1, :cond_23

    const/4 v0, 0x1

    .line 128
    .local v0, "isVisible":Z
    :goto_7
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 129
    :cond_10
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 130
    :cond_19
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 131
    :cond_22
    return-void

    .end local v0    # "isVisible":Z
    :cond_23
    move v0, v1

    .line 127
    goto :goto_7
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/support/v7/view/ActionMode$Callback;

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1e

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
