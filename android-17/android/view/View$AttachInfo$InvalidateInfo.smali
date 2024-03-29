.class Landroid/view/View$AttachInfo$InvalidateInfo;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$AttachInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/View$AttachInfo$InvalidateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0xa

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bottom:I

.field left:I

.field private mIsPooled:Z

.field private mNext:Landroid/view/View$AttachInfo$InvalidateInfo;

.field right:I

.field target:Landroid/view/View;

.field top:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14395
    new-instance v0, Landroid/view/View$AttachInfo$InvalidateInfo$1;

    invoke-direct {v0}, Landroid/view/View$AttachInfo$InvalidateInfo$1;-><init>()V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pool;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 14393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire()Landroid/view/View$AttachInfo$InvalidateInfo;
    .registers 1

    .prologue
    .line 14429
    sget-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    return-object v0
.end method


# virtual methods
.method public getNextPoolable()Landroid/view/View$AttachInfo$InvalidateInfo;
    .registers 2

    .prologue
    .line 14425
    iget-object v0, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mNext:Landroid/view/View$AttachInfo$InvalidateInfo;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14393
    invoke-virtual {p0}, Landroid/view/View$AttachInfo$InvalidateInfo;->getNextPoolable()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .registers 2

    .prologue
    .line 14437
    iget-boolean v0, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mIsPooled:Z

    return v0
.end method

.method release()V
    .registers 2

    .prologue
    .line 14433
    sget-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 14434
    return-void
.end method

.method public setNextPoolable(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 2
    .param p1, "element"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 14421
    iput-object p1, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mNext:Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 14422
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14393
    check-cast p1, Landroid/view/View$AttachInfo$InvalidateInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$AttachInfo$InvalidateInfo;->setNextPoolable(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public setPooled(Z)V
    .registers 2
    .param p1, "isPooled"    # Z

    .prologue
    .line 14441
    iput-boolean p1, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mIsPooled:Z

    .line 14442
    return-void
.end method
