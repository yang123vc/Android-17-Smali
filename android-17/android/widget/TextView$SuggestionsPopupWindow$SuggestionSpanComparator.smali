.class Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V
    .registers 2

    .prologue
    .line 9679
    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/widget/TextView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/TextView$SuggestionsPopupWindow;
    .param p2, "x1"    # Landroid/widget/TextView$1;

    .prologue
    .line 9679
    invoke-direct {p0, p1}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .registers 12
    .param p1, "span1"    # Landroid/text/style/SuggestionSpan;
    .param p2, "span2"    # Landroid/text/style/SuggestionSpan;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 9681
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    .line 9682
    .local v2, "flag1":I
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    .line 9683
    .local v3, "flag2":I
    if-eq v2, v3, :cond_38

    .line 9685
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_26

    move v0, v7

    .line 9686
    .local v0, "easy1":Z
    :goto_12
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_28

    move v1, v7

    .line 9687
    .local v1, "easy2":Z
    :goto_17
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2a

    move v4, v7

    .line 9688
    .local v4, "misspelled1":Z
    :goto_1c
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_21

    move v5, v7

    .line 9689
    .local v5, "misspelled2":Z
    :cond_21
    if-eqz v0, :cond_2c

    if-nez v4, :cond_2c

    .line 9695
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_25
    :goto_25
    return v6

    :cond_26
    move v0, v5

    .line 9685
    goto :goto_12

    .restart local v0    # "easy1":Z
    :cond_28
    move v1, v5

    .line 9686
    goto :goto_17

    .restart local v1    # "easy2":Z
    :cond_2a
    move v4, v5

    .line 9687
    goto :goto_1c

    .line 9690
    .restart local v4    # "misspelled1":Z
    .restart local v5    # "misspelled2":Z
    :cond_2c
    if-eqz v1, :cond_32

    if-nez v5, :cond_32

    move v6, v7

    goto :goto_25

    .line 9691
    :cond_32
    if-nez v4, :cond_25

    .line 9692
    if-eqz v5, :cond_38

    move v6, v7

    goto :goto_25

    .line 9695
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_38
    iget-object v6, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    # getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$4100(Landroid/widget/TextView$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    # getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$4100(Landroid/widget/TextView$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    goto :goto_25
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 9679
    check-cast p1, Landroid/text/style/SuggestionSpan;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/text/style/SuggestionSpan;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result v0

    return v0
.end method
