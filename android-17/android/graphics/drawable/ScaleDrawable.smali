.class public Landroid/graphics/drawable/ScaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScaleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ScaleDrawable$1;,
        Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "scaleWidth"    # F
    .param p4, "scaleHeight"    # F

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 59
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-object p1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 61
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 62
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 64
    if-eqz p1, :cond_19

    .line 65
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 67
    :cond_19
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 314
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/graphics/drawable/ScaleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/ScaleDrawable$1;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static getPercent(Landroid/content/res/TypedArray;I)F
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "name"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 79
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 80
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "f":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    .line 84
    .end local v0    # "f":Ljava/lang/String;
    :goto_20
    return v2

    :cond_21
    const/high16 v2, -0x40800000

    goto :goto_20
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    :cond_11
    return-void
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 246
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 249
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 94
    sget-object v8, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-virtual {p1, p3, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x1

    invoke-static {v0, v8}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;I)F

    move-result v6

    .line 97
    .local v6, "sw":F
    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;I)F

    move-result v5

    .line 98
    .local v5, "sh":F
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 99
    .local v2, "g":I
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 101
    .local v3, "min":Z
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 107
    .local v4, "outerDepth":I
    :cond_2b
    :goto_2b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_43

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3b

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_43

    .line 108
    :cond_3b
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2b

    .line 111
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2b

    .line 114
    :cond_43
    if-nez v1, :cond_4d

    .line 115
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No drawable specified for <scale>"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 118
    :cond_4d
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-object v1, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v6, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 120
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v5, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 121
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v2, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 122
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-boolean v3, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 123
    if-eqz v1, :cond_66

    .line 124
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    :cond_66
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_d
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mMutated:Z

    if-nez v0, :cond_14

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_14

    .line 255
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mMutated:Z

    .line 258
    :cond_14
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    const v12, 0x461c4000

    const/4 v11, 0x0

    .line 212
    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 213
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-boolean v9, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 214
    .local v9, "min":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v8

    .line 215
    .local v8, "level":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 216
    .local v1, "w":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_33

    .line 217
    if-eqz v9, :cond_77

    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 218
    .local v7, "iw":I
    :goto_25
    sub-int v3, v1, v7

    rsub-int v10, v8, 0x2710

    mul-int/2addr v3, v10

    int-to-float v3, v3

    iget-object v10, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v10, v10, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    mul-float/2addr v3, v10

    div-float/2addr v3, v12

    float-to-int v3, v3

    sub-int/2addr v1, v3

    .line 220
    .end local v7    # "iw":I
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 221
    .local v2, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_57

    .line 222
    if-eqz v9, :cond_79

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 223
    .local v6, "ih":I
    :goto_49
    sub-int v0, v2, v6

    rsub-int v3, v8, 0x2710

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v12

    float-to-int v0, v0

    sub-int/2addr v2, v0

    .line 225
    .end local v6    # "ih":I
    :cond_57
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getResolvedLayoutDirectionSelf()I

    move-result v5

    .line 226
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 228
    if-lez v1, :cond_76

    if-lez v2, :cond_76

    .line 229
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    :cond_76
    return-void

    .end local v2    # "h":I
    .end local v5    # "layoutDirection":I
    :cond_77
    move v7, v0

    .line 217
    goto :goto_25

    .restart local v2    # "h":I
    :cond_79
    move v6, v0

    .line 222
    goto :goto_49
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 206
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 4
    .param p1, "state"    # [I

    .prologue
    .line 197
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 198
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 199
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 140
    :cond_d
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 178
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 183
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 172
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 144
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 146
    :cond_d
    return-void
.end method
