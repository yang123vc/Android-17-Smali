.class public abstract Landroid/support/v13/app/FragmentStatePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .registers 4
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 73
    iput-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 77
    iput-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 80
    iput-object p1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 81
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 130
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 132
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_10

    .line 133
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 137
    :cond_10
    :goto_10
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_1e

    .line 138
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 140
    :cond_1e
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 144
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 167
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 169
    :cond_11
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_14

    .line 99
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 100
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_14

    .line 125
    .end local v0    # "f":Landroid/app/Fragment;
    :goto_13
    return-object v0

    .line 105
    :cond_14
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v3, :cond_20

    .line 106
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 109
    :cond_20
    invoke-virtual {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 111
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_39

    .line 112
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment$SavedState;

    .line 113
    .local v2, "fss":Landroid/app/Fragment$SavedState;
    if-eqz v2, :cond_39

    .line 114
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 117
    .end local v2    # "fss":Landroid/app/Fragment$SavedState;
    :cond_39
    :goto_39
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_48

    .line 118
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 120
    :cond_48
    invoke-static {v1, v5}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 121
    invoke-static {v1, v5}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 122
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-object v0, v1

    .line 125
    goto :goto_13
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 14
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 200
    if-eqz p1, :cond_89

    move-object v0, p1

    .line 201
    check-cast v0, Landroid/os/Bundle;

    .line 202
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 203
    const-string v8, "states"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 204
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v8, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v8, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 206
    if-eqz v2, :cond_2a

    .line 207
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v8, v2

    if-ge v3, v8, :cond_2a

    .line 208
    iget-object v9, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v8, v2, v3

    check-cast v8, Landroid/app/Fragment$SavedState;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 211
    .end local v3    # "i":I
    :cond_2a
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 212
    .local v7, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 213
    .local v6, "key":Ljava/lang/String;
    const-string v8, "f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 214
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 215
    .local v5, "index":I
    iget-object v8, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v8, v0, v6}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 216
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_70

    .line 217
    :goto_57
    iget-object v8, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v5, :cond_66

    .line 218
    iget-object v8, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 220
    :cond_66
    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 221
    iget-object v8, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 223
    :cond_70
    const-string v8, "FragmentStatePagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad fragment at key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 228
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "index":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_89
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 8

    .prologue
    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_20

    .line 180
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 181
    .restart local v4    # "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/app/Fragment$SavedState;

    .line 182
    .local v1, "fss":[Landroid/app/Fragment$SavedState;
    iget-object v5, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    const-string v5, "states"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 185
    .end local v1    # "fss":[Landroid/app/Fragment$SavedState;
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget-object v5, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_55

    .line 186
    iget-object v5, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 187
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_52

    .line 188
    if-nez v4, :cond_3a

    .line 189
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 191
    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 185
    .end local v3    # "key":Ljava/lang/String;
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 195
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_55
    return-object v4
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 149
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_21

    .line 150
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_17

    .line 151
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 152
    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 154
    :cond_17
    if-eqz v0, :cond_1f

    .line 155
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 156
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 158
    :cond_1f
    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 160
    :cond_21
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    return-void
.end method
