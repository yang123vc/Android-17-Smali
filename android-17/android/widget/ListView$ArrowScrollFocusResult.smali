.class Landroid/widget/ListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/ListView$1;

    .prologue
    .line 2650
    invoke-direct {p0}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .registers 2

    .prologue
    .line 2667
    iget v0, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .registers 2

    .prologue
    .line 2663
    iget v0, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .registers 3
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .prologue
    .line 2658
    iput p1, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2659
    iput p2, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2660
    return-void
.end method
