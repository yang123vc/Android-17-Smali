.class Landroid/view/View$3;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;

.field final synthetic val$childViewId:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 5162
    iput-object p1, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    iput p2, p0, Landroid/view/View$3;->val$childViewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .registers 4
    .param p1, "t"    # Landroid/view/View;

    .prologue
    .line 5165
    iget v0, p1, Landroid/view/View;->mID:I

    iget v1, p0, Landroid/view/View$3;->val$childViewId:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5162
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$3;->apply(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
