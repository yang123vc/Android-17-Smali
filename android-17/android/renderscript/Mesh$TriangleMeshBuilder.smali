.class public Landroid/renderscript/Mesh$TriangleMeshBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleMeshBuilder"
.end annotation


# static fields
.field public static final COLOR:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final TEXTURE_0:I = 0x100


# instance fields
.field mA:F

.field mB:F

.field mElement:Landroid/renderscript/Element;

.field mFlags:I

.field mG:F

.field mIndexCount:I

.field mIndexData:[S

.field mNX:F

.field mNY:F

.field mNZ:F

.field mR:F

.field mRS:Landroid/renderscript/RenderScript;

.field mS0:F

.field mT0:F

.field mVtxCount:I

.field mVtxData:[F

.field mVtxSize:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .registers 9
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "vtxSize"    # I
    .param p3, "flags"    # I

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 523
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 524
    const/high16 v0, -0x40800000

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 525
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 526
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 527
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 528
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 529
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 530
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 549
    iput-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 550
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 551
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 552
    new-array v0, v4, [F

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 553
    new-array v0, v4, [S

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 554
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    .line 555
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 557
    const/4 v0, 0x2

    if-lt p2, v0, :cond_35

    const/4 v0, 0x3

    if-le p2, v0, :cond_3d

    .line 558
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertex size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_3d
    return-void
.end method

.method private latch()V
    .registers 4

    .prologue
    .line 571
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    .line 572
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 573
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    aput v2, v0, v1

    .line 574
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    aput v2, v0, v1

    .line 575
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    aput v2, v0, v1

    .line 576
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    aput v2, v0, v1

    .line 578
    :cond_3a
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5c

    .line 579
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 580
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    aput v2, v0, v1

    .line 581
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    aput v2, v0, v1

    .line 583
    :cond_5c
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8a

    .line 584
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 585
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    aput v2, v0, v1

    .line 586
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    aput v2, v0, v1

    .line 587
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    aput v2, v0, v1

    .line 589
    :cond_8a
    return-void
.end method

.method private makeSpace(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 563
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    if-lt v1, v2, :cond_1a

    .line 564
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    .line 565
    .local v0, "t":[F
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 568
    .end local v0    # "t":[F
    :cond_1a
    return-void
.end method


# virtual methods
.method public addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 8
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I
    .param p3, "idx3"    # I

    .prologue
    const/4 v3, 0x0

    .line 700
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p1, v1, :cond_13

    if-ltz p1, :cond_13

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p2, v1, :cond_13

    if-ltz p2, :cond_13

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p3, v1, :cond_13

    if-gez p3, :cond_1b

    .line 703
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Index provided greater than vertex count."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :cond_1b
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    if-lt v1, v2, :cond_35

    .line 706
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 707
    .local v0, "t":[S
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 710
    .end local v0    # "t":[S
    :cond_35
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p1

    aput-short v3, v1, v2

    .line 711
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p2

    aput-short v3, v1, v2

    .line 712
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p3

    aput-short v3, v1, v2

    .line 713
    return-object p0
.end method

.method public addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x2

    .line 601
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_d

    .line 602
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_d
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 605
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 606
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 607
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    .line 608
    return-object p0
.end method

.method public addVertex(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v1, 0x3

    .line 622
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_d

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_d
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 626
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 627
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 628
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p3, v0, v1

    .line 629
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    .line 630
    return-object p0
.end method

.method public create(Z)Landroid/renderscript/Mesh;
    .registers 12
    .param p1, "uploadToBufferObject"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 731
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v5}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 732
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    .line 733
    .local v1, "floatCount":I
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    iget v7, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    invoke-static {v5, v6, v7}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v5

    const-string/jumbo v6, "position"

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 736
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2e

    .line 737
    add-int/lit8 v1, v1, 0x4

    .line 738
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    const-string v6, "color"

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 740
    :cond_2e
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_42

    .line 741
    add-int/lit8 v1, v1, 0x2

    .line 742
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    const-string/jumbo v6, "texture0"

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 744
    :cond_42
    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_56

    .line 745
    add-int/lit8 v1, v1, 0x3

    .line 746
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    const-string/jumbo v6, "normal"

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 748
    :cond_56
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v5

    iput-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    .line 750
    const/4 v4, 0x1

    .line 751
    .local v4, "usage":I
    if-eqz p1, :cond_61

    .line 752
    or-int/lit8 v4, v4, 0x4

    .line 755
    :cond_61
    new-instance v3, Landroid/renderscript/Mesh$Builder;

    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v5, v4}, Landroid/renderscript/Mesh$Builder;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 756
    .local v3, "smb":Landroid/renderscript/Mesh$Builder;
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    iget v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    div-int/2addr v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/renderscript/Mesh$Builder;->addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;

    .line 757
    iget-object v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    iget v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    sget-object v7, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v3, v5, v6, v7}, Landroid/renderscript/Mesh$Builder;->addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;

    .line 759
    invoke-virtual {v3}, Landroid/renderscript/Mesh$Builder;->create()Landroid/renderscript/Mesh;

    move-result-object v2

    .line 761
    .local v2, "sm":Landroid/renderscript/Mesh;
    invoke-virtual {v2, v8}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v5

    iget v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    div-int/2addr v6, v1

    iget-object v7, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    invoke-virtual {v5, v8, v6, v7}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    .line 762
    if-eqz p1, :cond_98

    .line 763
    if-eqz p1, :cond_98

    .line 764
    invoke-virtual {v2, v8}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 768
    :cond_98
    invoke-virtual {v2, v8}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v5

    iget v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    iget-object v7, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    invoke-virtual {v5, v8, v6, v7}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    .line 769
    if-eqz p1, :cond_ac

    .line 770
    invoke-virtual {v2, v8}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 773
    :cond_ac
    return-object v2
.end method

.method public setColor(FFFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 680
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    .line 681
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_e
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 684
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 685
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 686
    iput p4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 687
    return-object p0
.end method

.method public setNormal(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 660
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_e
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 664
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 665
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 666
    return-object p0
.end method

.method public setTexture(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 5
    .param p1, "s"    # F
    .param p2, "t"    # F

    .prologue
    .line 642
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_e

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_e
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 646
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 647
    return-object p0
.end method
