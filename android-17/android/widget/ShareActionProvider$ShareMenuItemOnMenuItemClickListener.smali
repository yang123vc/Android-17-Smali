.class Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/widget/ShareActionProvider;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ShareActionProvider;
    .param p2, "x1"    # Landroid/widget/ShareActionProvider$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 277
    iget-object v3, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    # getter for: Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ShareActionProvider;->access$100(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    # getter for: Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;
    invoke-static {v4}, Landroid/widget/ShareActionProvider;->access$200(Landroid/widget/ShareActionProvider;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 279
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 280
    .local v1, "itemId":I
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 281
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_23

    .line 282
    iget-object v3, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    # getter for: Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ShareActionProvider;->access$100(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    :cond_23
    const/4 v3, 0x1

    return v3
.end method
