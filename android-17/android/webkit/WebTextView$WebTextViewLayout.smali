.class Landroid/webkit/WebTextView$WebTextViewLayout;
.super Landroid/text/DynamicLayout;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebTextViewLayout"
.end annotation


# instance fields
.field private mDifference:F

.field private mLineHeight:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IF)V
    .registers 15
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .param p11, "lineHeight"    # F

    .prologue
    .line 499
    invoke-direct/range {p0 .. p10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 501
    invoke-virtual {p3}, Landroid/text/TextPaint;->descent()F

    move-result v1

    invoke-virtual {p3}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v0, v1, v2

    .line 502
    .local v0, "paintLineHeight":F
    const/high16 v1, -0x40800000

    cmpl-float v1, p11, v1

    if-nez v1, :cond_19

    .line 503
    iput v0, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mLineHeight:F

    .line 504
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mDifference:F

    .line 511
    :goto_18
    return-void

    .line 506
    :cond_19
    iput p11, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mLineHeight:F

    .line 509
    sub-float v1, p11, v0

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mDifference:F

    goto :goto_18
.end method


# virtual methods
.method public getLineTop(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 515
    iget v0, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mLineHeight:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/webkit/WebTextView$WebTextViewLayout;->mDifference:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
