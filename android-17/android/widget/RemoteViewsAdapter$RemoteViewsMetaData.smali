.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Landroid/widget/RemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .registers 3

    .prologue
    .line 347
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    .line 348
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 349
    return-void
.end method

.method static synthetic access$1600(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .registers 5
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/ViewGroup;

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 394
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    .local v0, "context":Landroid/content/Context;
    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {v5, v8, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V

    .line 398
    .local v5, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v9

    monitor-enter v9

    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, "customLoadingViewAvailable":Z
    :try_start_13
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_85

    if-eqz v8, :cond_31

    .line 404
    :try_start_17
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 405
    .local v7, "loadingView":Landroid/view/View;
    const v8, 0x1020225

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v10}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 407
    invoke-virtual {v5, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_7c
    .catchall {:try_start_17 .. :try_end_30} :catchall_85

    .line 408
    const/4 v1, 0x1

    .line 414
    .end local v7    # "loadingView":Landroid/view/View;
    :cond_31
    :goto_31
    if-nez v1, :cond_7a

    .line 417
    :try_start_33
    iget v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_85

    if-gez v8, :cond_59

    .line 419
    :try_start_37
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 420
    .local v4, "firstView":Landroid/view/View;
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/view/View;->measure(II)V

    .line 423
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 424
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_59} :catch_88
    .catchall {:try_start_37 .. :try_end_59} :catchall_85

    .line 435
    .end local v4    # "firstView":Landroid/view/View;
    :cond_59
    :goto_59
    :try_start_59
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$1200(Landroid/widget/RemoteViewsAdapter;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x109007e

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 438
    .local v6, "loadingTextView":Landroid/widget/TextView;
    iget v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 439
    new-instance v8, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V

    .line 443
    .end local v6    # "loadingTextView":Landroid/widget/TextView;
    :cond_7a
    monitor-exit v9

    .line 445
    return-object v5

    .line 409
    :catch_7c
    move-exception v3

    .line 410
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "RemoteViewsAdapter"

    const-string v10, "Error inflating custom loading view, using default loadingview instead"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 443
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_85
    move-exception v8

    monitor-exit v9
    :try_end_87
    .catchall {:try_start_59 .. :try_end_87} :catchall_85

    throw v8

    .line 425
    :catch_88
    move-exception v3

    .line 426
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_89
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    .line 427
    .local v2, "density":F
    const/high16 v8, 0x42480000

    mul-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 429
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 430
    const-string v8, "RemoteViewsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating first RemoteViews"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_89 .. :try_end_bd} :catchall_85

    goto :goto_59
.end method


# virtual methods
.method public getMappedViewType(I)I
    .registers 6
    .param p1, "typeId"    # I

    .prologue
    .line 381
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 382
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 387
    :goto_1c
    return v0

    .line 385
    :cond_1d
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 386
    .local v0, "incrementalTypeId":I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 364
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 365
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 366
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 367
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 368
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 369
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 370
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .registers 4
    .param p1, "d"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .prologue
    .line 352
    monitor-enter p1

    .line 353
    :try_start_1
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 354
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 355
    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 356
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    iget-object v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 357
    monitor-exit p1

    .line 358
    return-void

    .line 357
    :catchall_16
    move-exception v0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "loadingView"    # Landroid/widget/RemoteViews;
    .param p2, "firstView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 373
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 374
    if-eqz p2, :cond_9

    .line 375
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 378
    :cond_9
    return-void
.end method
