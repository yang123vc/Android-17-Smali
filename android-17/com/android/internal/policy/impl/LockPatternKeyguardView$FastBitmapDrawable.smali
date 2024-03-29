.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOpacity:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1115
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1116
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1117
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, -0x3

    :goto_e
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mOpacity:I

    .line 1118
    return-void

    .line 1117
    :cond_11
    const/4 v0, -0x1

    goto :goto_e
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1127
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1131
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;->mOpacity:I

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 1136
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1140
    return-void
.end method
