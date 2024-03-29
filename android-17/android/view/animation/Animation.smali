.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field private static final USE_CLOSEGUARD:Z

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMore:Z

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 92
    const-string v0, "log.closeguard.Animation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 103
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 109
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 115
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 122
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 128
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 133
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 138
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 155
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 160
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 167
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 193
    const/high16 v0, 0x3f800000

    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 198
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 200
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 201
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 203
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 204
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 205
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 206
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 208
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 215
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 103
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 109
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 115
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 122
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 128
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 133
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 138
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 155
    iput v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 160
    iput v4, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 167
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 193
    const/high16 v2, 0x3f800000

    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 198
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 200
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 201
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 203
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 204
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 205
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 206
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 208
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 226
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 228
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 229
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 231
    const/16 v2, 0x9

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 232
    const/4 v2, 0x3

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 233
    const/4 v2, 0x4

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 235
    const/4 v2, 0x6

    iget v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 236
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 238
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 240
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 242
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 244
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 246
    .local v1, "resID":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    if-lez v1, :cond_b7

    .line 249
    invoke-virtual {p0, p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 252
    :cond_b7
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 253
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 920
    return-void
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_19

    .line 293
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 294
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 295
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 298
    :cond_19
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 300
    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 258
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 259
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 260
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 261
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 262
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .registers 5

    .prologue
    .line 781
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_19

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 308
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 309
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 311
    :cond_19
    return-void
.end method

.method protected ensureInterpolator()V
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_b

    .line 770
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 772
    :cond_b
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1000
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1001
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 1004
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1006
    return-void

    .line 1004
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .prologue
    .line 718
    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .registers 2

    .prologue
    .line 726
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 644
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .registers 2

    .prologue
    .line 688
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .registers 16
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v8, -0x40800000

    .line 959
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 960
    .local v2, "tempRegion":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 962
    .local v0, "previousRegion":Landroid/graphics/RectF;
    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 963
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 965
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 966
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 967
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 969
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 971
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 972
    .local v3, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 974
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 975
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 976
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 977
    return-void
.end method

.method public getRepeatCount()I
    .registers 2

    .prologue
    .line 675
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .registers 2

    .prologue
    .line 600
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 654
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 634
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 15
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 796
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_a

    .line 797
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 800
    :cond_a
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    .line 801
    .local v5, "startOffset":J
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 803
    .local v0, "duration":J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_b2

    .line 804
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v7, v5

    sub-long v7, p1, v7

    long-to-float v7, v7

    long-to-float v8, v0

    div-float v4, v7, v8

    .line 811
    .local v4, "normalizedTime":F
    :goto_1f
    const/high16 v7, 0x3f800000

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_be

    const/4 v2, 0x1

    .line 812
    .local v2, "expired":Z
    :goto_26
    if-nez v2, :cond_c1

    const/4 v7, 0x1

    :goto_29
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 814
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v7, :cond_3a

    const/high16 v7, 0x3f800000

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 816
    :cond_3a
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-gez v7, :cond_43

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v7, :cond_88

    :cond_43
    const/high16 v7, 0x3f800000

    cmpg-float v7, v4, v7

    if-lez v7, :cond_4d

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v7, :cond_88

    .line 817
    :cond_4d
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v7, :cond_68

    .line 818
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_5a

    .line 819
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 821
    :cond_5a
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 822
    sget-boolean v7, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    if-eqz v7, :cond_68

    .line 823
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v8, "cancel or detach or getTransformation"

    invoke-virtual {v7, v8}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 827
    :cond_68
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v7, :cond_77

    const/high16 v7, 0x3f800000

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 829
    :cond_77
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v7, :cond_7f

    .line 830
    const/high16 v7, 0x3f800000

    sub-float v4, v7, v4

    .line 833
    :cond_7f
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 834
    .local v3, "interpolatedTime":F
    invoke-virtual {p0, v3, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 837
    .end local v3    # "interpolatedTime":F
    :cond_88
    if-eqz v2, :cond_a5

    .line 838
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v8, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-ne v7, v8, :cond_c4

    .line 839
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v7, :cond_a5

    .line 840
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 841
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v7}, Ldalvik/system/CloseGuard;->close()V

    .line 842
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_a5

    .line 843
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 864
    :cond_a5
    :goto_a5
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v7, :cond_ed

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v7, :cond_ed

    .line 865
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 866
    const/4 v7, 0x1

    .line 869
    :goto_b1
    return v7

    .line 808
    .end local v2    # "expired":Z
    .end local v4    # "normalizedTime":F
    :cond_b2
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v7, p1, v7

    if-gez v7, :cond_bb

    const/4 v4, 0x0

    .restart local v4    # "normalizedTime":F
    :goto_b9
    goto/16 :goto_1f

    .end local v4    # "normalizedTime":F
    :cond_bb
    const/high16 v4, 0x3f800000

    goto :goto_b9

    .line 811
    .restart local v4    # "normalizedTime":F
    :cond_be
    const/4 v2, 0x0

    goto/16 :goto_26

    .line 812
    .restart local v2    # "expired":Z
    :cond_c1
    const/4 v7, 0x0

    goto/16 :goto_29

    .line 847
    :cond_c4
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v7, :cond_ce

    .line 848
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 851
    :cond_ce
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_da

    .line 852
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-nez v7, :cond_eb

    const/4 v7, 0x1

    :goto_d8
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 855
    :cond_da
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 856
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 858
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_a5

    .line 859
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    goto :goto_a5

    .line 852
    :cond_eb
    const/4 v7, 0x0

    goto :goto_d8

    .line 869
    :cond_ed
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    goto :goto_b1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 6
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .prologue
    .line 886
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 887
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public getZAdjustment()I
    .registers 2

    .prologue
    .line 711
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .registers 2

    .prologue
    .line 1014
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .registers 2

    .prologue
    .line 905
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .registers 2

    .prologue
    .line 896
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 341
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v6, -0x40800000

    .line 988
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 989
    .local v1, "region":Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 991
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 992
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v2, :cond_1e

    .line 993
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 994
    .local v0, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 996
    .end local v0    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_1e
    return-void
.end method

.method public isFillEnabled()Z
    .registers 2

    .prologue
    .line 517
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 272
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 273
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 274
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 275
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 276
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 277
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 278
    return-void
.end method

.method protected resolveSize(IFII)F
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    .prologue
    .line 934
    packed-switch p1, :pswitch_data_a

    .line 942
    .end local p2    # "value":F
    :goto_3
    :pswitch_3
    return p2

    .line 938
    .restart local p2    # "value":F
    :pswitch_4
    int-to-float v0, p3

    mul-float/2addr p2, v0

    goto :goto_3

    .line 940
    :pswitch_7
    int-to-float v0, p4

    mul-float/2addr p2, v0

    goto :goto_3

    .line 934
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .registers 12
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 406
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_10

    .line 407
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 408
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 409
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 436
    :cond_f
    :goto_f
    return-void

    .line 413
    :cond_10
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long v0, v2, v4

    .line 414
    .local v0, "dur":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_21

    .line 415
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 416
    move-wide v0, p1

    .line 419
    :cond_21
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2c

    .line 420
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 421
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_f

    .line 427
    :cond_2c
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v2, :cond_3f

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3f

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_f

    .line 431
    :cond_3f
    div-long v2, p1, v0

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 432
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v2, :cond_f

    .line 433
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_f
.end method

.method public scaleCurrentDuration(F)V
    .registers 4
    .param p1, "scale"    # F

    .prologue
    .line 444
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 445
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 446
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 761
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 762
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2
    .param p1, "bg"    # I

    .prologue
    .line 587
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    .line 588
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .registers 2
    .param p1, "detachWallpaper"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 614
    return-void
.end method

.method public setDuration(J)V
    .registers 5
    .param p1, "durationMillis"    # J

    .prologue
    .line 389
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_e
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 393
    return-void
.end method

.method public setFillAfter(Z)V
    .registers 2
    .param p1, "fillAfter"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 567
    return-void
.end method

.method public setFillBefore(Z)V
    .registers 2
    .param p1, "fillBefore"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 551
    return-void
.end method

.method public setFillEnabled(Z)V
    .registers 2
    .param p1, "fillEnabled"    # Z

    .prologue
    .line 532
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 533
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 352
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 353
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 363
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 364
    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2
    .param p1, "repeatCount"    # I

    .prologue
    .line 504
    if-gez p1, :cond_3

    .line 505
    const/4 p1, -0x1

    .line 507
    :cond_3
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 508
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2
    .param p1, "repeatMode"    # I

    .prologue
    .line 491
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 492
    return-void
.end method

.method public setStartOffset(J)V
    .registers 3
    .param p1, "startOffset"    # J

    .prologue
    .line 376
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 377
    return-void
.end method

.method public setStartTime(J)V
    .registers 4
    .param p1, "startTimeMillis"    # J

    .prologue
    const/4 v0, 0x0

    .line 459
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 460
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 461
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 462
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 464
    return-void
.end method

.method public setZAdjustment(I)V
    .registers 2
    .param p1, "zAdjustment"    # I

    .prologue
    .line 577
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 578
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 471
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 472
    return-void
.end method

.method public startNow()V
    .registers 3

    .prologue
    .line 479
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 480
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 738
    const/4 v0, 0x1

    return v0
.end method
