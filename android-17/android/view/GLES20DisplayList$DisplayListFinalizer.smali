.class Landroid/view/GLES20DisplayList$DisplayListFinalizer;
.super Ljava/lang/Object;
.source "GLES20DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20DisplayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayListFinalizer"
.end annotation


# instance fields
.field final mNativeDisplayList:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "nativeDisplayList"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

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
    iget v0, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->destroyDisplayList(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 105
    return-void

    .line 103
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
