.class Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 556
    iput-object p1, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 558
    iput-object p3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 559
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/widget/TabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Landroid/widget/TabHost$1;

    .prologue
    .line 551
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 562
    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 563
    .local v1, "context":Landroid/content/Context;
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 565
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    # getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v8}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    # getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v9}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v9

    invoke-virtual {v4, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 569
    .local v5, "tabIndicator":Landroid/view/View;
    const v8, 0x1020016

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 570
    .local v6, "tv":Landroid/widget/TextView;
    const v8, 0x1020006

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 573
    .local v3, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_76

    move v2, v0

    .line 574
    .local v2, "exclusive":Z
    :goto_3b
    if-eqz v2, :cond_45

    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 576
    .local v0, "bindIcon":Z
    :cond_45
    :goto_45
    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    if-eqz v0, :cond_58

    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_58

    .line 579
    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    :cond_58
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v8, 0x4

    if-gt v7, v8, :cond_75

    .line 585
    const v7, 0x108057f

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 586
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1060075

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 589
    :cond_75
    return-object v5

    .end local v0    # "bindIcon":Z
    .end local v2    # "exclusive":Z
    :cond_76
    move v2, v7

    .line 573
    goto :goto_3b

    .restart local v2    # "exclusive":Z
    :cond_78
    move v0, v7

    .line 574
    goto :goto_45
.end method
