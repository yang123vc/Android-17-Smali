.class Landroid/widget/TextView$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private mAbove:Z

.field private mPopupInlineErrorAboveBackgroundId:I

.field private mPopupInlineErrorBackgroundId:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;II)V
    .registers 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 4024
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 4018
    iput-boolean v0, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    .line 4020
    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 4021
    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 4025
    iput-object p1, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 4029
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xd9

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 4031
    iget-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4032
    return-void
.end method

.method private getResourceId(II)I
    .registers 6
    .param p1, "currentId"    # I
    .param p2, "index"    # I

    .prologue
    .line 4051
    if-nez p1, :cond_16

    .line 4052
    iget-object v1, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4054
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 4055
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4057
    .end local v0    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_16
    return p1
.end method


# virtual methods
.method fixDirection(Z)V
    .registers 4
    .param p1, "above"    # Z

    .prologue
    .line 4035
    iput-boolean p1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    .line 4037
    if-eqz p1, :cond_18

    .line 4038
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    const/16 v1, 0xda

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 4046
    :goto_e
    iget-object v1, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_23

    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4048
    return-void

    .line 4042
    :cond_18
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xd9

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_e

    .line 4046
    :cond_23
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_14
.end method

.method public update(IIIIZ)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "force"    # Z

    .prologue
    .line 4062
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 4064
    invoke-virtual {p0}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .line 4065
    .local v0, "above":Z
    iget-boolean v1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_e

    .line 4066
    invoke-virtual {p0, v0}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    .line 4068
    :cond_e
    return-void
.end method
