.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 386
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 420
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 421
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 423
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .registers 4

    .prologue
    .line 1264
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_c

    .line 1265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 1269
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_2b
    return-void
.end method

.method public static reverseTransit(I)I
    .registers 2
    .param p0, "transit"    # I

    .prologue
    .line 1924
    const/4 v0, 0x0

    .line 1925
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_e

    .line 1936
    :goto_4
    return v0

    .line 1927
    :sswitch_5
    const/16 v0, 0x2002

    .line 1928
    goto :goto_4

    .line 1930
    :sswitch_8
    const/16 v0, 0x1001

    .line 1931
    goto :goto_4

    .line 1933
    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    .line 1925
    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 3
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 1941
    const/4 v0, -0x1

    .line 1942
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_18

    .line 1959
    :goto_4
    return v0

    .line 1944
    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 1947
    :goto_8
    goto :goto_4

    .line 1944
    :cond_9
    const/4 v0, 0x1

    goto :goto_8

    .line 1949
    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x2

    .line 1952
    :goto_e
    goto :goto_4

    .line 1949
    :cond_f
    const/4 v0, 0x3

    goto :goto_e

    .line 1954
    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x4

    :goto_14
    goto :goto_4

    :cond_15
    const/4 v0, 0x5

    goto :goto_14

    .line 1942
    nop

    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .registers 3
    .param p1, "state"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1414
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1417
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1419
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .registers 7
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1095
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1098
    :cond_c
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_28
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1100
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_48

    .line 1101
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1104
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_43

    .line 1105
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1107
    :cond_43
    if-eqz p2, :cond_48

    .line 1108
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 1111
    :cond_48
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 506
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 509
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .registers 7
    .param p1, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1294
    monitor-enter p0

    .line 1295
    :try_start_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4c

    .line 1296
    :cond_d
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_18

    .line 1297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1299
    :cond_18
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1300
    .local v0, "index":I
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_44

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_44
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    monitor-exit p0

    move v1, v0

    .line 1308
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_4b
    return v1

    .line 1305
    .end local v1    # "index":I
    :cond_4c
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1306
    .restart local v0    # "index":I
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_86

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_86
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1308
    monitor-exit p0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_4b

    .line 1310
    .end local v1    # "index":I
    :catchall_8e
    move-exception v2

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_8e

    throw v2
.end method

.method public attachActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1754
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1755
    :cond_a
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    .line 1756
    return-void
.end method

