.class Landroid/graphics/Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private final mNativeCanvas:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "nativeCanvas"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    .line 96
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    if-eqz v0, :cond_9

    .line 102
    iget v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    # invokes: Landroid/graphics/Canvas;->finalizer(I)V
    invoke-static {v0}, Landroid/graphics/Canvas;->access$000(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 105
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 107
    return-void

    .line 105
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
