.class Landroid/widget/NumberPicker$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 3

    .prologue
    .line 676
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 690
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 693
    :cond_f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 681
    iget-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    if-nez v0, :cond_a

    .line 683
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    # invokes: Landroid/widget/NumberPicker;->setSelectorWheelState(I)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;I)V

    .line 685
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 686
    return-void
.end method
