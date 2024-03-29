.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .registers 7
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 145
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 146
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 147
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 148
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 149
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 150
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 151
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .registers 9
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 172
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 173
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 174
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 175
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 177
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 178
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 179
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 180
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 181
    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .registers 11
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotXType"    # I
    .param p6, "pivotXValue"    # F
    .param p7, "pivotYType"    # I
    .param p8, "pivotYValue"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 212
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 213
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 214
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 215
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 217
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 218
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 219
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 220
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 67
    sget-object v3, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 72
    .local v2, "tv":Landroid/util/TypedValue;
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 73
    if-eqz v2, :cond_3d

    .line 74
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_9a

    .line 76
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 82
    :cond_3d
    :goto_3d
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 84
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 85
    if-eqz v2, :cond_50

    .line 86
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_a3

    .line 88
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 95
    :cond_50
    :goto_50
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 97
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 98
    if-eqz v2, :cond_62

    .line 99
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_ac

    .line 101
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 107
    :cond_62
    :goto_62
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 109
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 110
    if-eqz v2, :cond_75

    .line 111
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_b5

    .line 113
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 120
    :cond_75
    :goto_75
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 122
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 123
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 127
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 128
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    return-void

    .line 78
    .end local v1    # "d":Landroid/view/animation/Animation$Description;
    :cond_9a
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 79
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    goto :goto_3d

    .line 90
    :cond_a3
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 91
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    goto :goto_50

    .line 103
    :cond_ac
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 104
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    goto :goto_62

    .line 115
    :cond_b5
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 116
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    goto :goto_75
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 11
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000

    .line 225
    const/high16 v1, 0x3f800000

    .line 226
    .local v1, "sx":F
    const/high16 v2, 0x3f800000

    .line 227
    .local v2, "sy":F
    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v0

    .line 229
    .local v0, "scale":F
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_17

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_21

    .line 230
    :cond_17
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 232
    :cond_21
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2d

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_37

    .line 233
    :cond_2d
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 236
    :cond_37
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4b

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4b

    .line 237
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 241
    :goto_4a
    return-void

    .line 239
    :cond_4b
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v5, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_4a
.end method

.method public initialize(IIII)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 264
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 265
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 266
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 267
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 269
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 270
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 271
    return-void
.end method

.method resolveScale(FIIII)F
    .registers 9
    .param p1, "scale"    # F
    .param p2, "type"    # I
    .param p3, "data"    # I
    .param p4, "size"    # I
    .param p5, "psize"    # I

    .prologue
    .line 245
    const/4 v1, 0x6

    if-ne p2, v1, :cond_e

    .line 246
    int-to-float v1, p4

    int-to-float v2, p5

    invoke-static {p3, v1, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    .line 253
    .local v0, "targetSize":F
    :goto_9
    if-nez p4, :cond_1c

    .line 254
    const/high16 p1, 0x3f800000

    .line 257
    .end local v0    # "targetSize":F
    .end local p1    # "scale":F
    :cond_d
    :goto_d
    return p1

    .line 247
    .restart local p1    # "scale":F
    :cond_e
    const/4 v1, 0x5

    if-ne p2, v1, :cond_d

    .line 248
    iget-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    .restart local v0    # "targetSize":F
    goto :goto_9

    .line 257
    :cond_1c
    int-to-float v1, p4

    div-float p1, v0, v1

    goto :goto_d
.end method
