.class final Landroid/view/View$AttachInfo$InvalidateInfo$1;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$AttachInfo$InvalidateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/PoolableManager",
        "<",
        "Landroid/view/View$AttachInfo$InvalidateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .registers 2

    .prologue
    .line 14396
    invoke-virtual {p0}, Landroid/view/View$AttachInfo$InvalidateInfo$1;->newInstance()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/view/View$AttachInfo$InvalidateInfo;
    .registers 2

    .prologue
    .line 14398
    new-instance v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    invoke-direct {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .registers 2
    .param p1, "x0"    # Landroid/util/Poolable;

    .prologue
    .line 14396
    check-cast p1, Landroid/view/View$AttachInfo$InvalidateInfo;

    .end local p1    # "x0":Landroid/util/Poolable;
    invoke-virtual {p0, p1}, Landroid/view/View$AttachInfo$InvalidateInfo$1;->onAcquired(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public onAcquired(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 2
    .param p1, "element"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 14402
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .registers 2
    .param p1, "x0"    # Landroid/util/Poolable;

    .prologue
    .line 14396
    check-cast p1, Landroid/view/View$AttachInfo$InvalidateInfo;

    .end local p1    # "x0":Landroid/util/Poolable;
    invoke-virtual {p0, p1}, Landroid/view/View$AttachInfo$InvalidateInfo$1;->onReleased(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public onReleased(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 3
    .param p1, "element"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 14405
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 14406
    return-void
.end method
