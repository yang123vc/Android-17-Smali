.class Landroid/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2049
    invoke-virtual {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 2050
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/GridLayout$1;

    .prologue
    .line 2043
    invoke-direct {p0}, Landroid/widget/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/view/View;Landroid/widget/GridLayout$Alignment;I)I
    .registers 6
    .param p1, "c"    # Landroid/view/View;
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p3, "size"    # I

    .prologue
    .line 2073
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {p2, p1, p3}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .registers 4
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2059
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2060
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2061
    return-void
.end method

.method protected final include(Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout;Landroid/widget/GridLayout$Axis;)V
    .registers 10
    .param p1, "c"    # Landroid/view/View;
    .param p2, "spec"    # Landroid/widget/GridLayout$Spec;
    .param p3, "gridLayout"    # Landroid/widget/GridLayout;
    .param p4, "axis"    # Landroid/widget/GridLayout$Axis;

    .prologue
    .line 2077
    iget v3, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p2}, Landroid/widget/GridLayout$Spec;->getFlexibility()I

    move-result v4

    and-int/2addr v3, v4

    iput v3, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2078
    iget-boolean v3, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, p1, v3}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v2

    .line 2079
    .local v2, "size":I
    iget-object v3, p2, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget-boolean v4, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, v3, v4}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    .line 2081
    .local v0, "alignment":Landroid/widget/GridLayout$Alignment;
    invoke-virtual {v0, p1, v2}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    .line 2082
    .local v1, "before":I
    sub-int v3, v2, v1

    invoke-virtual {p0, v1, v3}, Landroid/widget/GridLayout$Bounds;->include(II)V

    .line 2083
    return-void
.end method

.method protected reset()V
    .registers 2

    .prologue
    const/high16 v0, -0x80000000

    .line 2053
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2054
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2055
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2056
    return-void
.end method

.method protected size(Z)I
    .registers 4
    .param p1, "min"    # Z

    .prologue
    .line 2064
    if-nez p1, :cond_e

    .line 2065
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Landroid/widget/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2066
    const v0, 0x186a0

    .line 2069
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
