.class final Landroid/view/VelocityTracker$1;
.super Ljava/lang/Object;
.source "VelocityTracker.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
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
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/view/VelocityTracker$1;->newInstance()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/view/VelocityTracker;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/VelocityTracker;-><init>(Landroid/view/VelocityTracker$1;)V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .registers 2
    .param p1, "x0"    # Landroid/util/Poolable;

    .prologue
    .line 36
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1    # "x0":Landroid/util/Poolable;
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker$1;->onAcquired(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method public onAcquired(Landroid/view/VelocityTracker;)V
    .registers 2
    .param p1, "element"    # Landroid/view/VelocityTracker;

    .prologue
    .line 42
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .registers 2
    .param p1, "x0"    # Landroid/util/Poolable;

    .prologue
    .line 36
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1    # "x0":Landroid/util/Poolable;
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker$1;->onReleased(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method public onReleased(Landroid/view/VelocityTracker;)V
    .registers 2
    .param p1, "element"    # Landroid/view/VelocityTracker;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 46
    return-void
.end method
