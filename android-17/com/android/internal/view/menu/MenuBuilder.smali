.class public Lcom/android/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/android/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 142
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 187
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 193
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 199
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 200
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 387
    invoke-static {p3}, Lcom/android/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 389
    .local v5, "ordering":I
    new-instance v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/view/menu/MenuItemImpl;-><init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 392
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_19

    .line 394
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 397
    :cond_19
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 398
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 400
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 6
    .param p1, "cleared"    # Z

    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 248
    :goto_8
    return-void

    .line 238
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 239
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 240
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuPresenter;

    .line 241
    .local v1, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_2c

    .line 242
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 244
    :cond_2c
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_12

    .line 247
    .end local v1    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_8
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 290
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 292
    .local v4, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_10

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 308
    :cond_10
    return-void

    .line 294
    :cond_11
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 295
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuPresenter;

    .line 296
    .local v3, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v3, :cond_31

    .line 297
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    .line 299
    :cond_31
    invoke-interface {v3}, Lcom/android/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 300
    .local v1, "id":I
    if-lez v1, :cond_17

    .line 301
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 302
    .local v2, "parcel":Landroid/os/Parcelable;
    if-eqz v2, :cond_17

    .line 303
    invoke-interface {v3, v2}, Lcom/android/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_17
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 287
    :goto_8
    return-void

    .line 269
    :cond_9
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 271
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 272
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 273
    .local v2, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_2e

    .line 274
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 276
    :cond_2e
    invoke-interface {v2}, Lcom/android/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 277
    .local v1, "id":I
    if-lez v1, :cond_14

    .line 278
    invoke-interface {v2}, Lcom/android/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 279
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_14

    .line 280
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    .line 286
    .end local v1    # "id":I
    .end local v2    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3e
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_8
.end method

.method private dispatchSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 251
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v3, 0x0

    .line 263
    :cond_9
    return v3

    .line 253
    :cond_a
    const/4 v3, 0x0

    .line 255
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 256
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuPresenter;

    .line 257
    .local v1, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_2b

    .line 258
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 259
    :cond_2b
    if-nez v3, :cond_11

    .line 260
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_11
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 5
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 749
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 750
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_17

    .line 751
    add-int/lit8 v2, v0, 0x1

    .line 755
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return v2

    .line 748
    .restart local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 755
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private static getOrdering(I)I
    .registers 4
    .param p0, "categoryOrder"    # I

    .prologue
    .line 681
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 683
    .local v0, "index":I
    if-ltz v0, :cond_c

    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_15

    .line 684
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_15
    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 499
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 504
    :cond_a
    :goto_a
    return-void

    .line 501
    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 503
    if-eqz p2, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_a
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 9
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1092
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_12

    .line 1093
    iput-object p5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1096
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1097
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1116
    :goto_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1117
    return-void

    .line 1099
    :cond_12
    if-lez p1, :cond_25

    .line 1100
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1105
    :cond_1a
    :goto_1a
    if-lez p3, :cond_2a

    .line 1106
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1112
    :cond_22
    :goto_22
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_d

    .line 1101
    :cond_25
    if-eqz p2, :cond_1a

    .line 1102
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1a

    .line 1107
    :cond_2a
    if-eqz p4, :cond_22

    .line 1108
    iput-object p4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_22
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 5
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 713
    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_1b

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x1110028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_18
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 717
    return-void

    .line 713
    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 412
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 22
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 441
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 442
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 444
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_67

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 446
    .local v3, "N":I
    :goto_17
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_1e

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 450
    :cond_1e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v3, :cond_6e

    .line 451
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 452
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_69

    move-object/from16 v10, p6

    :goto_2f
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 454
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 457
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 460
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_64

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_64

    .line 461
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 450
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 444
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_67
    const/4 v3, 0x0

    goto :goto_17

    .line 452
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_69
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2f

    .line 465
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6e
    return v3
.end method

.method public addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V
    .registers 4
    .param p1, "presenter"    # Lcom/android/internal/view/menu/MenuPresenter;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 218
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 4
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 428
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 429
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 430
    .local v1, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 432
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_9

    .line 743
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 745
    :cond_9
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_9

    .line 521
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 523
    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 526
    return-void
.end method

.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 511
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 514
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 515
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 516
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 517
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1081
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1082
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1083
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1085
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1086
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 924
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 925
    return-void
.end method

