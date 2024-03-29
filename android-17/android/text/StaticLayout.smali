.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 149
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 965
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 997
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 151
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 152
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 153
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 155
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 68
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 90
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 25
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 80
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .registers 29
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 104
    if-nez p11, :cond_84

    move-object/from16 v2, p1

    :goto_4
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 965
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 997
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 119
    if-eqz p11, :cond_9c

    .line 120
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 122
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 123
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 124
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 125
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 127
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 133
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_39
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 134
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 136
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 138
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 140
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 144
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 146
    return-void

    .line 104
    :cond_84
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_93

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_93
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 129
    :cond_9c
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 130
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_39
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 48
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 20
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 59
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 61
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .registers 28
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 739
    cmpg-float v14, p8, p5

    if-gtz v14, :cond_27

    if-nez p10, :cond_27

    .line 741
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 742
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 835
    :goto_26
    return-void

    .line 746
    :cond_27
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_79

    const-string/jumbo v14, "\u2025"

    :goto_30
    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 748
    .local v3, "ellipsisWidth":F
    const/4 v2, 0x0

    .line 749
    .local v2, "ellipsisStart":I
    const/4 v1, 0x0

    .line 750
    .local v1, "ellipsisCount":I
    sub-int v7, p2, p1

    .line 753
    .local v7, "len":I
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_92

    .line 754
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_81

    .line 755
    const/4 v12, 0x0

    .line 758
    .local v12, "sum":F
    move v4, v7

    .local v4, "i":I
    :goto_49
    if-ltz v4, :cond_5a

    .line 759
    add-int/lit8 v14, v4, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 761
    .local v13, "w":F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_7d

    .line 768
    .end local v13    # "w":F
    :cond_5a
    const/4 v2, 0x0

    .line 769
    move v1, v4

    .line 833
    .end local v4    # "i":I
    .end local v12    # "sum":F
    :cond_5c
    :goto_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    aput v2, v14, v15

    .line 834
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    aput v1, v14, v15

    goto :goto_26

    .line 746
    .end local v1    # "ellipsisCount":I
    .end local v2    # "ellipsisStart":I
    .end local v3    # "ellipsisWidth":F
    .end local v7    # "len":I
    :cond_79
    const-string/jumbo v14, "\u2026"

    goto :goto_30

    .line 765
    .restart local v1    # "ellipsisCount":I
    .restart local v2    # "ellipsisStart":I
    .restart local v3    # "ellipsisWidth":F
    .restart local v4    # "i":I
    .restart local v7    # "len":I
    .restart local v12    # "sum":F
    .restart local v13    # "w":F
    :cond_7d
    add-float/2addr v12, v13

    .line 758
    add-int/lit8 v4, v4, -0x1

    goto :goto_49

    .line 771
    .end local v4    # "i":I
    .end local v12    # "sum":F
    .end local v13    # "w":F
    :cond_81
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 772
    const-string v14, "StaticLayout"

    const-string v15, "Start Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 775
    :cond_92
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_a4

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_a4

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_c6

    .line 777
    :cond_a4
    const/4 v12, 0x0

    .line 780
    .restart local v12    # "sum":F
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_a6
    if-ge v4, v7, :cond_b5

    .line 781
    add-int v14, v4, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 783
    .restart local v13    # "w":F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_c2

    .line 790
    .end local v13    # "w":F
    :cond_b5
    move v2, v4

    .line 791
    sub-int v1, v7, v4

    .line 792
    if-eqz p10, :cond_5c

    if-nez v1, :cond_5c

    if-lez v7, :cond_5c

    .line 793
    add-int/lit8 v2, v7, -0x1

    .line 794
    const/4 v1, 0x1

    goto :goto_5c

    .line 787
    .restart local v13    # "w":F
    :cond_c2
    add-float/2addr v12, v13

    .line 780
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    .line 798
    .end local v4    # "i":I
    .end local v12    # "sum":F
    .end local v13    # "w":F
    :cond_c6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_108

    .line 799
    const/4 v8, 0x0

    .local v8, "lsum":F
    const/4 v11, 0x0

    .line 800
    .local v11, "rsum":F
    const/4 v6, 0x0

    .local v6, "left":I
    move v10, v7

    .line 802
    .local v10, "right":I
    sub-float v14, p5, v3

    const/high16 v15, 0x40000000

    div-float v9, v14, v15

    .line 803
    .local v9, "ravail":F
    move v10, v7

    :goto_d8
    if-ltz v10, :cond_e8

    .line 804
    add-int/lit8 v14, v10, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 806
    .restart local v13    # "w":F
    add-float v14, v13, v11

    cmpl-float v14, v14, v9

    if-lez v14, :cond_100

    .line 813
    .end local v13    # "w":F
    :cond_e8
    sub-float v14, p5, v3

    sub-float v5, v14, v11

    .line 814
    .local v5, "lavail":F
    const/4 v6, 0x0

    :goto_ed
    if-ge v6, v10, :cond_fb

    .line 815
    add-int v14, v6, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 817
    .restart local v13    # "w":F
    add-float v14, v13, v8

    cmpl-float v14, v14, v5

    if-lez v14, :cond_104

    .line 824
    .end local v13    # "w":F
    :cond_fb
    move v2, v6

    .line 825
    sub-int v1, v10, v6

    .line 826
    goto/16 :goto_5c

    .line 810
    .end local v5    # "lavail":F
    .restart local v13    # "w":F
    :cond_100
    add-float/2addr v11, v13

    .line 803
    add-int/lit8 v10, v10, -0x1

    goto :goto_d8

    .line 821
    .restart local v5    # "lavail":F
    :cond_104
    add-float/2addr v8, v13

    .line 814
    add-int/lit8 v6, v6, 0x1

    goto :goto_ed

    .line 827
    .end local v5    # "lavail":F
    .end local v6    # "left":I
    .end local v8    # "lsum":F
    .end local v9    # "ravail":F
    .end local v10    # "right":I
    .end local v11    # "rsum":F
    .end local v13    # "w":F
    :cond_108
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 828
    const-string v14, "StaticLayout"

    const-string v15, "Middle Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c
