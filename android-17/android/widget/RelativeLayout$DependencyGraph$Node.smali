.class Landroid/widget/RelativeLayout$DependencyGraph$Node;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout$DependencyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0x64

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final dependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field final dependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPooled:Z

.field private mNext:Landroid/widget/RelativeLayout$DependencyGraph$Node;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1436
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph$Node$1;

    invoke-direct {v0}, Landroid/widget/RelativeLayout$DependencyGraph$Node$1;-><init>()V

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pool;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    .line 1428
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    return-void
.end method

.method static acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1470
    sget-object v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pool;

    invoke-interface {v1}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1471
    .local v0, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iput-object p0, v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1473
    return-object v0
.end method


# virtual methods
.method public getNextPoolable()Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->mNext:Landroid/widget/RelativeLayout$DependencyGraph$Node;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1413
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->getNextPoolable()Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .registers 2

    .prologue
    .line 1462
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->mIsPooled:Z

    return v0
.end method

.method release()V
    .registers 2

    .prologue
    .line 1477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1478
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1479
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1481
    sget-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 1482
    return-void
.end method

.method public setNextPoolable(Landroid/widget/RelativeLayout$DependencyGraph$Node;)V
    .registers 2
    .param p1, "element"    # Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .prologue
    .line 1454
    iput-object p1, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->mNext:Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1455
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1413
    check-cast p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->setNextPoolable(Landroid/widget/RelativeLayout$DependencyGraph$Node;)V

    return-void
.end method

.method public setPooled(Z)V
    .registers 2
    .param p1, "isPooled"    # Z

    .prologue
    .line 1466
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->mIsPooled:Z

    .line 1467
    return-void
.end method
