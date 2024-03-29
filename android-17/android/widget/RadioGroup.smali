.class public Landroid/widget/RadioGroup;
.super Landroid/widget/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadioGroup$1;,
        Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;,
        Landroid/widget/RadioGroup$CheckedStateTracker;,
        Landroid/widget/RadioGroup$OnCheckedChangeListener;,
        Landroid/widget/RadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 68
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v5, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 58
    iput-boolean v6, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 79
    sget-object v3, Lcom/android/internal/R$styleable;->RadioGroup:[I

    const v4, 0x101007e

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 83
    .local v2, "value":I
    if-eq v2, v5, :cond_1b

    .line 84
    iput v2, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 87
    :cond_1b
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 88
    .local v1, "index":I
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$300(Landroid/widget/RadioGroup;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadioGroup;

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RadioGroup;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadioGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Landroid/widget/RadioGroup;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadioGroup;

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/RadioGroup;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/RadioGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/RadioGroup;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadioGroup;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadioGroup;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v0, Landroid/widget/RadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 96
    new-instance v0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    .line 97
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 98
    return-void
.end method

.method private setCheckedId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 170
    iput p1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 171
    iget-object v0, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_d

    .line 172
    iget-object v0, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 174
    :cond_d
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_f

    .line 179
    check-cast v0, Landroid/widget/RadioButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 181
    :cond_f
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 127
    instance-of v1, p1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_24

    move-object v0, p1

    .line 128
    check-cast v0, Landroid/widget/RadioButton;

    .line 129
    .local v0, "button":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 131
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 132
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 134
    :cond_1b
    iput-boolean v3, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 135
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    .line 139
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_24
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method

.method public check(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 154
    if-eq p1, v2, :cond_8

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_8

    .line 167
    :goto_7
    return-void

    .line 158
    :cond_8
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_12

    .line 159
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 162
    :cond_12
    if-eq p1, v2, :cond_18

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 166
    :cond_18
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    goto :goto_7
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 231
    instance-of v0, p1, Landroid/widget/RadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 206
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 236
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 117
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 118
    iput-boolean v2, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 119
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 121
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    .line 123
    :cond_18
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .prologue
    .line 215
    iput-object p1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 216
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    # setter for: Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->access$202(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 107
    return-void
.end method
