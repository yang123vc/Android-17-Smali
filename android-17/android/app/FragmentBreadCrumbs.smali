.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field mInflater:Landroid/view/LayoutInflater;

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const v0, 0x1030089

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 290
    new-instance v0, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/app/FragmentBreadCrumbs;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/app/FragmentBreadCrumbs;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 141
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 147
    :goto_3
    return-object v0

    .line 143
    :cond_4
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 145
    .local v0, "entry":Landroid/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 146
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_3
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 228
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_c

    .line 229
    if-nez p1, :cond_9

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 231
    :goto_8
    return-object v0

    .line 229
    :cond_9
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_8

    .line 231
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_8
.end method

.method private getPreEntryCount()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_d

    move v0, v1

    :goto_7
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_f

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_f
    move v1, v2

    goto :goto_b
.end method


# virtual methods
.method public onBackStackChanged()V
    .registers 1

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 210
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v2

    .line 165
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v2, :cond_2b

    .line 166
    invoke-virtual {p0, v4}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v3, v5, v6

    .line 169
    .local v3, "childRight":I
    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 170
    .local v1, "childBottom":I
    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 172
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    :cond_2b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v1

    .line 178
    .local v1, "count":I
    const/4 v3, 0x0

    .line 179
    .local v3, "maxHeight":I
    const/4 v4, 0x0

    .line 180
    .local v4, "maxWidth":I
    const/4 v5, 0x0

    .line 183
    .local v5, "measuredChildState":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_34

    .line 184
    invoke-virtual {p0, v2}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_31

    .line 186
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v5

    .line 183
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 195
    .end local v0    # "child":Landroid/view/View;
    :cond_34
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 196
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 199
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 200
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 202
    invoke-static {v4, p1, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v6

    shl-int/lit8 v7, v5, 0x10

    invoke-static {v3, p2, v7}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 205
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 5
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 90
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 91
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 98
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 99
    return-void
.end method

.method public setMaxVisible(I)V
    .registers 4
    .param p1, "visibleCrumbs"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_c
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 110
    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .prologue
    .line 137
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 138
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 126
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 127
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 157
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 158
    return-void
.end method

.method updateCrumbs()V
    .registers 22

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 237
    .local v6, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v11

    .line 238
    .local v11, "numEntries":I
    invoke-direct/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v12

    .line 239
    .local v12, "numPreEntries":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 240
    .local v13, "numViews":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1d
    add-int v18, v11, v12

    move/from16 v0, v18

    if-ge v7, v0, :cond_b4

    .line 241
    if-ge v7, v12, :cond_50

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    .line 244
    .local v4, "bse":Landroid/app/FragmentManager$BackStackEntry;
    :goto_2b
    if-ge v7, v13, :cond_5a

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 246
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 247
    .local v14, "tag":Ljava/lang/Object;
    if-eq v14, v4, :cond_5a

    .line 248
    move v9, v7

    .local v9, "j":I
    :goto_40
    if-ge v9, v13, :cond_59

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 248
    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    .line 241
    .end local v4    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    .end local v9    # "j":I
    .end local v14    # "tag":Ljava/lang/Object;
    .end local v16    # "v":Landroid/view/View;
    :cond_50
    sub-int v18, v7, v12

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    goto :goto_2b

    .line 251
    .restart local v4    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    .restart local v9    # "j":I
    .restart local v14    # "tag":Ljava/lang/Object;
    .restart local v16    # "v":Landroid/view/View;
    :cond_59
    move v13, v7

    .line 254
    .end local v9    # "j":I
    .end local v14    # "tag":Ljava/lang/Object;
    .end local v16    # "v":Landroid/view/View;
    :cond_5a
    if-lt v7, v13, :cond_b0

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x109003e

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 258
    .local v8, "item":Landroid/view/View;
    const v18, 0x1020016

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 259
    .local v15, "text":Landroid/widget/TextView;
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 261
    if-nez v7, :cond_9a

    .line 262
    const v18, 0x102021d

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .end local v8    # "item":Landroid/view/View;
    .end local v15    # "text":Landroid/widget/TextView;
    :cond_b0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1d

    .line 268
    .end local v4    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_b4
    add-int v17, v11, v12

    .line 269
    .local v17, "viewI":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 270
    :goto_c0
    move/from16 v0, v17

    if-le v13, v0, :cond_d2

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    add-int/lit8 v19, v13, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 272
    add-int/lit8 v13, v13, -0x1

    goto :goto_c0

    .line 275
    :cond_d2
    const/4 v7, 0x0

    :goto_d3
    if-ge v7, v13, :cond_13e

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 278
    .local v5, "child":Landroid/view/View;
    const v18, 0x1020016

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_135

    const/16 v18, 0x1

    :goto_f2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    if-lez v18, :cond_132

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_138

    const/16 v18, 0x8

    :goto_10f
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v18, 0x102021d

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 284
    .local v10, "leftIcon":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    if-le v7, v0, :cond_13b

    if-eqz v7, :cond_13b

    const/16 v18, 0x0

    :goto_12d
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .end local v10    # "leftIcon":Landroid/view/View;
    :cond_132
    add-int/lit8 v7, v7, 0x1

    goto :goto_d3

    .line 278
    :cond_135
    const/16 v18, 0x0

    goto :goto_f2

    .line 281
    :cond_138
    const/16 v18, 0x0

    goto :goto_10f

    .line 284
    .restart local v10    # "leftIcon":Landroid/view/View;
    :cond_13b
    const/16 v18, 0x8

    goto :goto_12d

    .line 288
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "leftIcon":Landroid/view/View;
    :cond_13e
    return-void
.end method