.method public attachFragment(Landroid/app/Fragment;II)V
    .registers 8
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 1197
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_1d
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3e

    .line 1199
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1200
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3e

    .line 1201
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1203
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_39

    .line 1204
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1206
    :cond_39
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1209
    :cond_3e
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .registers 2

    .prologue
    .line 432
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/app/Fragment;II)V
    .registers 8
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 1181
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_1d
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3c

    .line 1183
    iput-boolean v3, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1184
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3c

    .line 1186
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1187
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_36

    .line 1188
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1190
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1191
    invoke-virtual {p0, p1, v3, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1194
    :cond_3c
    return-void
.end method

.method public dispatchActivityCreated()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1768
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1769
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1770
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1798
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1799
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1800
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1801
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1802
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1799
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1806
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1890
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_2a

    .line 1891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1892
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1893
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_27

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_27

    iget-boolean v2, v0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-eqz v2, :cond_27

    .line 1894
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1895
    const/4 v2, 0x1

    .line 1900
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :goto_26
    return v2

    .line 1891
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "i":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1900
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2a
    const/4 v2, 0x0

    goto :goto_26
.end method

.method public dispatchCreate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1763
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1764
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1765
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1831
    const/4 v3, 0x0

    .line 1832
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 1833
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_36

    .line 1834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_36

    .line 1835
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1836
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_33

    iget-boolean v4, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v4, :cond_33

    iget-boolean v4, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_33

    iget-boolean v4, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_33

    .line 1837
    const/4 v3, 0x1

    .line 1838
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1839
    if-nez v2, :cond_30

    .line 1840
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    :cond_30
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1847
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_36
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    .line 1848
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3b
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_59

    .line 1849
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1850
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v2, :cond_53

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1851
    :cond_53
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    .line 1848
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1856
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_59
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 1858
    return v3
.end method

.method public dispatchDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1791
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1792
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1793
    invoke-virtual {p0, v1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1794
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    .line 1795
    return-void
.end method

.method public dispatchLowMemory()V
    .registers 4

    .prologue
    .line 1809
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1811
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1812
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1813
    invoke-virtual {v0}, Landroid/app/Fragment;->onLowMemory()V

    .line 1810
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1817
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1876
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    .line 1877
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1878
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1879
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2b

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2b

    .line 1880
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1881
    const/4 v2, 0x1

    .line 1886
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :goto_2a
    return v2

    .line 1877
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "i":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1886
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2e
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1904
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_29

    .line 1905
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1906
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1907
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_26

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_26

    iget-boolean v2, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_26

    iget-boolean v2, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_26

    .line 1908
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1905
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1912
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method public dispatchPause()V
    .registers 3

    .prologue
    .line 1783
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1784
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1862
    const/4 v2, 0x0

    .line 1863
    .local v2, "show":Z
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    .line 1864
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 1865
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1866
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_28

    iget-boolean v3, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v3, :cond_28

    iget-boolean v3, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_28

    iget-boolean v3, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_28

    .line 1867
    const/4 v2, 0x1

    .line 1868
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1864
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1872
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2b
    return v2
.end method

.method public dispatchResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1778
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1779
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1780
    return-void
.end method

.method public dispatchStart()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1773
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1774
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1775
    return-void
.end method

.method public dispatchStop()V
    .registers 3

    .prologue
    .line 1787
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1788
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 1820
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1822
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1823
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1824
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 1821
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1828
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_5d

    .line 576
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 577
    .local v0, "N":I
    if-lez v0, :cond_5d

    .line 578
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    if-ge v3, v0, :cond_5d

    .line 582
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 583
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 584
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 585
    if-eqz v2, :cond_5a

    .line 586
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 581
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 592
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_5d
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_96

    .line 593
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 594
    .restart local v0    # "N":I
    if-lez v0, :cond_96

    .line 595
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_72
    if-ge v3, v0, :cond_96

    .line 597
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 598
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 599
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 604
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_96
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_cf

    .line 605
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 606
    .restart local v0    # "N":I
    if-lez v0, :cond_cf

    .line 607
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_ab
    if-ge v3, v0, :cond_cf

    .line 609
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 610
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 611
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 616
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_cf
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_10b

    .line 617
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 618
    .restart local v0    # "N":I
    if-lez v0, :cond_10b

    .line 619
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e4
    if-ge v3, v0, :cond_10b

    .line 621
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 622
    .local v1, "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 623
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    .line 629
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_10b
    monitor-enter p0

    .line 630
    :try_start_10c
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_141

    .line 631
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 632
    .restart local v0    # "N":I
    if-lez v0, :cond_141

    .line 633
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_121
    if-ge v3, v0, :cond_141

    .line 635
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 636
    .restart local v1    # "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 637
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    .line 642
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_141
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_162

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_162

    .line 643
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    :cond_162
    monitor-exit p0
    :try_end_163
    .catchall {:try_start_10c .. :try_end_163} :catchall_198

    .line 648
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_19b

    .line 649
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 650
    .restart local v0    # "N":I
    if-lez v0, :cond_19b

    .line 651
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_178
    if-ge v3, v0, :cond_19b

    .line 653
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 654
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 655
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 652
    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    .line 646
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_198
    move-exception v6

    :try_start_199
    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    throw v6

    .line 660
    :cond_19b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 662
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 663
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 664
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_1d5

    .line 665
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 668
    :cond_1d5
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_1e6

    .line 669
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    :cond_1e6
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_207

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_207

    .line 673
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    :cond_207
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .registers 5
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1275
    if-nez p2, :cond_5

    .line 1276
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1278
    :cond_5
    monitor-enter p0

    .line 1279
    :try_start_6
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_15

    .line 1280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    .line 1282
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 1283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1285
    :cond_20
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 1287
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1288
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1290
    :cond_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_12

    .line 1291
    return-void
.end method

.method public execPendingActions()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1353
    iget-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v5, :cond_d

    .line 1354
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Recursive entry to executePendingTransactions"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1357
    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v6, v6, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_23

    .line 1358
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must be called from main thread of process"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1361
    :cond_23
    const/4 v0, 0x0

    .line 1366
    .local v0, "didSomething":Z
    :goto_24
    monitor-enter p0

    .line 1367
    :try_start_25
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_31

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_58

    .line 1368
    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_96

    .line 1389
    iget-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v5, :cond_a4

    .line 1390
    const/4 v3, 0x0

    .line 1391
    .local v3, "loadersRunning":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_9d

    .line 1392
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1393
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_55

    iget-object v5, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v5, :cond_55

    .line 1394
    iget-object v5, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v3, v5

    .line 1391
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1371
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "loadersRunning":Z
    :cond_58
    :try_start_58
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1372
    .local v4, "numActions":I
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v5, :cond_67

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v5, v5

    if-ge v5, v4, :cond_6b

    .line 1373
    :cond_67
    new-array v5, v4, [Ljava/lang/Runnable;

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1375
    :cond_6b
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1376
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1377
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v5, v5, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1378
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_58 .. :try_end_81} :catchall_96

    .line 1380
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1381
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_85
    if-ge v2, v4, :cond_99

    .line 1382
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1383
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 1381
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 1378
    .end local v2    # "i":I
    .end local v4    # "numActions":I
    :catchall_96
    move-exception v5

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v5

    .line 1385
    .restart local v2    # "i":I
    .restart local v4    # "numActions":I
    :cond_99
    iput-boolean v7, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1386
    const/4 v0, 0x1

    .line 1387
    goto :goto_24

    .line 1397
    .end local v4    # "numActions":I
    .restart local v3    # "loadersRunning":Z
    :cond_9d
    if-nez v3, :cond_a4

    .line 1398
    iput-boolean v7, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1399
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1402
    .end local v2    # "i":I
    .end local v3    # "loadersRunning":Z
    :cond_a4
    return v0
.end method

.method public executePendingTransactions()Z
    .registers 2

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 1212
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_3b

    .line 1214
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_20

    .line 1215
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1216
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1d

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1d

    .line 1228
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1c
    :goto_1c
    return-object v0

    .line 1214
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "i":I
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1221
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_20
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_28
    if-ltz v1, :cond_3b

    .line 1222
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1223
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_38

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_1c

    .line 1221
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 1228
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1232
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_45

    if-eqz p1, :cond_45

    .line 1234
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_26

    .line 1235
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1236
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_23

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1248
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_22
    :goto_22
    return-object v0

    .line 1234
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "i":I
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1241
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_26
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2e
    if-ltz v1, :cond_45

    .line 1242
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1243
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_42

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1241
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 1248
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_45
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 5
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 1252
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    if-eqz p1, :cond_26

    .line 1253
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_26

    .line 1254
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1255
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_23

    iget-object v2, v0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1260
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :goto_22
    return-object v0

    .line 1253
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "i":I
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1260
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public freeBackStackIndex(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 1339
    monitor-enter p0

    .line 1340
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1344
    :cond_12
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_2e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    monitor-exit p0

    .line 1347
    return-void

    .line 1346
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 501
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 530
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 531
    .local v1, "index":I
    if-ne v1, v2, :cond_9

    .line 532
    const/4 v0, 0x0

    .line 543
    :cond_8
    return-object v0

    .line 534
    :cond_9
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_34

    .line 535
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 538
    :cond_34
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 539
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_8

    .line 540
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hideFragment(Landroid/app/Fragment;II)V
    .registers 10
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    .line 1129
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1d

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_1d
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_4f

    .line 1131
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1132
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_3e

    .line 1133
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1135
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_50

    .line 1136
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1139
    move-object v1, p1

    .line 1140
    .local v1, "finalFragment":Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$6;

    invoke-direct {v2, p0, v1}, Landroid/app/FragmentManagerImpl$6;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1148
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1153
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "finalFragment":Landroid/app/Fragment;
    :cond_3e
    :goto_3e
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_4c

    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_4c

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_4c

    .line 1154
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1156
    :cond_4c
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1158
    :cond_4f
    return-void

    .line 1150
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_50
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3e
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 1916
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 1917
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1921
    :goto_e
    return-void

    .line 1919
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_e
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .registers 12
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 680
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    .line 682
    .local v1, "animObj":Landroid/animation/Animator;
    if-eqz v1, :cond_a

    .line 718
    .end local v1    # "animObj":Landroid/animation/Animator;
    :goto_9
    return-object v1

    .line 686
    .restart local v1    # "animObj":Landroid/animation/Animator;
    :cond_a
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    if-eqz v5, :cond_1a

    .line 687
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v6, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 688
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 689
    goto :goto_9

    .line 693
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1a
    if-nez p2, :cond_1e

    move-object v1, v4

    .line 694
    goto :goto_9

    .line 697
    :cond_1e
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v3

    .line 698
    .local v3, "styleIndex":I
    if-gez v3, :cond_26

    move-object v1, v4

    .line 699
    goto :goto_9

    .line 702
    :cond_26
    if-nez p4, :cond_3c

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 703
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget p4, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 705
    :cond_3c
    if-nez p4, :cond_40

    move-object v1, v4

    .line 706
    goto :goto_9

    .line 709
    :cond_40
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {v5, p4, v6}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 711
    .local v2, "attrs":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 712
    .local v0, "anim":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 714
    if-nez v0, :cond_54

    move-object v1, v4

    .line 715
    goto :goto_9

    .line 718
    :cond_54
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_9
.end method

.method makeActive(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1062
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1077
    :goto_4
    return-void

    .line 1066
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    .line 1067
    :cond_11
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1070
    :cond_1c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setIndex(I)V

    .line 1071
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1074
    :cond_2b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setIndex(I)V

    .line 1075
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1080
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1092
    :goto_4
    return-void

    .line 1084
    :cond_5
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_23
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_36

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1089
    :cond_36
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->invalidateFragmentIndex(I)V

    .line 1091
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    goto :goto_4
.end method

.method moveToState(IIIZ)V
    .registers 10
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    .line 1018
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_e

    if-eqz p1, :cond_e

    .line 1019
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No activity"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1022
    :cond_e
    if-nez p4, :cond_15

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v3, p1, :cond_15

    .line 1048
    :cond_14
    :goto_14
    return-void

    .line 1026
    :cond_15
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1027
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    .line 1028
    const/4 v2, 0x0

    .line 1029
    .local v2, "loadersRunning":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_40

    .line 1030
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1031
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_3d

    .line 1032
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1033
    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v3, :cond_3d

    .line 1034
    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1029
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1039
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_40
    if-nez v2, :cond_45

    .line 1040
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1043
    :cond_45
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_14

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_14

    .line 1044
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1045
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_14
.end method

.method moveToState(IZ)V
    .registers 4
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1014
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1015
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 1010
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1011
    return-void
.end method

.method moveToState(Landroid/app/Fragment;III)V
    .registers 12
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I

    .prologue
    .line 735
    iget-boolean v4, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v4, :cond_8

    const/4 v4, 0x1

    if-le p2, v4, :cond_8

    .line 736
    const/4 p2, 0x1

    .line 738
    :cond_8
    iget-boolean v4, p1, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_12

    iget v4, p1, Landroid/app/Fragment;->mState:I

    if-le p2, v4, :cond_12

    .line 740
    iget p2, p1, Landroid/app/Fragment;->mState:I

    .line 744
    :cond_12
    iget-boolean v4, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v4, :cond_1f

    iget v4, p1, Landroid/app/Fragment;->mState:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1f

    const/4 v4, 0x3

    if-le p2, v4, :cond_1f

    .line 745
    const/4 p2, 0x3

    .line 747
    :cond_1f
    iget v4, p1, Landroid/app/Fragment;->mState:I

    if-ge v4, p2, :cond_2ad

    .line 751
    iget-boolean v4, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_2c

    iget-boolean v4, p1, Landroid/app/Fragment;->mInLayout:Z

    if-nez v4, :cond_2c

    .line 1007
    :goto_2b
    return-void

    .line 754
    :cond_2c
    iget-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v4, :cond_3a

    .line 759
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 760
    iget v4, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 762
    :cond_3a
    iget v4, p1, Landroid/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_48c

    .line 1006
    :cond_3f
    :goto_3f
    iput p2, p1, Landroid/app/Fragment;->mState:I

    goto :goto_2b

    .line 764
    :pswitch_42
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_5f

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_5f
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v4, :cond_9c

    .line 766
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 768
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    invoke-virtual {p0, v4, v5}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 770
    iget-object v4, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v4, :cond_86

    .line 771
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_req_state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 774
    :cond_86
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:user_visible_hint"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 776
    iget-boolean v4, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v4, :cond_9c

    .line 777
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 778
    const/4 v4, 0x3

    if-le p2, v4, :cond_9c

    .line 779
    const/4 p2, 0x3

    .line 783
    :cond_9c
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iput-object v4, p1, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    .line 784
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v4, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 785
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 786
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 787
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_d1

    .line 788
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onAttach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 791
    :cond_d1
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 793
    iget-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_105

    .line 794
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 795
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 796
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_105

    .line 797
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onCreate()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 801
    :cond_105
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    .line 802
    iget-boolean v4, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_137

    .line 806
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5, v6}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 808
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_137

    .line 809
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 810
    iget-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_130

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 811
    :cond_130
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 815
    :cond_137
    :pswitch_137
    const/4 v4, 0x1

    if-le p2, v4, :cond_210

    .line 816
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_157

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_157
    iget-boolean v4, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v4, :cond_1db

    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, "container":Landroid/view/ViewGroup;
    iget v4, p1, Landroid/app/Fragment;->mContainerId:I

    if-eqz v4, :cond_199

    .line 820
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v5, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 821
    .restart local v1    # "container":Landroid/view/ViewGroup;
    if-nez v1, :cond_199

    iget-boolean v4, p1, Landroid/app/Fragment;->mRestored:Z

    if-nez v4, :cond_199

    .line 822
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No view found for id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_199
    iput-object v1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 828
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v1, v5}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 830
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_1db

    .line 831
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 832
    if-eqz v1, :cond_1c9

    .line 833
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 835
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_1c4

    .line 836
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 837
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 839
    :cond_1c4
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 841
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1c9
    iget-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_1d4

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 842
    :cond_1d4
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 846
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_1db
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 847
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 848
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_206

    .line 849
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onActivityCreated()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 852
    :cond_206
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_20d

    .line 853
    invoke-virtual {p1}, Landroid/app/Fragment;->restoreViewState()V

    .line 855
    :cond_20d
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 859
    :cond_210
    :pswitch_210
    const/4 v4, 0x3

    if-le p2, v4, :cond_259

    .line 860
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_230

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_230
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 862
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    .line 863
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_259

    .line 864
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 869
    :cond_259
    :pswitch_259
    const/4 v4, 0x4

    if-le p2, v4, :cond_3f

    .line 870
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_279

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_279
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 872
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/app/Fragment;->mResumed:Z

    .line 873
    invoke-virtual {p1}, Landroid/app/Fragment;->onResume()V

    .line 874
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_2a5

    .line 875
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onResume()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 879
    :cond_2a5
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 880
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_3f

    .line 883
    :cond_2ad
    iget v4, p1, Landroid/app/Fragment;->mState:I

    if-le v4, p2, :cond_3f

    .line 884
    iget v4, p1, Landroid/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_49a

    goto/16 :goto_3f

    .line 957
    :cond_2b8
    :goto_2b8
    :pswitch_2b8
    const/4 v4, 0x1

    if-ge p2, v4, :cond_3f

    .line 958
    iget-boolean v4, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_2cb

    .line 959
    iget-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v4, :cond_2cb

    .line 966
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 967
    .restart local v0    # "anim":Landroid/animation/Animator;
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 968
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 971
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2cb
    iget-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v4, :cond_408

    .line 976
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 977
    const/4 p2, 0x1

    goto/16 :goto_3f

    .line 886
    :pswitch_2d4
    const/4 v4, 0x5

    if-ge p2, v4, :cond_320

    .line 887
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_2f4

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2f4
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 889
    invoke-virtual {p1}, Landroid/app/Fragment;->onPause()V

    .line 890
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_31d

    .line 891
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 894
    :cond_31d
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mResumed:Z

    .line 897
    :cond_320
    :pswitch_320
    const/4 v4, 0x4

    if-ge p2, v4, :cond_369

    .line 898
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_340

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_340
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 900
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    .line 901
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_369

    .line 902
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStop()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 908
    :cond_369
    :pswitch_369
    const/4 v4, 0x2

    if-ge p2, v4, :cond_2b8

    .line 909
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_389

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_389
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_39c

    .line 913
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_39c

    iget-object v4, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_39c

    .line 914
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 917
    :cond_39c
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 918
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    .line 919
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_3c5

    .line 920
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroyView()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 923
    :cond_3c5
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_400

    iget-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_400

    .line 924
    const/4 v0, 0x0

    .line 925
    .restart local v0    # "anim":Landroid/animation/Animator;
    iget v4, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v4, :cond_3db

    iget-boolean v4, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v4, :cond_3db

    .line 926
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 929
    :cond_3db
    if-eqz v0, :cond_3f9

    .line 930
    iget-object v1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 931
    .restart local v1    # "container":Landroid/view/ViewGroup;
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 932
    .local v3, "view":Landroid/view/View;
    move-object v2, p1

    .line 933
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 934
    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 935
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 936
    new-instance v4, Landroid/app/FragmentManagerImpl$5;

    invoke-direct {v4, p0, v1, v3, v2}, Landroid/app/FragmentManagerImpl$5;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 947
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 948
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 951
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    :cond_3f9
    iget-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 953
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_400
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 954
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_2b8

    .line 979
    :cond_408
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_425

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_425
    iget-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_452

    .line 981
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 982
    invoke-virtual {p1}, Landroid/app/Fragment;->onDestroy()V

    .line 983
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_452

    .line 984
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroy()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 989
    :cond_452
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 990
    invoke-virtual {p1}, Landroid/app/Fragment;->onDetach()V

    .line 991
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_47b

    .line 992
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDetach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 995
    :cond_47b
    iget-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_484

    .line 996
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto/16 :goto_3f

    .line 998
    :cond_484
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    .line 999
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    goto/16 :goto_3f

    .line 762
    :pswitch_data_48c
    .packed-switch 0x0
        :pswitch_42
        :pswitch_137
        :pswitch_210
        :pswitch_210
        :pswitch_259
    .end packed-switch

    .line 884
    :pswitch_data_49a
    .packed-switch 0x1
        :pswitch_2b8
        :pswitch_369
        :pswitch_369
        :pswitch_320
        :pswitch_2d4
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .registers 2

    .prologue
    .line 1759
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1760
    return-void
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_c

    .line 723
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_d

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 731
    :cond_c
    :goto_c
    return-void

    .line 728
    :cond_d
    iput-boolean v1, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 729
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    goto :goto_c
.end method

.method public popBackStack()V
    .registers 3

    .prologue
    .line 442
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 447
    return-void
.end method

.method public popBackStack(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 474
    if-gez p1, :cond_1b

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1b
    new-instance v0, Landroid/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$4;-><init>(Landroid/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 482
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 458
    new-instance v0, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 463
    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 5

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 452
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 453
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 486
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 487
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 488
    if-gez p1, :cond_21

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_21
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 467
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 468
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 469
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .registers 16
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1422
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v6, :cond_7

    .line 1481
    :cond_6
    :goto_6
    return v9

    .line 1425
    :cond_7
    if-nez p2, :cond_29

    if-gez p3, :cond_29

    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_29

    .line 1426
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1427
    .local v4, "last":I
    if-ltz v4, :cond_6

    .line 1430
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1431
    .local v1, "bss":Landroid/app/BackStackRecord;
    invoke-virtual {v1, v8}, Landroid/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1432
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .end local v1    # "bss":Landroid/app/BackStackRecord;
    .end local v4    # "last":I
    :goto_27
    move v9, v8

    .line 1481
    goto :goto_6

    .line 1434
    :cond_29
    const/4 v3, -0x1

    .line 1435
    .local v3, "index":I
    if-nez p2, :cond_2e

    if-ltz p3, :cond_7c

    .line 1438
    :cond_2e
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1439
    :goto_36
    if-ltz v3, :cond_4c

    .line 1440
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1441
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_73

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1449
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_4c
    if-ltz v3, :cond_6

    .line 1452
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_7c

    .line 1453
    add-int/lit8 v3, v3, -0x1

    .line 1455
    :goto_54
    if-ltz v3, :cond_7c

    .line 1456
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1457
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_6a

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    :cond_6a
    if-ltz p3, :cond_7c

    iget v6, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p3, v6, :cond_7c

    .line 1459
    :cond_70
    add-int/lit8 v3, v3, -0x1

    .line 1460
    goto :goto_54

    .line 1444
    :cond_73
    if-ltz p3, :cond_79

    iget v6, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-eq p3, v6, :cond_4c

    .line 1447
    :cond_79
    add-int/lit8 v3, v3, -0x1

    .line 1448
    goto :goto_36

    .line 1466
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_7c
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_6

    .line 1469
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    .local v5, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_93
    if-le v2, v3, :cond_a1

    .line 1472
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    add-int/lit8 v2, v2, -0x1

    goto :goto_93

    .line 1474
    :cond_a1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1475
    .local v0, "LAST":I
    const/4 v2, 0x0

    :goto_a8
    if-gt v2, v0, :cond_db

    .line 1476
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_ca

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Popping back stack state: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_ca
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BackStackRecord;

    if-ne v2, v0, :cond_d9

    move v7, v8

    :goto_d3
    invoke-virtual {v6, v7}, Landroid/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1475
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_d9
    move v7, v9

    .line 1477
    goto :goto_d3

    .line 1479
    :cond_db
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_27
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 521
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_23

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_23
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;II)V
    .registers 10
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1114
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2b

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nesting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_2b
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_51

    move v0, v1

    .line 1116
    .local v0, "inactive":Z
    :goto_32
    iget-boolean v3, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_38

    if-eqz v0, :cond_50

    .line 1117
    :cond_38
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1118
    iget-boolean v3, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_47

    iget-boolean v3, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_47

    .line 1119
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1121
    :cond_47
    iput-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1122
    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1123
    if-eqz v0, :cond_53

    :goto_4d
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1126
    :cond_50
    return-void

    .end local v0    # "inactive":Z
    :cond_51
    move v0, v2

    .line 1115
    goto :goto_32

    .restart local v0    # "inactive":Z
    :cond_53
    move v2, v1

    .line 1123
    goto :goto_4d
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 514
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 515
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 517
    :cond_9
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    .prologue
    .line 1406
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 1407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1408
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1407
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1411
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .registers 13
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nonConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1651
    if-nez p1, :cond_5

    .line 1751
    :cond_4
    :goto_4
    return-void

    :cond_5
    move-object v2, p1

    .line 1652
    check-cast v2, Landroid/app/FragmentManagerState;

    .line 1653
    .local v2, "fms":Landroid/app/FragmentManagerState;
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-eqz v5, :cond_4

    .line 1657
    if-eqz p2, :cond_66

    .line 1658
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_66

    .line 1659
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1660
    .local v1, "f":Landroid/app/Fragment;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_38

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_38
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    iget v6, v1, Landroid/app/Fragment;->mIndex:I

    aget-object v3, v5, v6

    .line 1662
    .local v3, "fs":Landroid/app/FragmentState;
    iput-object v1, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1663
    iput-object v8, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1664
    iput v9, v1, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1665
    iput-boolean v9, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 1666
    iput-boolean v9, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1667
    iput-object v8, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1668
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_63

    .line 1669
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1670
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v6, "android:view_state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1658
    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1678
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v3    # "fs":Landroid/app/FragmentState;
    .end local v4    # "i":I
    :cond_66
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1679
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_79

    .line 1680
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1682
    :cond_79
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7a
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_116

    .line 1683
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v3, v5, v4

    .line 1684
    .restart local v3    # "fs":Landroid/app/FragmentState;
    if-eqz v3, :cond_bc

    .line 1685
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/FragmentState;->instantiate(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v1

    .line 1686
    .restart local v1    # "f":Landroid/app/Fragment;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_b2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_b2
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    iput-object v8, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1682
    .end local v1    # "f":Landroid/app/Fragment;
    :goto_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 1693
    :cond_bc
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_df

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": (null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_df
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_ef

    .line 1696
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1698
    :cond_ef
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_10c

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding avail #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_10c
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b9

    .line 1704
    .end local v3    # "fs":Landroid/app/FragmentState;
    :cond_116
    if-eqz p2, :cond_169

    .line 1705
    const/4 v4, 0x0

    :goto_119
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_169

    .line 1706
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1707
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v5, v1, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_13f

    .line 1708
    iget v5, v1, Landroid/app/Fragment;->mTargetIndex:I

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_142

    .line 1709
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v6, v1, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    iput-object v5, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1705
    :cond_13f
    :goto_13f
    add-int/lit8 v4, v4, 0x1

    goto :goto_119

    .line 1711
    :cond_142
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iput-object v8, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    goto :goto_13f

    .line 1720
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_169
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v5, :cond_1da

    .line 1721
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1722
    const/4 v4, 0x0

    :goto_178
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1dc

    .line 1723
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1724
    .restart local v1    # "f":Landroid/app/Fragment;
    if-nez v1, :cond_1a8

    .line 1725
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No instantiated fragment for index #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1728
    :cond_1a8
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1729
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1d2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: making added #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_1d2
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    add-int/lit8 v4, v4, 0x1

    goto :goto_178

    .line 1733
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_1da
    iput-object v8, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1737
    :cond_1dc
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v5, :cond_23c

    .line 1738
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1739
    const/4 v4, 0x0

    :goto_1eb
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 1740
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v5, v5, v4

    invoke-virtual {v5, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v0

    .line 1741
    .local v0, "bse":Landroid/app/BackStackRecord;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_22b

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding bse #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_22b
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    iget v5, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_239

    .line 1745
    iget v5, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 1739
    :cond_239
    add-int/lit8 v4, v4, 0x1

    goto :goto_1eb

    .line 1749
    .end local v0    # "bse":Landroid/app/BackStackRecord;
    :cond_23c
    iput-object v8, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto/16 :goto_4
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1485
    const/4 v1, 0x0

    .line 1486
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_38

    .line 1487
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 1488
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1489
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_33

    iget-boolean v3, v0, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_33

    .line 1490
    if-nez v1, :cond_23

    .line 1491
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    .restart local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    :cond_23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/app/Fragment;->mRetaining:Z

    .line 1495
    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v3, :cond_36

    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v3, v3, Landroid/app/Fragment;->mIndex:I

    :goto_31
    iput v3, v0, Landroid/app/Fragment;->mTargetIndex:I

    .line 1487
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1495
    :cond_36
    const/4 v3, -0x1

    goto :goto_31

    .line 1499
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v2    # "i":I
    :cond_38
    return-object v1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 19

    .prologue
    .line 1554
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1556
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1558
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_1a

    .line 1559
    :cond_18
    const/4 v6, 0x0

    .line 1645
    :goto_19
    return-object v6

    .line 1563
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1564
    .local v1, "N":I
    new-array v2, v1, [Landroid/app/FragmentState;

    .line 1565
    .local v2, "active":[Landroid/app/FragmentState;
    const/4 v8, 0x0

    .line 1566
    .local v8, "haveFragments":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_26
    if-ge v9, v1, :cond_ee

    .line 1567
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 1568
    .local v5, "f":Landroid/app/Fragment;
    if-eqz v5, :cond_e5

    .line 1569
    const/4 v8, 0x1

    .line 1571
    new-instance v7, Landroid/app/FragmentState;

    invoke-direct {v7, v5}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 1572
    .local v7, "fs":Landroid/app/FragmentState;
    aput-object v7, v2, v9

    .line 1574
    iget v11, v5, Landroid/app/Fragment;->mState:I

    if-lez v11, :cond_e9

    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_e9

    .line 1575
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v11

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1577
    iget-object v11, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v11, :cond_bd

    .line 1578
    iget-object v11, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v11, v11, Landroid/app/Fragment;->mIndex:I

    if-gez v11, :cond_9a

    .line 1579
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has target not in fragment manager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1581
    .local v10, "msg":Ljava/lang/String;
    const-string v11, "FragmentManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const-string v11, "  "

    const/4 v12, 0x0

    new-instance v13, Ljava/io/PrintWriter;

    new-instance v14, Landroid/util/LogWriter;

    const/4 v15, 0x6

    const-string v16, "FragmentManager"

    const/16 v17, 0x3

    invoke-direct/range {v14 .. v17}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    invoke-direct {v13, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1584
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1586
    .end local v10    # "msg":Ljava/lang/String;
    :cond_9a
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_a5

    .line 1587
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1589
    :cond_a5
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_state"

    iget-object v13, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 1591
    iget v11, v5, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v11, :cond_bd

    .line 1592
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_req_state"

    iget v13, v5, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1602
    :cond_bd
    :goto_bd
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_e5

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Saved state of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    .end local v7    # "fs":Landroid/app/FragmentState;
    :cond_e5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_26

    .line 1599
    .restart local v7    # "fs":Landroid/app/FragmentState;
    :cond_e9
    iget-object v11, v5, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_bd

    .line 1607
    .end local v5    # "f":Landroid/app/Fragment;
    .end local v7    # "fs":Landroid/app/FragmentState;
    :cond_ee
    if-nez v8, :cond_ff

    .line 1608
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_fc

    const-string v11, "FragmentManager"

    const-string/jumbo v12, "saveAllState: no fragments!"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_fc
    const/4 v6, 0x0

    goto/16 :goto_19

    .line 1612
    :cond_ff
    const/4 v3, 0x0

    .line 1613
    .local v3, "added":[I
    const/4 v4, 0x0

    .line 1616
    .local v4, "backStack":[Landroid/app/BackStackState;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v11, :cond_156

    .line 1617
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1618
    if-lez v1, :cond_156

    .line 1619
    new-array v3, v1, [I

    .line 1620
    const/4 v9, 0x0

    :goto_114
    if-ge v9, v1, :cond_156

    .line 1621
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Fragment;

    iget v11, v11, Landroid/app/Fragment;->mIndex:I

    aput v11, v3, v9

    .line 1622
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_153

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveAllState: adding fragment #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_153
    add-int/lit8 v9, v9, 0x1

    goto :goto_114

    .line 1629
    :cond_156
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v11, :cond_1b0

    .line 1630
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1631
    if-lez v1, :cond_1b0

    .line 1632
    new-array v4, v1, [Landroid/app/BackStackState;

    .line 1633
    const/4 v9, 0x0

    :goto_169
    if-ge v9, v1, :cond_1b0

    .line 1634
    new-instance v12, Landroid/app/BackStackState;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/BackStackRecord;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v12, v4, v9

    .line 1635
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_1ad

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveAllState: adding back stack #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_1ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_169

    .line 1641
    :cond_1b0
    new-instance v6, Landroid/app/FragmentManagerState;

    invoke-direct {v6}, Landroid/app/FragmentManagerState;-><init>()V

    .line 1642
    .local v6, "fms":Landroid/app/FragmentManagerState;
    iput-object v2, v6, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 1643
    iput-object v3, v6, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 1644
    iput-object v4, v6, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    goto/16 :goto_19
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .registers 5
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1519
    const/4 v0, 0x0

    .line 1521
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_c

    .line 1522
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1524
    :cond_c
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1525
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1526
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1527
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1530
    :cond_1e
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 1531
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1533
    :cond_25
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_37

    .line 1534
    if-nez v0, :cond_30

    .line 1535
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1537
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_30
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1540
    :cond_37
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_49

    .line 1541
    if-nez v0, :cond_42

    .line 1542
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1545
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_42
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1548
    :cond_49
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 548
    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v2, :cond_24

    .line 549
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_24
    iget v2, p1, Landroid/app/Fragment;->mState:I

    if-lez v2, :cond_33

    .line 553
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 554
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_33

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 556
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_33
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1503
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1516
    :cond_4
    :goto_4
    return-void

    .line 1506
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1507
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1511
    :goto_10
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1512
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1513
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_4

    .line 1509
    :cond_27
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_10
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1314
    monitor-enter p0

    .line 1315
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_c

    .line 1316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1318
    :cond_c
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1319
    .local v0, "N":I
    if-ge p1, v0, :cond_41

    .line 1320
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3a

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_3a
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1335
    :goto_3f
    monitor-exit p0

    .line 1336
    return-void

    .line 1323
    :cond_41
    :goto_41
    if-ge v0, p1, :cond_7c

    .line 1324
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_54

    .line 1326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1328
    :cond_54
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_70

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_70
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 1332
    :cond_7c
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_a2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1335
    .end local v0    # "N":I
    :catchall_a8
    move-exception v1

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    throw v1
.end method

.method public showFragment(Landroid/app/Fragment;II)V
    .registers 10
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1161
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_1f
    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_4d

    .line 1163
    iput-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1164
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3c

    .line 1165
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1167
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_37

    .line 1168
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1169
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1171
    :cond_37
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3c
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_4a

    .line 1174
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1176
    :cond_4a
    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1178
    :cond_4d
    return-void
.end method

.method startPendingDeferredFragments()V
    .registers 4

    .prologue
    .line 1051
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 1059
    :cond_4
    return-void

    .line 1053
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1054
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1055
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1b

    .line 1056
    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1053
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 562
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 566
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
