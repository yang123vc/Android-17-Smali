.class public Lcom/android/internal/widget/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 30
    nop

    :array_18
    .array-data 4
        0x101009e
        0x10100a2
    .end array-data

    .line 32
    :array_20
    .array-data 4
        0x101009e
        -0x10100a2
    .end array-data

    .line 34
    :array_28
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 75
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void

    .line 75
    :cond_7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 38
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 39
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 40
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 41
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 80
    if-eqz p2, :cond_21

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 82
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 83
    return-void

    .line 80
    :cond_21
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private resizeDrawables()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 135
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_3f

    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 137
    .local v1, "d":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 138
    .local v4, "maxWidth":I
    const/4 v3, 0x0

    .line 139
    .local v3, "maxHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 140
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    .local v0, "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 146
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2b
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 147
    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_54

    .line 148
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    .restart local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 153
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "i":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    :cond_3f
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_54

    .line 154
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    :cond_54
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, -0x41000000

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 218
    :goto_6
    return-void

    .line 211
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 212
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getScaleX()F
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .registers 6
    .param p1, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_13

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 96
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    const/4 v1, 0x1

    .line 98
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    :cond_13
    return v1
.end method

.method public isActive()Z
    .registers 6

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1e

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 109
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 110
    .local v2, "states":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 111
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_1b

    .line 112
    const/4 v3, 0x1

    .line 116
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "i":I
    .end local v2    # "states":[I
    :goto_1a
    return v3

    .line 110
    .restart local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .restart local v1    # "i":I
    .restart local v2    # "states":[I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 116
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "i":I
    .end local v2    # "states":[I
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .prologue
    .line 176
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 177
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .param p1, "x"    # F

    .prologue
    .line 168
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 169
    return-void
.end method

.method public setScaleY(F)V
    .registers 2
    .param p1, "y"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 173
    return-void
.end method

.method public setState([I)V
    .registers 4
    .param p1, "state"    # [I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_d

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 88
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 90
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    :cond_d
    return-void
.end method

.method public setX(F)V
    .registers 2
    .param p1, "x"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 161
    return-void
.end method

.method public setY(F)V
    .registers 2
    .param p1, "y"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 165
    return-void
.end method
