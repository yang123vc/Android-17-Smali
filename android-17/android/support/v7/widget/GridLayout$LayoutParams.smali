.class public Landroid/support/v7/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I = 0x6

.field private static final COLUMN:I = 0x9

.field private static final COLUMN_SPAN:I = 0xa

.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Landroid/support/v7/widget/GridLayout$Interval;

.field private static final DEFAULT_SPAN_SIZE:I

.field private static final DEFAULT_WIDTH:I = -0x2

.field private static final GRAVITY:I = 0xb

.field private static final LEFT_MARGIN:I = 0x3

.field private static final MARGIN:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x5

.field private static final ROW:I = 0x7

.field private static final ROW_SPAN:I = 0x8

.field private static final TOP_MARGIN:I = 0x4


# instance fields
.field public columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

.field public rowSpec:Landroid/support/v7/widget/GridLayout$Spec;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1756
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    sput-object v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1757
    sget-object v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1835
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    sget-object v1, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V

    .line 1836
    return-void
.end method

.method private constructor <init>(IIIIIILandroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "rowSpec"    # Landroid/support/v7/widget/GridLayout$Spec;
    .param p8, "columnSpec"    # Landroid/support/v7/widget/GridLayout$Spec;

    .prologue
    .line 1811
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1789
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1803
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1812
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1813
    iput-object p7, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1814
    iput-object p8, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1815
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1872
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1789
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1803
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1873
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1874
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1875
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/GridLayout$LayoutParams;)V
    .registers 3
    .param p1, "that"    # Landroid/support/v7/widget/GridLayout$LayoutParams;

    .prologue
    .line 1858
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1789
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1803
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1859
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1860
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1861
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V
    .registers 12
    .param p1, "rowSpec"    # Landroid/support/v7/widget/GridLayout$Spec;
    .param p2, "columnSpec"    # Landroid/support/v7/widget/GridLayout$Spec;

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x80000000

    .line 1826
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(IIIIIILandroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V

    .line 1829
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1844
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1789
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1803
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1845
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1789
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1803
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1852
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1904
    sget-object v6, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1906
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0xb

    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1908
    .local v3, "gravity":I
    const/16 v6, 0x9

    const/high16 v7, -0x80000000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1909
    .local v2, "column":I
    const/16 v6, 0xa

    sget v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1910
    .local v1, "colSpan":I
    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v6

    invoke-static {v2, v1, v6}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1912
    const/4 v6, 0x7

    const/high16 v7, -0x80000000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 1913
    .local v4, "row":I
    const/16 v6, 0x8

    sget v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1914
    .local v5, "rowSpan":I
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_46

    .line 1916
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1918
    return-void

    .line 1916
    .end local v1    # "colSpan":I
    .end local v2    # "column":I
    .end local v3    # "gravity":I
    .end local v4    # "row":I
    .end local v5    # "rowSpan":I
    :catchall_46
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1889
    sget-object v2, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1892
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    :try_start_9
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1894
    .local v1, "margin":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 1895
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    .line 1896
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 1897
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2d

    .line 1899
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1901
    return-void

    .line 1899
    .end local v1    # "margin":I
    :catchall_2d
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1949
    if-ne p0, p1, :cond_5

    .line 1957
    :cond_4
    :goto_4
    return v1

    .line 1950
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 1952
    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 1954
    .local v0, "that":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    goto :goto_4

    .line 1955
    :cond_22
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 1962
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Spec;->hashCode()I

    move-result v0

    .line 1963
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Spec;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1964
    return v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 6
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    const/4 v1, -0x2

    .line 1935
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    .line 1936
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    .line 1937
    return-void
.end method

.method final setColumnSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V
    .registers 3
    .param p1, "span"    # Landroid/support/v7/widget/GridLayout$Interval;

    .prologue
    .line 1944
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteSpan(Landroid/support/v7/widget/GridLayout$Interval;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1945
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 1929
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1930
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1931
    return-void
.end method

.method final setRowSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V
    .registers 3
    .param p1, "span"    # Landroid/support/v7/widget/GridLayout$Interval;

    .prologue
    .line 1940
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteSpan(Landroid/support/v7/widget/GridLayout$Interval;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1941
    return-void
.end method
