.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;
.source "PaintFlagsDrawFilter.java"


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "clearBits"    # I
    .param p2, "setBits"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    .line 32
    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/PaintFlagsDrawFilter;->mNativeInt:I

    .line 33
    return-void
.end method

.method private static native nativeConstructor(II)I
.end method