.method final close(Z)V
    .registers 6
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 908
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_5

    .line 920
    :goto_4
    return-void

    .line 910
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 911
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 912
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuPresenter;

    .line 913
    .local v1, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_28

    .line 914
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 916
    :cond_28
    invoke-interface {v1, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_e

    .line 919
    .end local v1    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_2c
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_4
.end method

.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 7
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1241
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eq v4, p1, :cond_e

    :cond_c
    const/4 v0, 0x0

    .line 1259
    :cond_d
    :goto_d
    return v0

    .line 1243
    :cond_e
    const/4 v0, 0x0

    .line 1245
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1246
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1247
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 1248
    .local v2, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_32

    .line 1249
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1250
    :cond_32
    invoke-interface {v2, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1254
    .end local v2    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1256
    if-eqz v0, :cond_d

    .line 1257
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_d
.end method

.method dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 7
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1219
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    .line 1237
    :cond_9
    :goto_9
    return v0

    .line 1221
    :cond_a
    const/4 v0, 0x0

    .line 1223
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1224
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1225
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 1226
    .local v2, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_2e

    .line 1227
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1228
    :cond_2e
    invoke-interface {v2, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1232
    .end local v2    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1234
    if-eqz v0, :cond_9

    .line 1235
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_9
.end method

.method public findGroupIndex(I)I
    .registers 3
    .param p1, "group"    # I

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .registers 7
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 635
    .local v2, "size":I
    if-gez p2, :cond_7

    .line 636
    const/4 p2, 0x0

    .line 639
    :cond_7
    move v0, p2

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_1c

    .line 640
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 642
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_19

    .line 647
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_18
    return v0

    .line 639
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 647
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 599
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v3, :cond_2b

    .line 600
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 601
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_16

    .line 612
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_15
    return-object v1

    .line 603
    .restart local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_16
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 604
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 606
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_28

    move-object v1, v2

    .line 607
    goto :goto_15

    .line 599
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 612
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public findItemIndex(I)I
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 618
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_19

    .line 619
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 620
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 625
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_15
    return v0

    .line 618
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 625
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 15
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 824
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 825
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 826
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 828
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 859
    :cond_10
    :goto_10
    return-object v8

    .line 832
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 833
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 835
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 838
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 839
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2b

    .line 840
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_10

    .line 843
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 846
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v7, :cond_10

    .line 847
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 848
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_5f

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 850
    .local v6, "shortcutChar":C
    :goto_3e
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_48

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5d

    :cond_48
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_53

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5d

    :cond_53
    if-eqz v5, :cond_64

    const/16 v9, 0x8

    if-ne v6, v9, :cond_64

    const/16 v9, 0x43

    if-ne p1, v9, :cond_64

    :cond_5d
    move-object v8, v1

    .line 856
    goto :goto_10

    .line 848
    .end local v6    # "shortcutChar":C
    :cond_5f
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_3e

    .line 846
    .restart local v6    # "shortcutChar":C
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 15
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 781
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 782
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 783
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 785
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 787
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_18

    if-eq p2, v10, :cond_18

    .line 809
    :cond_17
    return-void

    .line 792
    :cond_18
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 793
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v0, :cond_17

    .line 794
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 795
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 796
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 798
    :cond_38
    if-eqz v6, :cond_66

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 799
    .local v7, "shortcutChar":C
    :goto_3e
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_63

    if-eqz v7, :cond_63

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_5a

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_5a

    if-eqz v6, :cond_63

    const/16 v8, 0x8

    if-ne v7, v8, :cond_63

    if-ne p2, v10, :cond_63

    :cond_5a
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 806
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 798
    .end local v7    # "shortcutChar":C
    :cond_66
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_3e
.end method

.method public flagActionItems()V
    .registers 11

    .prologue
    .line 1032
    iget-boolean v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_5

    .line 1068
    :goto_4
    return-void

    .line 1037
    :cond_5
    const/4 v0, 0x0

    .line 1038
    .local v0, "flagged":Z
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1039
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuPresenter;

    .line 1040
    .local v5, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v5, :cond_26

    .line 1041
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1043
    :cond_26
    invoke-interface {v5}, Lcom/android/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_c

    .line 1047
    .end local v5    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_2c
    if-eqz v0, :cond_5d

    .line 1048
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1049
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1050
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 1051
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1052
    .local v4, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v4, :cond_70

    .line 1053
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1054
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1055
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1057
    :cond_57
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 1063
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "itemsSize":I
    .end local v7    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_5d
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1064
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1065
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1067
    :cond_70
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_4
.end method

.method getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1077
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .prologue
    .line 1196
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 989
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1004
    :goto_6
    return-object v3

    .line 992
    :cond_7
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 994
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 996
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v2, :cond_2b

    .line 997
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 998
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1001
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1002
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1004
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_6
.end method

.method public hasVisibleItems()Z
    .registers 5

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 587
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_1a

    .line 588
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 589
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 590
    const/4 v3, 0x1

    .line 594
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return v3

    .line 587
    .restart local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 594
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method isQwertyMode()Z
    .registers 2

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 660
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 984
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 985
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 986
    return-void
.end method

.method onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 974
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 975
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 976
    return-void
.end method

.method onItemsChanged(Z)V
    .registers 4
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 935
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_f

    .line 936
    if-eqz p1, :cond_b

    .line 937
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 938
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 941
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 945
    :goto_e
    return-void

    .line 943
    :cond_f
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_e
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 10
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 868
    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 870
    .local v1, "itemImpl":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_f

    :cond_d
    move v0, v4

    .line 895
    :cond_e
    :goto_e
    return v0

    .line 874
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 876
    .local v0, "invoked":Z
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 877
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v4

    or-int/2addr v0, v4

    .line 878
    if-eqz v0, :cond_e

    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_e

    .line 879
    :cond_24
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 880
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 882
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 883
    .local v3, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 884
    .local v2, "provider":Landroid/view/ActionProvider;
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 885
    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 887
    :cond_42
    invoke-direct {p0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 888
    if-nez v0, :cond_e

    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_e

    .line 890
    .end local v2    # "provider":Landroid/view/ActionProvider;
    .end local v3    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_4d
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_e

    .line 891
    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_e
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 759
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 761
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 763
    .local v0, "handled":Z
    if-eqz v1, :cond_b

    .line 764
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 767
    :cond_b
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_13

    .line 768
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 771
    :cond_13
    return v0
.end method

.method public removeGroup(I)V
    .registers 7
    .param p1, "group"    # I

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 475
    .local v0, "i":I
    if-ltz v0, :cond_2c

    .line 476
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 477
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 478
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_28

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 480
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_10

    .line 484
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_28
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 486
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_2c
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 470
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 508
    return-void
.end method

.method public removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V
    .registers 6
    .param p1, "presenter"    # Lcom/android/internal/view/menu/MenuPresenter;

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 228
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuPresenter;

    .line 229
    .local v1, "item":Lcom/android/internal/view/menu/MenuPresenter;
    if-eqz v1, :cond_1c

    if-ne v1, p1, :cond_6

    .line 230
    :cond_1c
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 233
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 346
    if-nez p1, :cond_3

    .line 373
    :cond_2
    :goto_2
    return-void

    .line 350
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 353
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 354
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v3, :cond_38

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 356
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 357
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_26

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_26

    .line 358
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 360
    :cond_26
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 361
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 362
    .local v5, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 354
    .end local v5    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 366
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_38
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, "expandedId":I
    if-lez v0, :cond_2

    .line 368
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 369
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_2

    .line 370
    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_2
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 319
    const/4 v5, 0x0

    .line 321
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 322
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v2, :cond_44

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 324
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 325
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_32

    .line 326
    if-nez v5, :cond_20

    .line 327
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 329
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_20
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 330
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 331
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    :cond_32
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 335
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 336
    .local v3, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 322
    .end local v3    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 340
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_44
    if-eqz v5, :cond_4d

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 343
    :cond_4d
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 381
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1208
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 204
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 529
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 531
    .local v2, "group":I
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 532
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_33

    .line 533
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 534
    .local v1, "curItem":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_21

    .line 535
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_24

    .line 532
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 536
    :cond_24
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 539
    if-ne v1, p1, :cond_31

    const/4 v4, 0x1

    :goto_2d
    invoke-virtual {v1, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_21

    :cond_31
    const/4 v4, 0x0

    goto :goto_2d

    .line 542
    .end local v1    # "curItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_33
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 545
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 548
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 549
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 550
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 551
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 547
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 554
    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_20
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 574
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 576
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 577
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 578
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 579
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 576
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 582
    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 557
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 562
    .local v0, "N":I
    const/4 v1, 0x0

    .line 563
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_22

    .line 564
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 565
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1f

    .line 566
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    .line 563
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 570
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_22
    if-eqz v1, :cond_28

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 571
    :cond_28
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1163
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1164
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1151
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1152
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1139
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1140
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1127
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1128
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1175
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1176
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 1211
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1212
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 3
    .param p1, "isQwerty"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 667
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_5

    .line 710
    :goto_4
    return-void

    .line 708
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 960
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 962
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_d

    .line 963
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 964
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 966
    :cond_d
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_a

    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 957
    :cond_a
    return-void
.end method
