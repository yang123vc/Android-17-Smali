.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayoutRefSet"
.end annotation


# instance fields
.field private mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .registers 3

    .prologue
    .line 275
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    .line 277
    return-void
.end method


# virtual methods
.method public add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "layout"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .prologue
    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 287
    .local v0, "pos":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 288
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 295
    .local v1, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :goto_14
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 296
    return-void

    .line 290
    .end local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :cond_18
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 291
    .restart local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 326
    return-void
.end method

.method public notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;I)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .param p3, "typeId"    # I

    .prologue
    .line 303
    if-nez p2, :cond_3

    .line 317
    :cond_2
    :goto_2
    return-void

    .line 305
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 306
    .local v1, "pos":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 309
    .local v3, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 310
    .local v2, "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-virtual {v2, p2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;)V

    goto :goto_1b

    .line 312
    .end local v2    # "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_2b
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 315
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
