.class Landroid/app/ContextImpl$ServiceFetcher;
.super Ljava/lang/Object;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceFetcher"
.end annotation


# instance fields
.field mContextCacheIndex:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 7
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 181
    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:Ljava/util/ArrayList;

    .line 183
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    monitor-enter v0

    .line 184
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_17

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    # getter for: Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I
    invoke-static {}, Landroid/app/ContextImpl;->access$000()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 190
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 193
    .end local v1    # "i":I
    :cond_17
    iget v4, p0, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "service":Ljava/lang/Object;
    if-eqz v2, :cond_22

    .line 195
    monitor-exit v0

    move-object v3, v2

    .line 200
    .end local v2    # "service":Ljava/lang/Object;
    .local v3, "service":Ljava/lang/Object;
    :goto_21
    return-object v3

    .line 198
    .end local v3    # "service":Ljava/lang/Object;
    :cond_22
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl$ServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    .restart local v2    # "service":Ljava/lang/Object;
    iget v4, p0, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v0

    move-object v3, v2

    .end local v2    # "service":Ljava/lang/Object;
    .restart local v3    # "service":Ljava/lang/Object;
    goto :goto_21

    .line 201
    .end local v3    # "service":Ljava/lang/Object;
    :catchall_2e
    move-exception v4

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v4
.end method
