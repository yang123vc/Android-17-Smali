.class public Landroid/webkit/OverScrollGlow;
.super Ljava/lang/Object;
.source "OverScrollGlow.java"


# instance fields
.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mHostView:Landroid/webkit/WebView;

.field private mOverScrollDeltaX:I

.field private mOverScrollDeltaY:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 4
    .param p1, "host"    # Landroid/webkit/WebView;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 46
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 47
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 48
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 49
    return-void
.end method


# virtual methods
.method public absorbGlow(IIIIII)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I
    .param p5, "rangeX"    # I
    .param p6, "rangeY"    # I

    .prologue
    .line 123
    if-gtz p6, :cond_a

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_29

    .line 124
    :cond_a
    if-gez p2, :cond_4b

    if-ltz p4, :cond_4b

    .line 125
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 126
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    .line 127
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 137
    :cond_29
    :goto_29
    if-lez p5, :cond_4a

    .line 138
    if-gez p1, :cond_6b

    if-ltz p3, :cond_6b

    .line 139
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 140
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 141
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 150
    :cond_4a
    :goto_4a
    return-void

    .line 129
    :cond_4b
    if-le p2, p6, :cond_29

    if-gt p4, p6, :cond_29

    .line 130
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 131
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    .line 132
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_29

    .line 143
    :cond_6b
    if-le p1, p5, :cond_4a

    if-gt p3, p5, :cond_4a

    .line 144
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 145
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 146
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4a
.end method

.method public drawEdgeGlows(Landroid/graphics/Canvas;)Z
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 159
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    .line 160
    .local v3, "scrollX":I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    .line 161
    .local v4, "scrollY":I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    .line 162
    .local v5, "width":I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 164
    .local v0, "height":I
    const/4 v1, 0x0

    .line 165
    .local v1, "invalidateForGlow":Z
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_45

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 168
    .local v2, "restoreCount":I
    int-to-float v6, v3

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v7

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 170
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 171
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 173
    .end local v2    # "restoreCount":I
    :cond_45
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_79

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 176
    .restart local v2    # "restoreCount":I
    neg-int v6, v5

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    const/high16 v6, 0x43340000

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 179
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 180
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 181
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 183
    .end local v2    # "restoreCount":I
    :cond_79
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a4

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 186
    .restart local v2    # "restoreCount":I
    const/high16 v6, 0x43870000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 187
    neg-int v6, v0

    sub-int/2addr v6, v4

    int-to-float v6, v6

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 189
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 190
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 192
    .end local v2    # "restoreCount":I
    :cond_a4
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_d5

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 195
    .restart local v2    # "restoreCount":I
    const/high16 v6, 0x42b40000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 196
    int-to-float v6, v4

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v5

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 199
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 200
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 202
    .end local v2    # "restoreCount":I
    :cond_d5
    return v1
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public pullGlow(IIIIII)V
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I
    .param p5, "maxX"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    if-ne p3, v2, :cond_67

    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    if-ne p4, v2, :cond_67

    .line 67
    if-lez p5, :cond_38

    .line 68
    iget v2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    add-int v0, p3, v2

    .line 69
    .local v0, "pulledToX":I
    if-gez v0, :cond_68

    .line 70
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 71
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_36

    .line 72
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 80
    :cond_36
    :goto_36
    iput v5, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    .line 83
    .end local v0    # "pulledToX":I
    :cond_38
    if-gtz p6, :cond_42

    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v2

    if-nez v2, :cond_67

    .line 84
    :cond_42
    iget v2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    add-int v1, p4, v2

    .line 85
    .local v1, "pulledToY":I
    if-gez v1, :cond_88

    .line 86
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 87
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_65

    .line 88
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 96
    :cond_65
    :goto_65
    iput v5, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    .line 99
    .end local v1    # "pulledToY":I
    :cond_67
    return-void

    .line 74
    .restart local v0    # "pulledToX":I
    :cond_68
    if-le v0, p5, :cond_36

    .line 75
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 76
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_36

    .line 77
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_36

    .line 90
    .end local v0    # "pulledToX":I
    .restart local v1    # "pulledToY":I
    :cond_88
    if-le v1, p6, :cond_65

    .line 91
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 92
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_65

    .line 93
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_65
.end method

.method public releaseAll()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 218
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 219
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 220
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 221
    return-void
.end method

.method public setOverScrollDeltas(II)V
    .registers 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 108
    iput p1, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    .line 109
    iput p2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    .line 110
    return-void
.end method
