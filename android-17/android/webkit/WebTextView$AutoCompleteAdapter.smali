.class public Landroid/webkit/WebTextView$AutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x10900b2

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 889
    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V
    .registers 2
    .param p0, "x0"    # Landroid/webkit/WebTextView$AutoCompleteAdapter;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 883
    invoke-direct {p0, p1}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method private setTextView(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 908
    iput-object p1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    .line 909
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 896
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 898
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_16

    iget-object v1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 899
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 901
    :cond_16
    return-object v0
.end method
