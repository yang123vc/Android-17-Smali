.class public Landroid/database/DataSetObservable;
.super Landroid/database/Observable;
.source "DataSetObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/database/DataSetObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .registers 4

    .prologue
    .line 29
    iget-object v2, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 34
    :try_start_3
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 35
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 34
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 37
    :cond_1b
    monitor-exit v2

    .line 38
    return-void

    .line 37
    .end local v0    # "i":I
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public notifyInvalidated()V
    .registers 4

    .prologue
    .line 45
    iget-object v2, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 46
    :try_start_3
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 47
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 49
    :cond_1b
    monitor-exit v2

    .line 50
    return-void

    .line 49
    .end local v0    # "i":I
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
