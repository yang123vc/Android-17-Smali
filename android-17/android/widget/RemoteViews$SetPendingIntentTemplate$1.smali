.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v9, p2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_14

    move-object v8, p2

    .line 311
    check-cast v8, Landroid/view/ViewGroup;

    .line 315
    .local v8, "vg":Landroid/view/ViewGroup;
    instance-of v9, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v9, :cond_12

    .line 316
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "vg":Landroid/view/ViewGroup;
    check-cast v8, Landroid/view/ViewGroup;

    .line 318
    .restart local v8    # "vg":Landroid/view/ViewGroup;
    :cond_12
    if-nez v8, :cond_15

    .line 346
    .end local v8    # "vg":Landroid/view/ViewGroup;
    :cond_14
    :goto_14
    return-void

    .line 320
    .restart local v8    # "vg":Landroid/view/ViewGroup;
    :cond_15
    const/4 v2, 0x0

    .line 321
    .local v2, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 322
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v1, :cond_2f

    .line 323
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x1020224

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 324
    .local v7, "tag":Ljava/lang/Object;
    instance-of v9, v7, Landroid/content/Intent;

    if-eqz v9, :cond_97

    move-object v2, v7

    .line 325
    check-cast v2, Landroid/content/Intent;

    .line 329
    .end local v7    # "tag":Ljava/lang/Object;
    :cond_2f
    if-eqz v2, :cond_14

    .line 331
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 333
    .local v0, "appScale":F
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 334
    .local v5, "pos":[I
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 336
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 337
    .local v6, "rect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 338
    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 339
    const/4 v9, 0x0

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 340
    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 342
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 344
    iget-object v9, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v11, v11, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v11, v2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto/16 :goto_14

    .line 322
    .end local v0    # "appScale":F
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pos":[I
    .end local v6    # "rect":Landroid/graphics/Rect;
    .restart local v7    # "tag":Ljava/lang/Object;
    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method
