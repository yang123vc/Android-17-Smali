.class final Landroid/content/res/Resources$1;
.super Landroid/util/LongSparseArray;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LongSparseArray",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/util/LongSparseArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 5
    .param p1, "k"    # J
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 5
    .param p1, "k"    # J
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
