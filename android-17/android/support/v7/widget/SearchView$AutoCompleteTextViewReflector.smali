.class Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private doAfterTextChanged:Ljava/lang/reflect/Method;

.field private doBeforeTextChanged:Ljava/lang/reflect/Method;

.field private ensureImeVisible:Ljava/lang/reflect/Method;

.field private showSoftInputUnchecked:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    .line 1711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    :try_start_3
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "doBeforeTextChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 1715
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_16} :catch_65

    .line 1720
    :goto_16
    :try_start_16
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "doAfterTextChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 1722
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_29} :catch_63

    .line 1727
    :goto_29
    :try_start_29
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "ensureImeVisible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 1729
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_41} :catch_61

    .line 1734
    :goto_41
    :try_start_41
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "showSoftInputUnchecked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/ResultReceiver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    .line 1736
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_41 .. :try_end_5e} :catch_5f

    .line 1740
    :goto_5e
    return-void

    .line 1737
    :catch_5f
    move-exception v0

    goto :goto_5e

    .line 1730
    :catch_61
    move-exception v0

    goto :goto_41

    .line 1723
    :catch_63
    move-exception v0

    goto :goto_29

    .line 1716
    :catch_65
    move-exception v0

    goto :goto_16
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 1752
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 1754
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 1758
    :cond_c
    :goto_c
    return-void

    .line 1755
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 1743
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 1745
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 1749
    :cond_c
    :goto_c
    return-void

    .line 1746
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "visible"    # Z

    .prologue
    .line 1761
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    .line 1763
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    .line 1767
    :cond_13
    :goto_13
    return-void

    .line 1764
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method showSoftInputUnchecked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V
    .registers 8
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    .line 1770
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    .line 1772
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 1780
    :goto_17
    return-void

    .line 1774
    :catch_18
    move-exception v0

    .line 1779
    :cond_19
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_17
.end method
