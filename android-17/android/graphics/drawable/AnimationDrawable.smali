.class public Landroid/graphics/drawable/AnimationDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimationDrawable$1;,
        Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    }
.end annotation


# instance fields
.field private final mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

.field private mCurFrame:I

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "state"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    .line 355
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    .line 356
    .local v0, "as":Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    .line 357
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 358
    if-eqz p1, :cond_17

    .line 359
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 361
    :cond_17
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/AnimationDrawable$1;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private nextFrame(Z)V
    .registers 5
    .param p1, "unschedule"    # Z

    .prologue
    .line 211
    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    add-int/lit8 v1, v2, 0x1

    .line 212
    .local v1, "next":I
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    .line 213
    .local v0, "N":I
    if-lt v1, v0, :cond_d

    .line 214
    const/4 v1, 0x0

    .line 216
    :cond_d
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1e

    :cond_19
    const/4 v2, 0x1

    :goto_1a
    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 217
    return-void

    .line 216
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private setFrame(IZZ)V
    .registers 8
    .param p1, "frame"    # I
    .param p2, "unschedule"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 231
    :cond_8
    :goto_8
    return-void

    .line 223
    :cond_9
    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    .line 224
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 225
    if-eqz p2, :cond_13

    .line 226
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 228
    :cond_13
    if-eqz p3, :cond_8

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v2

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_8
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 205
    iget v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    if-gez v0, :cond_e

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 208
    :cond_e
    return-void
.end method

.method public getDuration(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 178
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getFrame(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfFrames()I
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 16
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
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 237
    sget-object v7, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, v0, v9}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 243
    iget-object v7, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->setVariablePadding(Z)V

    .line 246
    iget-object v7, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    # setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v7, v8}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$102(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    .line 249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 255
    .local v5, "innerDepth":I
    :cond_27
    :goto_27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v10, :cond_b9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v5, :cond_36

    const/4 v7, 0x3

    if-eq v6, v7, :cond_b9

    .line 257
    :cond_36
    if-ne v6, v11, :cond_27

    .line 261
    if-gt v1, v5, :cond_27

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 265
    sget-object v7, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    const/4 v7, -0x1

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 268
    .local v4, "duration":I
    if-gez v4, :cond_70

    .line 269
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <item> tag requires a \'duration\' attribute"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 273
    :cond_70
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 276
    .local v3, "drawableRes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    if-eqz v3, :cond_88

    .line 280
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 293
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :goto_7d
    iget-object v7, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 294
    if-eqz v2, :cond_27

    .line 295
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_27

    .line 282
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_88
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_88

    .line 285
    if-eq v6, v11, :cond_b4

    .line 286
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <item> tag requires a \'drawable\' attribute or child tag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " defining a drawable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 290
    :cond_b4
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_7d

    .line 299
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableRes":I
    .end local v4    # "duration":I
    :cond_b9
    invoke-direct {p0, v9, v10, v9}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 300
    return-void
.end method

.method public isOneShot()Z
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 3

    .prologue
    .line 140
    iget v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 305
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    # setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v1, v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;[I)[I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    .line 308
    :cond_1e
    return-object p0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->nextFrame(Z)V

    .line 151
    return-void
.end method

.method public setOneShot(Z)V
    .registers 3
    .param p1, "oneShot"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$102(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    .line 195
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer;->setVisible(ZZ)Z

    move-result v0

    .line 93
    .local v0, "changed":Z
    if-eqz p1, :cond_10

    .line 94
    if-nez v0, :cond_b

    if-eqz p2, :cond_f

    .line 95
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 100
    :cond_f
    :goto_f
    return v0

    .line 98
    :cond_10
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public start()V
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 119
    :cond_9
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 132
    :cond_9
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
