.class Landroid/widget/TextView$CorrectionHighlighter;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorrectionHighlighter"
.end annotation


# static fields
.field private static final FADE_OUT_DURATION:I = 0x190


# instance fields
.field private mEnd:I

.field private mFadingStartTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mStart:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 5891
    iput-object p1, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5885
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    .line 5886
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    .line 5892
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 5893
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5894
    return-void
.end method

.method static synthetic access$300(Landroid/widget/TextView$CorrectionHighlighter;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$CorrectionHighlighter;
    .param p1, "x1"    # Z

    .prologue
    .line 5884
    invoke-direct {p0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    return-void
.end method

.method private invalidate(Z)V
    .registers 12
    .param p1, "delayed"    # Z

    .prologue
    .line 5951
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_7

    .line 5968
    :goto_6
    return-void

    .line 5953
    :cond_7
    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v9

    monitor-enter v9

    .line 5954
    :try_start_c
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5956
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    .line 5957
    .local v7, "left":I
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x1

    # invokes: Landroid/widget/TextView;->getVerticalOffset(Z)I
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;Z)I

    move-result v1

    add-int v8, v0, v1

    .line 5959
    .local v8, "top":I
    if-eqz p1, :cond_59

    .line 5960
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const-wide/16 v1, 0x10

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v7

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, v8

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int/2addr v5, v7

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/2addr v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->postInvalidateDelayed(JIIII)V

    .line 5967
    :goto_54
    monitor-exit v9

    goto :goto_6

    .end local v7    # "left":I
    .end local v8    # "top":I
    :catchall_56
    move-exception v0

    monitor-exit v9
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_56

    throw v0

    .line 5964
    .restart local v7    # "left":I
    .restart local v8    # "top":I
    :cond_59
    :try_start_59
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    # getter for: Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->postInvalidate(IIII)V
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_56

    goto :goto_54
.end method

.method private stopAnimation()V
    .registers 3

    .prologue
    .line 5971
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$802(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;

    .line 5972
    return-void
.end method

.method private updatePaint()Z
    .registers 10

    .prologue
    .line 5925
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/widget/TextView$CorrectionHighlighter;->mFadingStartTime:J

    sub-long v2, v5, v7

    .line 5926
    .local v2, "duration":J
    const-wide/16 v5, 0x190

    cmp-long v5, v2, v5

    if-lez v5, :cond_10

    const/4 v5, 0x0

    .line 5933
    :goto_f
    return v5

    .line 5928
    :cond_10
    const/high16 v5, 0x3f800000

    long-to-float v6, v2

    const/high16 v7, 0x43c80000

    div-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 5929
    .local v0, "coef":F
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mHighlightColor:I
    invoke-static {v5}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 5930
    .local v4, "highlightColorAlpha":I
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mHighlightColor:I
    invoke-static {v5}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v0

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    add-int v1, v5, v6

    .line 5932
    .local v1, "color":I
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5933
    const/4 v5, 0x1

    goto :goto_f
.end method

.method private updatePath()Z
    .registers 7

    .prologue
    .line 5937
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v1, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5938
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_8

    const/4 v4, 0x0

    .line 5947
    :goto_7
    return v4

    .line 5941
    :cond_8
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 5942
    .local v2, "length":I
    iget v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5943
    .local v3, "start":I
    iget v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5945
    .local v0, "end":I
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 5946
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5947
    const/4 v4, 0x1

    goto :goto_7
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .prologue
    const/4 v2, 0x0

    .line 5907
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->updatePath()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->updatePaint()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5908
    if-eqz p2, :cond_13

    .line 5909
    int-to-float v0, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5912
    :cond_13
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5914
    if-eqz p2, :cond_21

    .line 5915
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5917
    :cond_21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    .line 5922
    :goto_25
    return-void

    .line 5919
    :cond_26
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->stopAnimation()V

    .line 5920
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    goto :goto_25
.end method

.method public highlight(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 5897
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    .line 5898
    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    .line 5899
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mFadingStartTime:J

    .line 5901
    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    if-ltz v0, :cond_21

    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    if-gez v0, :cond_24

    .line 5902
    :cond_21
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->stopAnimation()V

    .line 5904
    :cond_24
    return-void
.end method
