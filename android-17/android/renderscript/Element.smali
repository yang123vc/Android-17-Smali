.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$1;,
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 710
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 711
    return-void
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "dt"    # Landroid/renderscript/Element$DataType;
    .param p4, "dk"    # Landroid/renderscript/Element$DataKind;
    .param p5, "norm"    # Z
    .param p6, "size"    # I

    .prologue
    .line 695
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 696
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1d

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1d

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1d

    .line 699
    iget v0, p3, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p6

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    .line 703
    :goto_14
    iput-object p3, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 704
    iput-object p4, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 705
    iput-boolean p5, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 706
    iput p6, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 707
    return-void

    .line 701
    :cond_1d
    iget v0, p3, Landroid/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_14
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "e"    # [Landroid/renderscript/Element;
    .param p4, "n"    # [Ljava/lang/String;
    .param p5, "as"    # [I

    .prologue
    .line 682
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 683
    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 684
    iput-object p3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 685
    iput-object p4, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 686
    iput-object p5, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 687
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 688
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_14
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 689
    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v0

    .line 690
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 692
    :cond_32
    return-void
.end method

.method public static ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 349
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 350
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    .line 352
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 406
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 407
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    .line 409
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 244
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 245
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    .line 247
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 335
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 336
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    .line 338
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 321
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 322
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    .line 324
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 448
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 449
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    .line 451
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 455
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 456
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    .line 458
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 462
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 463
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    .line 465
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 329
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    .line 331
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 469
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 470
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    .line 472
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 476
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 477
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    .line 479
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 483
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 484
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    .line 486
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 286
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 287
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    .line 289
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 553
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 554
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    .line 556
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 560
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 561
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    .line 563
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 567
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 568
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    .line 570
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 300
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 301
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    .line 303
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 595
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 596
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    .line 598
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 602
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 603
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    .line 605
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 609
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 610
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    .line 612
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 314
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 315
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    .line 317
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 637
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 638
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    .line 640
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 644
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 645
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    .line 647
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 651
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 652
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    .line 654
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 272
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 273
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    .line 275
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 511
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 512
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    .line 514
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 518
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 519
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    .line 521
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 525
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 526
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    .line 528
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 664
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 675
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 676
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    .line 678
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 668
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 669
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    .line 671
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 658
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 659
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    .line 661
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 370
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 371
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    .line 373
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 378
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 380
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 391
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 392
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    .line 394
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 399
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    .line 401
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 385
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 387
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 434
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 435
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    .line 437
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 427
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 428
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    .line 430
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 441
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 442
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    .line 444
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 413
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 414
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    .line 416
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 420
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 421
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    .line 423
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 356
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 357
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    .line 359
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 363
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 364
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    .line 366
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 343
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    .line 345
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 279
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 280
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    .line 282
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 532
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 533
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    .line 535
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 539
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 540
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    .line 542
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 546
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 547
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    .line 549
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 293
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 294
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    .line 296
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 574
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 575
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    .line 577
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 581
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 582
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    .line 584
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 588
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 589
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    .line 591
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 307
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 308
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    .line 310
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 616
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 617
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    .line 619
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 623
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 624
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    .line 626
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 630
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 631
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    .line 633
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 258
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 259
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    .line 261
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 490
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 491
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    .line 493
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 497
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 498
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    .line 500
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 504
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_d

    .line 505
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    .line 507
    :cond_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .registers 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/renderscript/Element$DataKind;

    .prologue
    .line 805
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_20

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_20

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_20

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_20

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_20

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_20

    .line 811
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported DataKind"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_20
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3c

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3c

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3c

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3c

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3c

    .line 818
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported DataType"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_3c
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_4c

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_4c

    .line 821
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_4c
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_5c

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_5c

    .line 824
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_5c
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_6c

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_6c

    .line 827
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_6c
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_7c

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_7c

    .line 831
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_7c
    const/4 v6, 0x1

    .line 835
    .local v6, "size":I
    sget-object v0, Landroid/renderscript/Element$1;->$SwitchMap$android$renderscript$Element$DataKind:[I

    invoke-virtual {p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_a2

    .line 850
    :goto_88
    const/4 v5, 0x1

    .line 851
    .local v5, "norm":Z
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    iget v2, p2, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 852
    .local v1, "id":I
    new-instance v0, Landroid/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0

    .line 837
    .end local v1    # "id":I
    .end local v5    # "norm":Z
    :pswitch_9a
    const/4 v6, 0x2

    .line 838
    goto :goto_88

    .line 840
    :pswitch_9c
    const/4 v6, 0x3

    .line 841
    goto :goto_88

    .line 843
    :pswitch_9e
    const/4 v6, 0x4

    .line 844
    goto :goto_88

    .line 846
    :pswitch_a0
    const/4 v6, 0x2

    goto :goto_88

    .line 835
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_9c
        :pswitch_9e
        :pswitch_a0
    .end packed-switch
.end method

.method static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .registers 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;

    .prologue
    .line 764
    sget-object v4, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 765
    .local v4, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 766
    .local v5, "norm":Z
    const/4 v6, 0x1

    .line 767
    .local v6, "vecSize":I
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 768
    .local v1, "id":I
    new-instance v0, Landroid/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .registers 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 783
    const/4 v0, 0x2

    if-lt p2, v0, :cond_6

    const/4 v0, 0x4

    if-le p2, v0, :cond_e

    .line 784
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Vector size out of range 2-4."

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_e
    sget-object v4, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 787
    .local v4, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 788
    .local v5, "norm":Z
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, p2}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 789
    .local v1, "id":I
    new-instance v0, Landroid/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method


# virtual methods
.method public getSizeBytes()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public getSubElement(I)Landroid/renderscript/Element;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 182
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 183
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_c
    if-ltz p1, :cond_13

    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    if-lt p1, v0, :cond_1b

    .line 186
    :cond_13
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1b
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 212
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 213
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_c
    if-ltz p1, :cond_13

    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    if-lt p1, v0, :cond_1b

    .line 216
    :cond_13
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1b
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubElementCount()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    goto :goto_5
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 197
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 198
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_c
    if-ltz p1, :cond_13

    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    if-lt p1, v0, :cond_1b

    .line 201
    :cond_13
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1b
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 227
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 228
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_c
    if-ltz p1, :cond_13

    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    if-lt p1, v0, :cond_1b

    .line 231
    :cond_13
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1b
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    aget v0, v0, p1

    return v0
.end method

.method public isCompatible(Landroid/renderscript/Element;)Z
    .registers 5
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    const/4 v0, 0x1

    .line 868
    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 876
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/renderscript/Element;->mSize:I

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-ne v1, v2, :cond_1e

    iget v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/renderscript/Element;->mVectorSize:I

    if-eq v1, v2, :cond_7

    :cond_1e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isComplex()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v2, :cond_6

    .line 162
    :cond_5
    :goto_5
    return v1

    .line 157
    :cond_6
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_7
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 158
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-eqz v2, :cond_16

    .line 159
    const/4 v1, 0x1

    goto :goto_5

    .line 157
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method updateFromNative()V
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 715
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 718
    const/4 v9, 0x5

    new-array v1, v9, [I

    .line 719
    .local v1, "dataBuffer":[I
    iget-object v9, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Element;->getID()I

    move-result v12

    invoke-virtual {v9, v12, v1}, Landroid/renderscript/RenderScript;->nElementGetNativeData(I[I)V

    .line 721
    const/4 v9, 0x2

    aget v9, v1, v9

    if-ne v9, v10, :cond_3e

    move v9, v10

    :goto_17
    iput-boolean v9, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 722
    const/4 v9, 0x3

    aget v9, v1, v9

    iput v9, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 723
    iput v11, p0, Landroid/renderscript/Element;->mSize:I

    .line 724
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v0

    .local v0, "arr$":[Landroid/renderscript/Element$DataType;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_26
    if-ge v5, v6, :cond_40

    aget-object v3, v0, v5

    .line 725
    .local v3, "dt":Landroid/renderscript/Element$DataType;
    iget v9, v3, Landroid/renderscript/Element$DataType;->mID:I

    aget v12, v1, v11

    if-ne v9, v12, :cond_3b

    .line 726
    iput-object v3, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 727
    iget-object v9, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v9, v9, Landroid/renderscript/Element$DataType;->mSize:I

    iget v12, p0, Landroid/renderscript/Element;->mVectorSize:I

    mul-int/2addr v9, v12

    iput v9, p0, Landroid/renderscript/Element;->mSize:I

    .line 724
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .end local v0    # "arr$":[Landroid/renderscript/Element$DataType;
    .end local v3    # "dt":Landroid/renderscript/Element$DataType;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3e
    move v9, v11

    .line 721
    goto :goto_17

    .line 730
    .restart local v0    # "arr$":[Landroid/renderscript/Element$DataType;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_40
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v0

    .local v0, "arr$":[Landroid/renderscript/Element$DataKind;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_46
    if-ge v5, v6, :cond_55

    aget-object v2, v0, v5

    .line 731
    .local v2, "dk":Landroid/renderscript/Element$DataKind;
    iget v9, v2, Landroid/renderscript/Element$DataKind;->mID:I

    aget v11, v1, v10

    if-ne v9, v11, :cond_52

    .line 732
    iput-object v2, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 730
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 736
    .end local v2    # "dk":Landroid/renderscript/Element$DataKind;
    :cond_55
    const/4 v9, 0x4

    aget v7, v1, v9

    .line 737
    .local v7, "numSubElements":I
    if-lez v7, :cond_a9

    .line 738
    new-array v9, v7, [Landroid/renderscript/Element;

    iput-object v9, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 739
    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 740
    new-array v9, v7, [I

    iput-object v9, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 741
    new-array v9, v7, [I

    iput-object v9, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 743
    new-array v8, v7, [I

    .line 744
    .local v8, "subElementIds":[I
    iget-object v9, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Element;->getID()I

    move-result v10

    iget-object v11, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v12, p0, Landroid/renderscript/Element;->mArraySizes:[I

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/renderscript/RenderScript;->nElementGetSubElements(I[I[Ljava/lang/String;[I)V

    .line 745
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7a
    if-ge v4, v7, :cond_a9

    .line 746
    iget-object v9, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-instance v10, Landroid/renderscript/Element;

    aget v11, v8, v4

    iget-object v12, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v10, v11, v12}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;)V

    aput-object v10, v9, v4

    .line 747
    iget-object v9, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Landroid/renderscript/Element;->updateFromNative()V

    .line 748
    iget-object v9, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v10, p0, Landroid/renderscript/Element;->mSize:I

    aput v10, v9, v4

    .line 749
    iget v9, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v10, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/renderscript/Element;->mSize:I

    iget-object v11, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v11, v11, v4

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, p0, Landroid/renderscript/Element;->mSize:I

    .line 745
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 753
    .end local v4    # "i":I
    .end local v8    # "subElementIds":[I
    :cond_a9
    return-void
.end method
