.class public Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final CHEVRON_ANIMATION_DURATION:I = 0x352

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0xa0

.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0x4b0

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0x0

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x4

.field private static final STATE_FIRST_TOUCH:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x3

.field private static final STATE_TRACKING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiWaveView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f


# instance fields
.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

.field private mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHitRadius:F

.field private mHorizontalOffset:F

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalOffset:F

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget-object v11, Lcom/android/internal/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 84
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 85
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 86
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    .line 87
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 96
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 97
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 99
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 105
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 106
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 107
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 111
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$1;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$1;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 117
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 124
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$3;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$3;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 132
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 154
    .local v9, "res":Landroid/content/res/Resources;
    sget-object v11, Lcom/android/internal/R$styleable;->MultiWaveView:[I

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v11, 0x9

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 156
    const/16 v11, 0xf

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 158
    const/16 v11, 0xe

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 160
    const/16 v11, 0xa

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 161
    const/16 v11, 0xc

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 162
    const/16 v11, 0xb

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 164
    const/16 v11, 0xd

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 166
    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 168
    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    .line 169
    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 172
    const/4 v11, 0x4

    new-array v4, v11, [I

    fill-array-data v4, :array_14e

    .line 177
    .local v4, "chevrons":[I
    move-object v1, v4

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_ce
    if-ge v6, v7, :cond_ef

    aget v2, v1, v6

    .line 178
    .local v2, "chevron":I
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 179
    .local v3, "chevronDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d7
    iget v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v5, v11, :cond_ec

    .line 180
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-eqz v3, :cond_ea

    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v11, v9, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    :goto_e4
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    .line 180
    :cond_ea
    const/4 v11, 0x0

    goto :goto_e4

    .line 177
    :cond_ec
    add-int/lit8 v6, v6, 0x1

    goto :goto_ce

    .line 186
    .end local v2    # "chevron":I
    .end local v3    # "chevronDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "i":I
    :cond_ef
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 187
    .local v8, "outValue":Landroid/util/TypedValue;
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_100

    .line 188
    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v11}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    .line 190
    :cond_100
    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v11, :cond_10c

    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_114

    .line 191
    :cond_10c
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify at least one target drawable"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 195
    :cond_114
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_12a

    .line 196
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 197
    .local v10, "resourceId":I
    if-nez v10, :cond_127

    .line 198
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify target descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 200
    :cond_127
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 204
    .end local v10    # "resourceId":I
    :cond_12a
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_140

    .line 205
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 206
    .restart local v10    # "resourceId":I
    if-nez v10, :cond_13d

    .line 207
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify direction descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 209
    :cond_13d
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 212
    .end local v10    # "resourceId":I
    :cond_140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    iget v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    if-lez v11, :cond_14c

    const/4 v11, 0x1

    :goto_148
    invoke-virtual {p0, v11}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVibrateEnabled(Z)V

    .line 214
    return-void

    .line 213
    :cond_14c
    const/4 v11, 0x0

    goto :goto_148

    .line 172
    :array_14e
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/MultiWaveView;IFF)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method private announceTargets()V
    .registers 9

    .prologue
    .line 907
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .local v5, "utterance":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 909
    .local v2, "targetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_3f

    .line 910
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "targetDescription":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, "directionDescription":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 914
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .end local v4    # "text":Ljava/lang/String;
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3c

    .line 918
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 909
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 921
    .end local v0    # "directionDescription":Ljava/lang/String;
    .end local v3    # "targetDescription":Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 925
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 927
    return-void
.end method

.method private deactivateTargets()V
    .registers 4

    .prologue
    .line 357
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 358
    .local v1, "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_6

    .line 360
    .end local v1    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_18
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 361
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .registers 3
    .param p1, "whichHandler"    # I

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->vibrate()V

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 393
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 395
    :cond_c
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 3
    .param p1, "whichHandle"    # I

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->vibrate()V

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 388
    :cond_c
    return-void
.end method

.method private dist2(FF)F
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 893
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/high16 v5, 0x3f800000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 399
    .local v0, "activeTarget":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9a

    move v1, v3

    .line 402
    .local v1, "targetHit":Z
    :goto_c
    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 405
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_9d

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 406
    if-eqz v1, :cond_a0

    .line 407
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 409
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 413
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 414
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v8, v4

    sget-object v9, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v8, v3

    const-string v3, "delay"

    aput-object v3, v8, v10

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "x"

    aput-object v5, v8, v3

    const/4 v3, 0x7

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "y"

    aput-object v5, v8, v3

    const/16 v3, 0x9

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0xa

    const-string/jumbo v5, "onUpdate"

    aput-object v5, v8, v3

    const/16 v3, 0xb

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v5, v8, v3

    const/16 v3, 0xc

    const-string/jumbo v5, "onComplete"

    aput-object v5, v8, v3

    const/16 v3, 0xd

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v5, v8, v3

    invoke-static {v2, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 434
    :goto_96
    invoke-direct {p0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 435
    return-void

    .end local v1    # "targetHit":Z
    :cond_9a
    move v1, v4

    .line 399
    goto/16 :goto_c

    .restart local v1    # "targetHit":Z
    :cond_9d
    move v2, v5

    .line 405
    goto/16 :goto_14

    .line 424
    :cond_a0
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v7, 0x12c

    const/16 v2, 0xe

    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v9, v4

    sget-object v2, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v9, v3

    const-string v2, "delay"

    aput-object v2, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v11

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "x"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "y"

    aput-object v3, v9, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "onUpdate"

    aput-object v3, v9, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v9, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "onComplete"

    aput-object v3, v9, v2

    const/16 v3, 0xd

    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    if-eqz v2, :cond_10b

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_102
    aput-object v2, v9, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    goto :goto_96

    :cond_10b
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_102
.end method

.method private dump()V
    .registers 4

    .prologue
    .line 217
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 943
    :cond_c
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 944
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 945
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v0, 0x0

    .line 950
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private getScaledTapRadiusSquared()F
    .registers 4

    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 899
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 903
    .local v0, "scaledTapRadius":F
    :goto_13
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->square(F)F

    move-result v1

    return v1

    .line 901
    .end local v0    # "scaledTapRadius":F
    :cond_18
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    .restart local v0    # "scaledTapRadius":F
    goto :goto_13
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 931
    :cond_c
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 932
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 933
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v0, 0x0

    .line 938
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    .line 672
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 675
    :cond_f
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 683
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 684
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 755
    :goto_b
    return-void

    .line 688
    :cond_c
    const/4 v4, -0x1

    .line 689
    .local v4, "activeTarget":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 690
    .local v10, "historySize":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_12
    add-int/lit8 v28, v10, 0x1

    move/from16 v0, v28

    if-ge v13, v0, :cond_1b5

    .line 691
    if-ge v13, v10, :cond_f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v26

    .line 692
    .local v26, "x":F
    :goto_20
    if-ge v13, v10, :cond_ff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v27

    .line 693
    .local v27, "y":F
    :goto_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    sub-float v24, v26, v28

    .line 694
    .local v24, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 695
    .local v25, "ty":F
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v23, v0

    .line 696
    .local v23, "touchRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    cmpl-float v28, v23, v28

    if-lez v28, :cond_105

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    div-float v18, v28, v23

    .line 697
    .local v18, "scale":F
    :goto_62
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    mul-float v29, v24, v18

    add-float v14, v28, v29

    .line 698
    .local v14, "limitX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    mul-float v29, v25, v18

    add-float v15, v28, v29

    .line 700
    .local v15, "limitY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_109

    const/16 v19, 0x1

    .line 701
    .local v19, "singleTarget":Z
    :goto_8a
    if-eqz v19, :cond_10d

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v29, v0

    sub-float v20, v28, v29

    .line 704
    .local v20, "snapRadius":F
    cmpl-float v28, v23, v20

    if-lez v28, :cond_a3

    .line 705
    const/4 v4, 0x0

    .line 706
    move/from16 v26, v14

    .line 707
    move/from16 v27, v15

    .line 727
    .end local v20    # "snapRadius":F
    :cond_a3
    :goto_a3
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_18e

    .line 728
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 729
    if-eqz v19, :cond_166

    move/from16 v16, v14

    .line 730
    .local v16, "newX":F
    :goto_ba
    if-eqz v19, :cond_17a

    move/from16 v17, v15

    .line 731
    .local v17, "newY":F
    :goto_be
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 733
    .local v6, "currentTarget":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v28

    if-eqz v28, :cond_f5

    .line 734
    sget-object v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 690
    .end local v6    # "currentTarget":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v16    # "newX":F
    .end local v17    # "newY":F
    :cond_f5
    :goto_f5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_12

    .line 691
    .end local v14    # "limitX":F
    .end local v15    # "limitY":F
    .end local v18    # "scale":F
    .end local v19    # "singleTarget":Z
    .end local v23    # "touchRadius":F
    .end local v24    # "tx":F
    .end local v25    # "ty":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_f9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    goto/16 :goto_20

    .line 692
    .restart local v26    # "x":F
    :cond_ff
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    goto/16 :goto_28

    .line 696
    .restart local v23    # "touchRadius":F
    .restart local v24    # "tx":F
    .restart local v25    # "ty":F
    .restart local v27    # "y":F
    :cond_105
    const/high16 v18, 0x3f800000

    goto/16 :goto_62

    .line 700
    .restart local v14    # "limitX":F
    .restart local v15    # "limitY":F
    .restart local v18    # "scale":F
    :cond_109
    const/16 v19, 0x0

    goto/16 :goto_8a

    .line 711
    .restart local v19    # "singleTarget":Z
    :cond_10d
    const v5, 0x7f7fffff

    .line 712
    .local v5, "best":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 713
    .local v11, "hitRadius2":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_160

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 716
    .local v21, "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v28

    sub-float v8, v14, v28

    .line 717
    .local v8, "dx":F
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v28

    sub-float v9, v15, v28

    .line 718
    .local v9, "dy":F
    mul-float v28, v8, v8

    mul-float v29, v9, v9

    add-float v7, v28, v29

    .line 719
    .local v7, "dist2":F
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v28

    if-eqz v28, :cond_15d

    cmpg-float v28, v7, v11

    if-gez v28, :cond_15d

    cmpg-float v28, v7, v5

    if-gez v28, :cond_15d

    .line 720
    move v4, v12

    .line 721
    move v5, v7

    .line 713
    :cond_15d
    add-int/lit8 v12, v12, 0x1

    goto :goto_11f

    .line 724
    .end local v7    # "dist2":F
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v21    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_160
    move/from16 v26, v14

    .line 725
    move/from16 v27, v15

    goto/16 :goto_a3

    .line 729
    .end local v5    # "best":F
    .end local v11    # "hitRadius2":F
    .end local v12    # "i":I
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v16

    goto/16 :goto_ba

    .line 730
    .restart local v16    # "newX":F
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v17

    goto/16 :goto_be

    .line 738
    .end local v16    # "newX":F
    :cond_18e
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 739
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_f5

    .line 745
    .end local v14    # "limitX":F
    .end local v15    # "limitY":F
    .end local v18    # "scale":F
    .end local v19    # "singleTarget":Z
    .end local v23    # "touchRadius":F
    .end local v24    # "tx":F
    .end local v25    # "ty":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    .line 747
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v4, :cond_1f4

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_1f4

    .line 748
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dispatchGrabbedEvent(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_1f4

    .line 750
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 751
    .local v22, "targetContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 754
    .end local v22    # "targetContentDescription":Ljava/lang/String;
    :cond_1f4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    goto/16 :goto_b
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 679
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 680
    return-void
.end method

.method private hideChevrons()V
    .registers 4

    .prologue
    .line 861
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 862
    .local v0, "chevron":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_6

    .line 863
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_6

    .line 866
    .end local v0    # "chevron":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_19
    return-void
.end method

.method private hideTargets(Z)V
    .registers 16
    .param p1, "animate"    # Z

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 447
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 448
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 452
    :cond_10
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 453
    if-eqz p1, :cond_9d

    .line 454
    if-eqz p1, :cond_5e

    const/16 v0, 0x4b0

    .line 455
    .local v0, "duration":I
    :goto_18
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 456
    .local v2, "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 457
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v5, v0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "alpha"

    aput-object v8, v7, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "delay"

    aput-object v8, v7, v12

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x4

    const-string/jumbo v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v2, v5, v6, v7}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v0    # "duration":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_5e
    move v0, v3

    .line 454
    goto :goto_18

    .line 462
    .restart local v0    # "duration":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_60
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v6, v0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "alpha"

    aput-object v9, v8, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v11

    const-string v3, "delay"

    aput-object v3, v8, v12

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v13

    const/4 v3, 0x4

    const-string/jumbo v9, "onUpdate"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v8, v3

    const/4 v3, 0x6

    const-string/jumbo v9, "onComplete"

    aput-object v9, v8, v3

    const/4 v3, 0x7

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v9, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .end local v0    # "duration":I
    :goto_9c
    return-void

    .line 468
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_9d
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 469
    .restart local v2    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 470
    invoke-virtual {v2, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_a3

    .line 472
    .end local v2    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_b8
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_9c
.end method

.method private hideUnselected(I)V
    .registers 5
    .param p1, "active"    # I

    .prologue
    const/4 v2, 0x0

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 439
    if-eq v0, p1, :cond_17

    .line 440
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 438
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 443
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 444
    return-void
.end method

.method private internalSetTargetResources(I)V
    .registers 9
    .param p1, "resourceId"    # I

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 518
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 519
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 520
    .local v1, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 521
    .local v5, "targetDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_27

    .line 522
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 523
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 525
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 526
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 527
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 528
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 529
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .registers 8
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 955
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 956
    .local v2, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 957
    .local v4, "targetContentDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 958
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 961
    .end local v1    # "contentDescription":Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 962
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 667
    return-void
.end method

.method private performInitialLayout(FF)V
    .registers 8
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 810
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_17

    .line 811
    const/high16 v0, 0x3f000000

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 813
    :cond_17
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2f

    .line 815
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 817
    :cond_2f
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4a

    .line 818
    const/4 v0, 0x1

    const/high16 v1, 0x41a00000

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 821
    :cond_4a
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 822
    invoke-direct {p0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 823
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 824
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 247
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 256
    move v0, v1

    .line 258
    :goto_d
    return v0

    .line 249
    :sswitch_e
    move v0, p2

    .line 250
    goto :goto_d

    .line 252
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 253
    goto :goto_d

    .line 247
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .registers 4
    .param p1, "newState"    # I

    .prologue
    .line 783
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_16

    .line 784
    if-eqz p1, :cond_9

    .line 785
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->vibrate()V

    .line 787
    :cond_9
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mGrabbedState:I

    .line 788
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_16

    .line 789
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 792
    :cond_16
    return-void
.end method

.method private showTargets(Z)V
    .registers 15
    .param p1, "animate"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000

    .line 477
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 478
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 480
    :cond_11
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 481
    if-eqz p1, :cond_96

    .line 482
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 483
    .local v1, "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 484
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "alpha"

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "delay"

    aput-object v6, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string/jumbo v7, "onUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 489
    .end local v1    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_5a
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "alpha"

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "delay"

    aput-object v7, v6, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x4

    const-string/jumbo v8, "onUpdate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "onComplete"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_95
    return-void

    .line 495
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_96
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 496
    .restart local v1    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 497
    invoke-virtual {v1, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_9c

    .line 499
    .end local v1    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_b1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_95
.end method

.method private square(F)F
    .registers 3
    .param p1, "d"    # F

    .prologue
    .line 889
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .registers 21

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd

    mul-float v8, v11, v12

    .line 307
    .local v8, "r":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    const v12, 0x3f666666

    mul-float v1, v11, v12

    .line 308
    .local v1, "chevronAnimationDistance":F
    const/4 v11, 0x4

    new-array v6, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    .line 313
    .local v6, "from":[[F
    const/4 v11, 0x4

    new-array v10, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    .line 319
    .local v10, "to":[[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 320
    const/high16 v9, 0x3f000000

    .line 321
    .local v9, "startScale":F
    const/high16 v5, 0x40000000

    .line 322
    .local v5, "endScale":F
    const/4 v4, 0x0

    .local v4, "direction":I
    :goto_d1
    const/4 v11, 0x4

    if-ge v4, v11, :cond_1bf

    .line 323
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_d5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v2, v11, :cond_1bb

    .line 324
    mul-int/lit16 v3, v2, 0xa0

    .line 325
    .local v3, "delay":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    mul-int/2addr v12, v4

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 326
    .local v7, "icon":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-nez v7, :cond_f2

    .line 323
    :goto_ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 329
    :cond_f2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    const-wide/16 v12, 0x352

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "x"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1c0

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string/jumbo v16, "scaleX"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1c8

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string/jumbo v16, "scaleY"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1d0

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string/jumbo v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v7, v12, v13, v14}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ef

    .line 322
    .end local v3    # "delay":I
    .end local v7    # "icon":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1bb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d1

    .line 340
    .end local v2    # "count":I
    :cond_1bf
    return-void

    .line 329
    :array_1c0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_1c8
    .array-data 4
        0x3f000000
        0x40000000
    .end array-data

    :array_1d0
    .array-data 4
        0x3f000000
        0x40000000
    .end array-data
.end method

.method private stopChevronAnimation()V
    .registers 4

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 344
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_6

    .line 346
    .end local v0    # "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_18
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 347
    return-void
.end method

.method private stopHandleAnimation()V
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    if-eqz v0, :cond_e

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 354
    :cond_e
    return-void
.end method

.method private stopTargetAnimation()V
    .registers 4

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 505
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_6

    .line 507
    .end local v0    # "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_18
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 508
    return-void
.end method

.method private switchToState(IFF)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 271
    packed-switch p1, :pswitch_data_38

    .line 298
    :cond_4
    :goto_4
    :pswitch_4
    return-void

    .line 273
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_4

    .line 278
    :pswitch_10
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 279
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 280
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 282
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->announceTargets()V

    goto :goto_4

    .line 295
    :pswitch_33
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->doFinish()V

    goto :goto_4

    .line 271
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_4
        :pswitch_33
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 796
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 797
    .local v3, "y":F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 798
    .local v0, "dx":F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 799
    .local v1, "dy":F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_27

    .line 801
    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 802
    invoke-direct {p0, v2, v3, v5}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 803
    iput-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    .line 806
    :goto_26
    return v4

    :cond_27
    move v4, v5

    goto :goto_26
.end method

.method private updateTargetPositions()V
    .registers 11

    .prologue
    .line 850
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_42

    .line 851
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 852
    .local v3, "targetIcon":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 853
    .local v0, "angle":D
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 854
    .local v4, "xPosition":F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 855
    .local v5, "yPosition":F
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 856
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 850
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 858
    .end local v0    # "angle":D
    .end local v3    # "targetIcon":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v4    # "xPosition":F
    .end local v5    # "yPosition":F
    :cond_42
    return-void
.end method

.method private vibrate()V
    .registers 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c

    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 514
    :cond_c
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 588
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 239
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 567
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .registers 2

    .prologue
    .line 546
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetResourceId:I

    return v0
.end method

.method invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V
    .registers 11
    .param p1, "drawable"    # Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .prologue
    const/4 v6, 0x0

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 365
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 366
    .local v1, "height":I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 367
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 368
    move-object v2, p0

    .line 369
    .local v2, "view":Landroid/view/View;
    :goto_24
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_63

    .line 370
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "view":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 371
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 372
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_24

    .line 377
    :cond_63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 870
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 871
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 872
    .local v1, "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_b

    .line 873
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 876
    .end local v1    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 877
    .restart local v1    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_23

    .line 878
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_23

    .line 881
    .end local v1    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_35
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 882
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 759
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 761
    .local v0, "action":I
    packed-switch v0, :pswitch_data_2e

    .line 772
    :goto_13
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 773
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 775
    .end local v0    # "action":I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 763
    .restart local v0    # "action":I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 766
    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 769
    :pswitch_28
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 761
    nop

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_23
        :pswitch_13
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 828
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 829
    sub-int v3, p4, p2

    .line 830
    .local v3, "width":I
    sub-int v0, p5, p3

    .line 831
    .local v0, "height":I
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 832
    .local v1, "newWaveCenterX":F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 833
    .local v2, "newWaveCenterY":F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_36

    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_60

    .line 834
    :cond_36
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_45

    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_45

    .line 835
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->performInitialLayout(FF)V

    .line 837
    :cond_45
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    .line 838
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    .line 840
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 841
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 843
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 846
    :cond_60
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 264
    .local v1, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 265
    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v3

    .line 266
    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v2

    .line 267
    .local v2, "viewHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setMeasuredDimension(II)V

    .line 268
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 636
    .local v0, "action":I
    const/4 v1, 0x0

    .line 637
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_2c

    .line 659
    :goto_8
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->invalidate()V

    .line 660
    if-eqz v1, :cond_26

    const/4 v2, 0x1

    :goto_e
    return v2

    .line 639
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 640
    const/4 v1, 0x1

    .line 641
    goto :goto_8

    .line 644
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 645
    const/4 v1, 0x1

    .line 646
    goto :goto_8

    .line 649
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 650
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 651
    const/4 v1, 0x1

    .line 652
    goto :goto_8

    .line 655
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 656
    const/4 v1, 0x1

    goto :goto_8

    .line 660
    :cond_26
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_e

    .line 637
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_19
        :pswitch_14
        :pswitch_21
    .end packed-switch
.end method

.method public ping()V
    .registers 1

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->startChevronAnimation()V

    .line 612
    return-void
.end method

.method public reset(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 622
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 623
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 624
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 625
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 629
    invoke-static {}, Lcom/android/internal/widget/multiwaveview/Tweener;->reset()V

    .line 630
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 577
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 578
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    :cond_b
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 886
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 555
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 559
    :cond_b
    return-void
.end method

.method public setTargetResources(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_7

    .line 539
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    .line 543
    :goto_6
    return-void

    .line 541
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    goto :goto_6
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 597
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_16

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 602
    :goto_15
    return-void

    .line 600
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_15
.end method
