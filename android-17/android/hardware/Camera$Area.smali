.class public Landroid/hardware/Camera$Area;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .prologue
    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    iput-object p1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 1391
    iput p2, p0, Landroid/hardware/Camera$Area;->weight:I

    .line 1392
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1402
    instance-of v2, p1, Landroid/hardware/Camera$Area;

    if-nez v2, :cond_6

    .line 1411
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 1405
    check-cast v0, Landroid/hardware/Camera$Area;

    .line 1406
    .local v0, "a":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_19

    .line 1407
    iget-object v2, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_5

    .line 1411
    :cond_11
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    iget v3, v0, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    .line 1409
    :cond_19
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5
.end method