.end method

.method private static final isIdeographic(CZ)Z
    .registers 5
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 526
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_b

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_b

    .line 603
    :cond_a
    :goto_a
    return v0

    .line 529
    :cond_b
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_a

    .line 532
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_1f

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_1f

    .line 533
    if-nez p1, :cond_a

    .line 534
    sparse-switch p0, :sswitch_data_74

    goto :goto_a

    :sswitch_1d
    move v0, v1

    .line 551
    goto :goto_a

    .line 556
    :cond_1f
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_2f

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_2f

    .line 557
    if-nez p1, :cond_a

    .line 558
    sparse-switch p0, :sswitch_data_b6

    goto :goto_a

    :sswitch_2d
    move v0, v1

    .line 576
    goto :goto_a

    .line 581
    :cond_2f
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_37

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_a

    .line 584
    :cond_37
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_40

    const v2, 0x9fbb

    if-le p0, v2, :cond_a

    .line 587
    :cond_40
    const v2, 0xf900

    if-lt p0, v2, :cond_4a

    const v2, 0xfad9

    if-le p0, v2, :cond_a

    .line 590
    :cond_4a
    const v2, 0xa000

    if-lt p0, v2, :cond_54

    const v2, 0xa48f

    if-le p0, v2, :cond_a

    .line 593
    :cond_54
    const v2, 0xa490

    if-lt p0, v2, :cond_5e

    const v2, 0xa4cf

    if-le p0, v2, :cond_a

    .line 596
    :cond_5e
    const v2, 0xfe62

    if-lt p0, v2, :cond_68

    const v2, 0xfe66

    if-le p0, v2, :cond_a

    .line 599
    :cond_68
    const v2, 0xff10

    if-lt p0, v2, :cond_72

    const v2, 0xff19

    if-le p0, v2, :cond_a

    :cond_72
    move v0, v1

    .line 603
    goto :goto_a

    .line 534
    :sswitch_data_74
    .sparse-switch
        0x3041 -> :sswitch_1d
        0x3043 -> :sswitch_1d
        0x3045 -> :sswitch_1d
        0x3047 -> :sswitch_1d
        0x3049 -> :sswitch_1d
        0x3063 -> :sswitch_1d
        0x3083 -> :sswitch_1d
        0x3085 -> :sswitch_1d
        0x3087 -> :sswitch_1d
        0x308e -> :sswitch_1d
        0x3095 -> :sswitch_1d
        0x3096 -> :sswitch_1d
        0x309b -> :sswitch_1d
        0x309c -> :sswitch_1d
        0x309d -> :sswitch_1d
        0x309e -> :sswitch_1d
    .end sparse-switch

    .line 558
    :sswitch_data_b6
    .sparse-switch
        0x30a0 -> :sswitch_2d
        0x30a1 -> :sswitch_2d
        0x30a3 -> :sswitch_2d
        0x30a5 -> :sswitch_2d
        0x30a7 -> :sswitch_2d
        0x30a9 -> :sswitch_2d
        0x30c3 -> :sswitch_2d
        0x30e3 -> :sswitch_2d
        0x30e5 -> :sswitch_2d
        0x30e7 -> :sswitch_2d
        0x30ee -> :sswitch_2d
        0x30f5 -> :sswitch_2d
        0x30f6 -> :sswitch_2d
        0x30fb -> :sswitch_2d
        0x30fc -> :sswitch_2d
        0x30fd -> :sswitch_2d
        0x30fe -> :sswitch_2d
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .registers 58
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 618
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 619
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 620
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 622
    .local v24, "lines":[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_5d

    .line 623
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 624
    .local v25, "nlen":I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 625
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 627
    move-object/from16 v24, v19

    .line 629
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 630
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 635
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    .end local v25    # "nlen":I
    :cond_5d
    if-eqz p11, :cond_c8

    .line 636
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 637
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 638
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 639
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 641
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_79
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_b0

    .line 642
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_9e

    .line 643
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 641
    :goto_9b
    add-int/lit8 v21, v21, 0x1

    goto :goto_79

    .line 647
    :cond_9e
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_9b

    .line 651
    :cond_b0
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 652
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 653
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 654
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 657
    .end local v21    # "i":I
    :cond_c8
    if-nez v22, :cond_d6

    .line 658
    if-eqz p21, :cond_d2

    .line 659
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 662
    :cond_d2
    if-eqz p20, :cond_d6

    .line 663
    move/from16 p4, p6

    .line 666
    :cond_d6
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_e8

    .line 667
    if-eqz p21, :cond_e4

    .line 668
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 671
    :cond_e4
    if-eqz p20, :cond_e8

    .line 672
    move/from16 p5, p7

    .line 678
    :cond_e8
    if-eqz p15, :cond_1aa

    .line 679
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 680
    .local v15, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_1a0

    .line 681
    const-wide/high16 v2, 0x3fe0000000000000L

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 689
    .end local v15    # "ex":D
    .local v17, "extra":I
    :goto_101
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 690
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 691
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 693
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 694
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 695
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 697
    if-eqz p14, :cond_134

    .line 698
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 700
    :cond_134
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 701
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 705
    .local v23, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_1ae

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 712
    :goto_147
    if-eqz p25, :cond_195

    .line 715
    if-nez v22, :cond_1c5

    const/16 v18, 0x1

    .line 716
    .local v18, "firstLine":Z
    :goto_14d
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1c8

    const/4 v13, 0x1

    .line 717
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_156
    if-eqz p29, :cond_1ca

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1ca

    const/4 v12, 0x1

    .line 719
    .local v12, "forceEllipsis":Z
    :goto_165
    if-eqz v18, :cond_16f

    if-nez p29, :cond_16f

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17b

    :cond_16f
    if-nez v18, :cond_1cc

    if-nez v13, :cond_175

    if-nez p29, :cond_1cc

    :cond_175
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_1cc

    :cond_17b
    const/4 v14, 0x1

    .line 723
    .local v14, "doEllipsis":Z
    :goto_17c
    if-eqz v14, :cond_195

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 724
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 730
    .end local v12    # "forceEllipsis":Z
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v14    # "doEllipsis":Z
    .end local v18    # "firstLine":Z
    :cond_195
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 731
    return p8

    .line 683
    .end local v17    # "extra":I
    .end local v23    # "linedirs":Landroid/text/Layout$Directions;
    .restart local v15    # "ex":D
    :cond_1a0
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0000000000000L

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17    # "extra":I
    goto/16 :goto_101

    .line 686
    .end local v15    # "ex":D
    .end local v17    # "extra":I
    :cond_1aa
    const/16 v17, 0x0

    .restart local v17    # "extra":I
    goto/16 :goto_101

    .line 708
    .restart local v23    # "linedirs":Landroid/text/Layout$Directions;
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto :goto_147

    .line 715
    :cond_1c5
    const/16 v18, 0x0

    goto :goto_14d

    .line 716
    .restart local v18    # "firstLine":Z
    :cond_1c8
    const/4 v13, 0x0

    goto :goto_156

    .line 717
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_1ca
    const/4 v12, 0x0

    goto :goto_165

    .line 719
    .restart local v12    # "forceEllipsis":Z
    :cond_1cc
    const/4 v14, 0x0

    goto :goto_17c
.end method


# virtual methods
.method finish()V
    .registers 2

    .prologue
    .line 945
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 946
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 143
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 164
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 166
    const/4 v13, 0x0

    .line 167
    .local v13, "v":I
    const/high16 v5, 0x3f800000

    cmpl-float v5, p7, v5

    if-nez v5, :cond_11

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_a1

    :cond_11
    const/16 v20, 0x1

    .line 169
    .local v20, "needMultiply":Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 170
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 172
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v110, v0

    .line 174
    .local v110, "measured":Landroid/text/MeasuredText;
    const/16 v124, 0x0

    .line 175
    .local v124, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_2d

    move-object/from16 v124, p1

    .line 176
    check-cast v124, Landroid/text/Spanned;

    .line 178
    :cond_2d
    const/16 v80, 0x1

    .line 181
    .local v80, "DEFAULT_DIR":I
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_31
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_47f

    .line 182
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 183
    .local v38, "paraEnd":I
    if-gez v38, :cond_a5

    .line 184
    move/from16 v38, p3

    .line 188
    :goto_47
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v97, v5, 0x1

    .line 189
    .local v97, "firstWidthLineLimit":I
    move/from16 v96, p5

    .line 190
    .local v96, "firstWidth":I
    move/from16 v119, p5

    .line 192
    .local v119, "restWidth":I
    const/16 v16, 0x0

    .line 194
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v124, :cond_fd

    .line 195
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v124

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v120

    check-cast v120, [Landroid/text/style/LeadingMarginSpan;

    .line 197
    .local v120, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v105, 0x0

    .local v105, "i":I
    :goto_65
    move-object/from16 v0, v120

    array-length v5, v0

    move/from16 v0, v105

    if-ge v0, v5, :cond_a8

    .line 198
    aget-object v107, v120, v105

    .line 199
    .local v107, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v120, v105

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v96, v96, v5

    .line 200
    aget-object v5, v120, v105

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v119, v119, v5

    .line 206
    move-object/from16 v0, v107

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_9e

    move-object/from16 v108, v107

    .line 207
    check-cast v108, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 208
    .local v108, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v124

    move-object/from16 v1, v108

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v109

    .line 209
    .local v109, "lmsFirstLine":I
    invoke-interface/range {v108 .. v108}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v97, v109, v5

    .line 197
    .end local v108    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v109    # "lmsFirstLine":I
    :cond_9e
    add-int/lit8 v105, v105, 0x1

    goto :goto_65

    .line 167
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v38    # "paraEnd":I
    .end local v80    # "DEFAULT_DIR":I
    .end local v96    # "firstWidth":I
    .end local v97    # "firstWidthLineLimit":I
    .end local v105    # "i":I
    .end local v107    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v110    # "measured":Landroid/text/MeasuredText;
    .end local v119    # "restWidth":I
    .end local v120    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v124    # "spanned":Landroid/text/Spanned;
    :cond_a1
    const/16 v20, 0x0

    goto/16 :goto_13

    .line 186
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v38    # "paraEnd":I
    .restart local v80    # "DEFAULT_DIR":I
    .restart local v110    # "measured":Landroid/text/MeasuredText;
    .restart local v124    # "spanned":Landroid/text/Spanned;
    :cond_a5
    add-int/lit8 v38, v38, 0x1

    goto :goto_47

    .line 213
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v96    # "firstWidth":I
    .restart local v97    # "firstWidthLineLimit":I
    .restart local v105    # "i":I
    .restart local v119    # "restWidth":I
    .restart local v120    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_a8
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v124

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 215
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_fd

    .line 216
    if-eqz v17, :cond_c5

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_d0

    .line 218
    :cond_c5
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 222
    :cond_d0
    const/16 v105, 0x0

    :goto_d2
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v105

    if-ge v0, v5, :cond_fd

    .line 223
    aget-object v5, v16, v105

    move-object/from16 v0, v124

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v112

    .line 225
    .local v112, "o":I
    move/from16 v0, v112

    move/from16 v1, v29

    if-ge v0, v1, :cond_fa

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v105

    .line 222
    :goto_f7
    add-int/lit8 v105, v105, 0x1

    goto :goto_d2

    .line 233
    :cond_fa
    aput v13, v17, v105

    goto :goto_f7

    .line 239
    .end local v105    # "i":I
    .end local v112    # "o":I
    .end local v120    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_fd
    move-object/from16 v0, v110

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 240
    move-object/from16 v0, v110

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 241
    .local v27, "chs":[C
    move-object/from16 v0, v110

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 242
    .local v28, "widths":[F
    move-object/from16 v0, v110

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 243
    .local v21, "chdirs":[B
    move-object/from16 v0, v110

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 244
    .local v22, "dir":I
    move-object/from16 v0, v110

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 246
    .local v23, "easy":Z
    move/from16 v129, v96

    .line 248
    .local v129, "width":I
    const/16 v62, 0x0

    .line 249
    .local v62, "w":F
    move/from16 v7, v29

    .line 251
    .local v7, "here":I
    move/from16 v113, v29

    .line 252
    .local v113, "ok":I
    move/from16 v118, v62

    .line 253
    .local v118, "okWidth":F
    const/16 v114, 0x0

    .local v114, "okAscent":I
    const/16 v116, 0x0

    .local v116, "okDescent":I
    const/16 v117, 0x0

    .local v117, "okTop":I
    const/16 v115, 0x0

    .line 255
    .local v115, "okBottom":I
    move/from16 v98, v29

    .line 256
    .local v98, "fit":I
    move/from16 v99, v62

    .line 257
    .local v99, "fitWidth":F
    const/16 v39, 0x0

    .local v39, "fitAscent":I
    const/16 v40, 0x0

    .local v40, "fitDescent":I
    const/16 v41, 0x0

    .local v41, "fitTop":I
    const/16 v42, 0x0

    .line 259
    .local v42, "fitBottom":I
    const/16 v19, 0x0

    .line 260
    .local v19, "hasTabOrEmoji":Z
    const/16 v104, 0x0

    .line 261
    .local v104, "hasTab":Z
    const/16 v126, 0x0

    .line 263
    .local v126, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v123, v29

    .local v123, "spanStart":I
    move/from16 v121, v123

    .line 264
    .local v121, "spanEnd":I
    :goto_150
    move/from16 v0, v123

    move/from16 v1, v38

    if-ge v0, v1, :cond_408

    .line 266
    move/from16 v0, v123

    move/from16 v1, v121

    if-ne v0, v1, :cond_16f

    .line 267
    if-nez v124, :cond_27e

    .line 268
    move/from16 v121, v38

    .line 273
    :goto_160
    sub-int v122, v121, v123

    .line 274
    .local v122, "spanLen":I
    if-nez v124, :cond_28c

    .line 275
    move-object/from16 v0, v110

    move-object/from16 v1, p4

    move/from16 v2, v122

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 285
    .end local v122    # "spanLen":I
    :cond_16f
    :goto_16f
    move/from16 v111, v121

    .line 287
    .local v111, "nextSpanStart":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v103, v0

    .line 288
    .local v103, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v101, v0

    .line 289
    .local v101, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v100, v0

    .line 290
    .local v100, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v102, v0

    .line 292
    .local v102, "fmDescent":I
    move/from16 v106, v123

    .local v106, "j":I
    :goto_18b
    move/from16 v0, v106

    move/from16 v1, v121

    if-ge v0, v1, :cond_27a

    .line 293
    sub-int v5, v106, v29

    aget-char v94, v27, v5

    .line 295
    .local v94, "c":C
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_2b5

    .line 348
    :goto_19b
    move/from16 v0, v129

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-gtz v5, :cond_366

    .line 349
    move/from16 v99, v62

    .line 350
    add-int/lit8 v98, v106, 0x1

    .line 352
    move/from16 v0, v103

    move/from16 v1, v41

    if-ge v0, v1, :cond_1ae

    .line 353
    move/from16 v41, v103

    .line 354
    :cond_1ae
    move/from16 v0, v100

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b6

    .line 355
    move/from16 v39, v100

    .line 356
    :cond_1b6
    move/from16 v0, v102

    move/from16 v1, v40

    if-le v0, v1, :cond_1be

    .line 357
    move/from16 v40, v102

    .line 358
    :cond_1be
    move/from16 v0, v101

    move/from16 v1, v42

    if-le v0, v1, :cond_1c6

    .line 359
    move/from16 v42, v101

    .line 377
    :cond_1c6
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_24c

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_24c

    const/16 v5, 0x2e

    move/from16 v0, v94

    if-eq v0, v5, :cond_1ea

    const/16 v5, 0x2c

    move/from16 v0, v94

    if-eq v0, v5, :cond_1ea

    const/16 v5, 0x3a

    move/from16 v0, v94

    if-eq v0, v5, :cond_1ea

    const/16 v5, 0x3b

    move/from16 v0, v94

    if-ne v0, v5, :cond_20c

    :cond_1ea
    add-int/lit8 v5, v106, -0x1

    if-lt v5, v7, :cond_1fa

    add-int/lit8 v5, v106, -0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_20c

    :cond_1fa
    add-int/lit8 v5, v106, 0x1

    move/from16 v0, v121

    if-ge v5, v0, :cond_24c

    add-int/lit8 v5, v106, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_24c

    :cond_20c
    const/16 v5, 0x2f

    move/from16 v0, v94

    if-eq v0, v5, :cond_218

    const/16 v5, 0x2d

    move/from16 v0, v94

    if-ne v0, v5, :cond_22a

    :cond_218
    add-int/lit8 v5, v106, 0x1

    move/from16 v0, v121

    if-ge v5, v0, :cond_24c

    add-int/lit8 v5, v106, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_24c

    :cond_22a
    const/16 v5, 0x2e80

    move/from16 v0, v94

    if-lt v0, v5, :cond_270

    const/4 v5, 0x1

    move/from16 v0, v94

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_270

    add-int/lit8 v5, v106, 0x1

    move/from16 v0, v121

    if-ge v5, v0, :cond_270

    add-int/lit8 v5, v106, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_270

    .line 386
    :cond_24c
    move/from16 v118, v62

    .line 387
    add-int/lit8 v113, v106, 0x1

    .line 389
    move/from16 v0, v41

    move/from16 v1, v117

    if-ge v0, v1, :cond_258

    .line 390
    move/from16 v117, v41

    .line 391
    :cond_258
    move/from16 v0, v39

    move/from16 v1, v114

    if-ge v0, v1, :cond_260

    .line 392
    move/from16 v114, v39

    .line 393
    :cond_260
    move/from16 v0, v40

    move/from16 v1, v116

    if-le v0, v1, :cond_268

    .line 394
    move/from16 v116, v40

    .line 395
    :cond_268
    move/from16 v0, v42

    move/from16 v1, v115

    if-le v0, v1, :cond_270

    .line 396
    move/from16 v115, v42

    .line 460
    :cond_270
    :goto_270
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_404

    .line 264
    .end local v94    # "c":C
    :cond_27a
    move/from16 v123, v111

    goto/16 :goto_150

    .line 270
    .end local v100    # "fmAscent":I
    .end local v101    # "fmBottom":I
    .end local v102    # "fmDescent":I
    .end local v103    # "fmTop":I
    .end local v106    # "j":I
    .end local v111    # "nextSpanStart":I
    :cond_27e
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v124

    move/from16 v1, v123

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v121

    goto/16 :goto_160

    .line 277
    .restart local v122    # "spanLen":I
    :cond_28c
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v124

    move/from16 v1, v123

    move/from16 v2, v121

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/MetricAffectingSpan;

    .line 279
    .local v125, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v125

    move-object/from16 v1, v124

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    .end local v125    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v125, [Landroid/text/style/MetricAffectingSpan;

    .line 281
    .restart local v125    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v110

    move-object/from16 v1, p4

    move-object/from16 v2, v125

    move/from16 v3, v122

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_16f

    .line 297
    .end local v122    # "spanLen":I
    .end local v125    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v94    # "c":C
    .restart local v100    # "fmAscent":I
    .restart local v101    # "fmBottom":I
    .restart local v102    # "fmDescent":I
    .restart local v103    # "fmTop":I
    .restart local v106    # "j":I
    .restart local v111    # "nextSpanStart":I
    :cond_2b5
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_2f7

    .line 298
    if-nez v104, :cond_2e1

    .line 299
    const/16 v104, 0x1

    .line 300
    const/16 v19, 0x1

    .line 301
    if-eqz v124, :cond_2e1

    .line 303
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v124

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/TabStopSpan;

    .line 305
    .local v125, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v125

    array-length v5, v0

    if-lez v5, :cond_2e1

    .line 306
    new-instance v126, Landroid/text/Layout$TabStops;

    .end local v126    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v126

    move-object/from16 v1, v125

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 310
    .end local v125    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v126    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_2e1
    if-eqz v126, :cond_2ed

    .line 311
    move-object/from16 v0, v126

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_19b

    .line 313
    :cond_2ed
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_19b

    .line 315
    :cond_2f7
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_35e

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_35e

    add-int/lit8 v5, v106, 0x1

    move/from16 v0, v121

    if-ge v5, v0, :cond_35e

    .line 317
    sub-int v5, v106, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v95

    .line 319
    .local v95, "emoji":I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v95

    if-lt v0, v5, :cond_356

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v95

    if-gt v0, v5, :cond_356

    .line 320
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v93

    .line 322
    .local v93, "bm":Landroid/graphics/Bitmap;
    if-eqz v93, :cond_34e

    .line 325
    if-nez v124, :cond_347

    .line 326
    move-object/from16 v127, p4

    .line 331
    .local v127, "whichPaint":Landroid/graphics/Paint;
    :goto_32d
    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v127 .. v127}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v128, v5, v6

    .line 333
    .local v128, "wid":F
    add-float v62, v62, v128

    .line 334
    const/16 v19, 0x1

    .line 335
    add-int/lit8 v106, v106, 0x1

    .line 336
    goto/16 :goto_19b

    .line 328
    .end local v127    # "whichPaint":Landroid/graphics/Paint;
    .end local v128    # "wid":F
    :cond_347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v127, v0

    .restart local v127    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_32d

    .line 337
    .end local v127    # "whichPaint":Landroid/graphics/Paint;
    :cond_34e
    sub-int v5, v106, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_19b

    .line 340
    .end local v93    # "bm":Landroid/graphics/Bitmap;
    :cond_356
    sub-int v5, v106, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_19b

    .line 343
    .end local v95    # "emoji":I
    :cond_35e
    sub-int v5, v106, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_19b

    .line 399
    :cond_366
    add-int/lit8 v5, v106, 0x1

    move/from16 v0, v121

    if-ge v5, v0, :cond_38b

    const/16 v34, 0x1

    .line 404
    .local v34, "moreChars":Z
    :goto_36e
    move/from16 v0, v113

    if-eq v0, v7, :cond_3d9

    .line 406
    const/16 v5, 0x20

    move/from16 v0, v94

    if-ne v0, v5, :cond_37a

    add-int/lit8 v113, v106, 0x1

    .line 408
    :cond_37a
    :goto_37a
    move/from16 v0, v113

    move/from16 v1, v121

    if-ge v0, v1, :cond_38e

    sub-int v5, v113, v29

    aget-char v5, v27, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_38e

    .line 409
    add-int/lit8 v113, v113, 0x1

    goto :goto_37a

    .line 399
    .end local v34    # "moreChars":Z
    :cond_38b
    const/16 v34, 0x0

    goto :goto_36e

    .line 412
    .restart local v34    # "moreChars":Z
    :cond_38e
    move/from16 v8, v113

    .line 413
    .local v8, "endPos":I
    move/from16 v9, v114

    .line 414
    .local v9, "above":I
    move/from16 v10, v116

    .line 415
    .local v10, "below":I
    move/from16 v11, v117

    .line 416
    .local v11, "top":I
    move/from16 v12, v115

    .line 417
    .local v12, "bottom":I
    move/from16 v32, v118

    .local v32, "currentTextWidth":F
    :goto_39a
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 434
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 440
    move v7, v8

    .line 442
    move/from16 v0, v123

    if-ge v7, v0, :cond_401

    .line 446
    move/from16 v111, v7

    move/from16 v106, v7

    .line 451
    :goto_3bb
    move/from16 v98, v7

    move/from16 v113, v7

    .line 452
    const/16 v62, 0x0

    .line 453
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 454
    const/16 v115, 0x0

    move/from16 v117, v115

    move/from16 v116, v115

    move/from16 v114, v115

    .line 456
    add-int/lit8 v97, v97, -0x1

    if-gtz v97, :cond_270

    .line 457
    move/from16 v129, v119

    goto/16 :goto_270

    .line 418
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_3d9
    move/from16 v0, v98

    if-eq v0, v7, :cond_3ea

    .line 419
    move/from16 v8, v98

    .line 420
    .restart local v8    # "endPos":I
    move/from16 v9, v39

    .line 421
    .restart local v9    # "above":I
    move/from16 v10, v40

    .line 422
    .restart local v10    # "below":I
    move/from16 v11, v41

    .line 423
    .restart local v11    # "top":I
    move/from16 v12, v42

    .line 424
    .restart local v12    # "bottom":I
    move/from16 v32, v99

    .restart local v32    # "currentTextWidth":F
    goto :goto_39a

    .line 426
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_3ea
    add-int/lit8 v8, v7, 0x1

    .line 427
    .restart local v8    # "endPos":I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 428
    .restart local v9    # "above":I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 429
    .restart local v10    # "below":I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 430
    .restart local v11    # "top":I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 431
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto :goto_39a

    .line 448
    :cond_401
    add-int/lit8 v106, v7, -0x1

    goto :goto_3bb

    .line 292
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    :cond_404
    add-int/lit8 v106, v106, 0x1

    goto/16 :goto_18b

    .line 466
    .end local v94    # "c":C
    .end local v100    # "fmAscent":I
    .end local v101    # "fmBottom":I
    .end local v102    # "fmDescent":I
    .end local v103    # "fmTop":I
    .end local v106    # "j":I
    .end local v111    # "nextSpanStart":I
    :cond_408
    move/from16 v0, v38

    if-eq v0, v7, :cond_477

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_477

    .line 467
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_43d

    .line 468
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 470
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 471
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 472
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 473
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 478
    :cond_43d
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_4f1

    const/16 v64, 0x1

    :goto_445
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 490
    :cond_477
    move/from16 v29, v38

    .line 492
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_4f5

    .line 496
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v38    # "paraEnd":I
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    .end local v62    # "w":F
    .end local v96    # "firstWidth":I
    .end local v97    # "firstWidthLineLimit":I
    .end local v98    # "fit":I
    .end local v99    # "fitWidth":F
    .end local v104    # "hasTab":Z
    .end local v113    # "ok":I
    .end local v114    # "okAscent":I
    .end local v115    # "okBottom":I
    .end local v116    # "okDescent":I
    .end local v117    # "okTop":I
    .end local v118    # "okWidth":F
    .end local v119    # "restWidth":I
    .end local v121    # "spanEnd":I
    .end local v123    # "spanStart":I
    .end local v126    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v129    # "width":I
    :cond_47f
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_491

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4f0

    :cond_491
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_4f0

    .line 500
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 502
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 513
    :cond_4f0
    return-void

    .line 478
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v38    # "paraEnd":I
    .restart local v39    # "fitAscent":I
    .restart local v40    # "fitDescent":I
    .restart local v41    # "fitTop":I
    .restart local v42    # "fitBottom":I
    .restart local v62    # "w":F
    .restart local v96    # "firstWidth":I
    .restart local v97    # "firstWidthLineLimit":I
    .restart local v98    # "fit":I
    .restart local v99    # "fitWidth":F
    .restart local v104    # "hasTab":Z
    .restart local v113    # "ok":I
    .restart local v114    # "okAscent":I
    .restart local v115    # "okBottom":I
    .restart local v116    # "okDescent":I
    .restart local v117    # "okTop":I
    .restart local v118    # "okWidth":F
    .restart local v119    # "restWidth":I
    .restart local v121    # "spanEnd":I
    .restart local v123    # "spanStart":I
    .restart local v126    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v129    # "width":I
    :cond_4f1
    const/16 v64, 0x0

    goto/16 :goto_445

    .line 181
    :cond_4f5
    move/from16 v29, v38

    goto/16 :goto_31
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 914
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 919
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 920
    const/4 v0, 0x0

    .line 923
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 928
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 929
    const/4 v0, 0x0

    .line 932
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 937
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 899
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 864
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 879
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 880
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1c

    .line 882
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 884
    :cond_1c
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 904
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 8
    .param p1, "vertical"    # I

    .prologue
    .line 843
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 844
    .local v1, "high":I
    const/4 v3, -0x1

    .line 846
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 847
    .local v2, "lines":[I
    :goto_5
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 848
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 849
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_19

    .line 850
    move v1, v0

    goto :goto_5

    .line 852
    :cond_19
    move v3, v0

    goto :goto_5

    .line 855
    .end local v0    # "guess":I
    :cond_1b
    if-gez v3, :cond_1e

    .line 856
    const/4 v3, 0x0

    .line 858
    .end local v3    # "low":I
    :cond_1e
    return v3
.end method

.method public getLineStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 889
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 869
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 870
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1a

    .line 872
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 874
    :cond_1a
    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 894
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 909
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .registers 2

    .prologue
    .line 941
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 942
    return-void
.end method
