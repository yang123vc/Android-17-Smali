.class public abstract Landroid/support/v7/widget/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2440
    return-void
.end method


# virtual methods
.method abstract getAlignmentValue(Landroid/view/View;II)I
.end method

.method getBounds()Landroid/support/v7/widget/GridLayout$Bounds;
    .registers 3

    .prologue
    .line 2474
    new-instance v0, Landroid/support/v7/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$Bounds;-><init>(Landroid/support/v7/widget/GridLayout$1;)V

    return-object v0
.end method

.method abstract getGravityOffset(Landroid/view/View;I)I
.end method

.method getSizeInCell(Landroid/view/View;II)I
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "cellSize"    # I

    .prologue
    .line 2470
    return p2
.end method
