.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Landroid/text/Editable;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;
.implements Landroid/text/Spannable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1254
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v10, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    sget-object v9, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 51
    sub-int v7, p3, p2

    .line 53
    .local v7, "srclen":I
    add-int/lit8 v9, v7, 0x1

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v4

    .line 54
    .local v4, "len":I
    new-array v9, v4, [C

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 55
    iput v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 56
    sub-int v9, v4, v7

    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 58
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v9, v10}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 60
    iput v10, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 61
    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 62
    .local v0, "alloc":I
    new-array v9, v0, [Ljava/lang/Object;

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 63
    new-array v9, v0, [I

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 64
    new-array v9, v0, [I

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 65
    new-array v9, v0, [I

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 67
    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_7d

    move-object v5, p1

    .line 68
    check-cast v5, Landroid/text/Spanned;

    .line 69
    .local v5, "sp":Landroid/text/Spanned;
    const-class v9, Ljava/lang/Object;

    invoke-interface {v5, p2, p3, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 71
    .local v6, "spans":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    array-length v9, v6

    if-ge v3, v9, :cond_7d

    .line 72
    aget-object v9, v6, v3

    instance-of v9, v9, Landroid/text/NoCopySpan;

    if-eqz v9, :cond_4f

    .line 71
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 76
    :cond_4f
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    sub-int v8, v9, p2

    .line 77
    .local v8, "st":I
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    sub-int v1, v9, p2

    .line 78
    .local v1, "en":I
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 80
    .local v2, "fl":I
    if-gez v8, :cond_68

    .line 81
    const/4 v8, 0x0

    .line 82
    :cond_68
    sub-int v9, p3, p2

    if-le v8, v9, :cond_6e

    .line 83
    sub-int v8, p3, p2

    .line 85
    :cond_6e
    if-gez v1, :cond_71

    .line 86
    const/4 v1, 0x0

    .line 87
    :cond_71
    sub-int v9, p3, p2

    if-le v1, v9, :cond_77

    .line 88
    sub-int v1, p3, p2

    .line 90
    :cond_77
    aget-object v9, v6, v3

    invoke-virtual {p0, v9, v8, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4c

    .line 93
    .end local v1    # "en":I
    .end local v2    # "fl":I
    .end local v3    # "i":I
    .end local v5    # "sp":Landroid/text/Spanned;
    .end local v6    # "spans":[Ljava/lang/Object;
    .end local v8    # "st":I
    :cond_7d
    return-void
.end method

.method private change(IILjava/lang/CharSequence;II)I
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 266
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private change(ZIILjava/lang/CharSequence;II)I
    .registers 30
    .param p1, "notify"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "tb"    # Ljava/lang/CharSequence;
    .param p5, "tbstart"    # I
    .param p6, "tbend"    # I

    .prologue
    .line 271
    const-string/jumbo v4, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 272
    sub-int v19, p6, p5

    .line 273
    .local v19, "ret":I
    const/16 v18, 0x0

    .line 275
    .local v18, "recipients":[Landroid/text/TextWatcher;
    if-eqz p1, :cond_1e

    .line 276
    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v18

    .line 279
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v14, v4, -0x1

    .local v14, "i":I
    :goto_24
    if-ltz v14, :cond_c6

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_bc

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v22, v4, v14

    .line 282
    .local v22, "st":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v22

    if-le v0, v4, :cond_46

    .line 283
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v22, v22, v4

    .line 285
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v12, v4, v14

    .line 286
    .local v12, "en":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v12, v4, :cond_57

    .line 287
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v12, v4

    .line 289
    :cond_57
    move/from16 v17, v22

    .line 290
    .local v17, "ost":I
    move/from16 v16, v12

    .line 291
    .local v16, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 293
    .local v11, "clen":I
    move/from16 v0, v22

    move/from16 v1, p2

    if-le v0, v1, :cond_83

    move/from16 v0, v22

    move/from16 v1, p3

    if-gt v0, v1, :cond_83

    .line 294
    move/from16 v22, p3

    :goto_6d
    move/from16 v0, v22

    if-ge v0, v11, :cond_83

    .line 295
    move/from16 v0, v22

    move/from16 v1, p3

    if-le v0, v1, :cond_c0

    add-int/lit8 v4, v22, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c0

    .line 299
    :cond_83
    move/from16 v0, p2

    if-le v12, v0, :cond_9f

    move/from16 v0, p3

    if-gt v12, v0, :cond_9f

    .line 300
    move/from16 v12, p3

    :goto_8d
    if-ge v12, v11, :cond_9f

    .line 301
    move/from16 v0, p3

    if-le v12, v0, :cond_c3

    add-int/lit8 v4, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c3

    .line 305
    :cond_9f
    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_a9

    move/from16 v0, v16

    if-eq v12, v0, :cond_bc

    .line 306
    :cond_a9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v5, v14

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1, v12, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 279
    .end local v11    # "clen":I
    .end local v12    # "en":I
    .end local v16    # "oen":I
    .end local v17    # "ost":I
    .end local v22    # "st":I
    :cond_bc
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_24

    .line 294
    .restart local v11    # "clen":I
    .restart local v12    # "en":I
    .restart local v16    # "oen":I
    .restart local v17    # "ost":I
    .restart local v22    # "st":I
    :cond_c0
    add-int/lit8 v22, v22, 0x1

    goto :goto_6d

    .line 300
    :cond_c3
    add-int/lit8 v12, v12, 0x1

    goto :goto_8d

    .line 310
    .end local v11    # "clen":I
    .end local v12    # "en":I
    .end local v16    # "oen":I
    .end local v17    # "ost":I
    .end local v22    # "st":I
    :cond_c6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 313
    sub-int v4, p6, p5

    sub-int v5, p3, p2

    sub-int v15, v4, v5

    .line 315
    .local v15, "nbNewChars":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v15, v4, :cond_e9

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    add-int/2addr v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 319
    :cond_e9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v4, v15

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 320
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v15

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 322
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_10c

    .line 323
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    :cond_10c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 327
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_17a

    move-object/from16 v20, p4

    .line 328
    check-cast v20, Landroid/text/Spanned;

    .line 329
    .local v20, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v20

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .line 331
    .local v21, "spans":[Ljava/lang/Object;
    const/4 v14, 0x0

    :goto_132
    move-object/from16 v0, v21

    array-length v4, v0

    if-ge v14, v4, :cond_17a

    .line 332
    aget-object v4, v21, v14

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 333
    .restart local v22    # "st":I
    aget-object v4, v21, v14

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 335
    .restart local v12    # "en":I
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_14f

    .line 336
    move/from16 v22, p5

    .line 337
    :cond_14f
    move/from16 v0, p6

    if-le v12, v0, :cond_155

    .line 338
    move/from16 v12, p6

    .line 340
    :cond_155
    aget-object v4, v21, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_177

    .line 341
    const/4 v5, 0x0

    aget-object v6, v21, v14

    sub-int v4, v22, p5

    add-int v7, v4, p2

    sub-int v4, v12, p5

    add-int v8, v4, p2

    aget-object v4, v21, v14

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 331
    :cond_177
    add-int/lit8 v14, v14, 0x1

    goto :goto_132

    .line 350
    .end local v12    # "en":I
    .end local v20    # "sp":Landroid/text/Spanned;
    .end local v21    # "spans":[Ljava/lang/Object;
    .end local v22    # "st":I
    :cond_17a
    move/from16 v0, p6

    move/from16 v1, p5

    if-le v0, v1, :cond_19b

    sub-int v4, p3, p2

    if-nez v4, :cond_19b

    .line 351
    if-eqz p1, :cond_19a

    .line 352
    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    .line 393
    :cond_19a
    :goto_19a
    return v19

    .line 359
    :cond_19b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_241

    const/4 v10, 0x1

    .line 361
    .local v10, "atend":Z
    :goto_1ac
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v14, v4, -0x1

    :goto_1b2
    if-ltz v14, :cond_252

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v14

    move/from16 v0, p2

    if-lt v4, v0, :cond_1f0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1f0

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    .line 366
    .local v13, "flag":I
    const/4 v4, 0x2

    if-eq v13, v4, :cond_1e1

    const/4 v4, 0x3

    if-ne v13, v4, :cond_244

    if-eqz v10, :cond_244

    .line 367
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    aput v5, v4, v14

    .line 372
    .end local v13    # "flag":I
    :cond_1f0
    :goto_1f0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move/from16 v0, p2

    if-lt v4, v0, :cond_22a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_22a

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit8 v13, v4, 0xf

    .line 376
    .restart local v13    # "flag":I
    const/4 v4, 0x2

    if-eq v13, v4, :cond_21b

    const/4 v4, 0x3

    if-ne v13, v4, :cond_24b

    if-eqz v10, :cond_24b

    .line 377
    :cond_21b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    aput v5, v4, v14

    .line 383
    .end local v13    # "flag":I
    :cond_22a
    :goto_22a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v14

    if-ge v4, v5, :cond_23d

    .line 384
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 361
    :cond_23d
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1b2

    .line 359
    .end local v10    # "atend":Z
    :cond_241
    const/4 v10, 0x0

    goto/16 :goto_1ac

    .line 369
    .restart local v10    # "atend":Z
    .restart local v13    # "flag":I
    :cond_244
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p2, v4, v14

    goto :goto_1f0

    .line 379
    :cond_24b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p2, v4, v14

    goto :goto_22a

    .line 388
    .end local v13    # "flag":I
    :cond_252
    if-eqz p1, :cond_19a

    .line 389
    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_19a
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 8
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 936
    if-ge p3, p2, :cond_29

    .line 937
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :cond_29
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 944
    .local v0, "len":I
    if-gt p2, v0, :cond_31

    if-le p3, v0, :cond_5c

    .line 945
    :cond_31
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :cond_5c
    if-ltz p2, :cond_60

    if-gez p3, :cond_87

    .line 951
    :cond_60
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 955
    :cond_87
    return-void
.end method

.method private moveGapTo(I)V
    .registers 14
    .param p1, "where"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 153
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_7

    .line 202
    :goto_6
    return-void

    .line 156
    :cond_7
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_53

    const/4 v0, 0x1

    .line 158
    .local v0, "atend":Z
    :goto_e
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_55

    .line 159
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .line 161
    .local v4, "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :goto_23
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_8d

    .line 172
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .line 173
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .line 175
    .local v1, "end":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_37

    .line 176
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    .line 177
    :cond_37
    if-le v5, p1, :cond_67

    .line 178
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    .line 186
    :cond_3c
    :goto_3c
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_43

    .line 187
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    .line 188
    :cond_43
    if-le v1, p1, :cond_7b

    .line 189
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    .line 197
    :cond_48
    :goto_48
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    .line 198
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 156
    .end local v0    # "atend":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_53
    const/4 v0, 0x0

    goto :goto_e

    .line 164
    .restart local v0    # "atend":Z
    :cond_55
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .line 166
    .restart local v4    # "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    .line 179
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_67
    if-ne v5, p1, :cond_3c

    .line 180
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 182
    .local v2, "flag":I
    if-eq v2, v10, :cond_77

    if-eqz v0, :cond_3c

    if-ne v2, v11, :cond_3c

    .line 183
    :cond_77
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_3c

    .line 190
    .end local v2    # "flag":I
    :cond_7b
    if-ne v1, p1, :cond_48

    .line 191
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 193
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_89

    if-eqz v0, :cond_48

    if-ne v2, v11, :cond_48

    .line 194
    :cond_89
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_48

    .line 201
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_8d
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto/16 :goto_6
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .registers 9
    .param p1, "i"    # I

    .prologue
    .line 397
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    .line 399
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, p1

    .line 400
    .local v3, "start":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, p1

    .line 402
    .local v1, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_13

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 403
    :cond_13
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1a

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 405
    :cond_1a
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    .line 406
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 413
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 415
    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 416
    return-void
.end method

.method private resizeFor(I)V
    .registers 11
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 128
    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    .line 129
    .local v2, "newlen":I
    new-array v3, v2, [C

    .line 131
    .local v3, "newtext":[C
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 133
    .local v0, "after":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int v7, v2, v0

    invoke-static {v5, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v5, :cond_55

    .line 138
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_3e

    .line 139
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    .line 140
    :cond_3e
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_52

    .line 141
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    .line 137
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 144
    :cond_55
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v5

    .line 145
    .local v4, "oldlen":I
    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 146
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 148
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_72

    .line 149
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :cond_72
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 905
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 906
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 908
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 909
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 911
    :cond_14
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I
    .param p4, "st"    # I
    .param p5, "en"    # I

    .prologue
    .line 923
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 924
    .local v9, "recip":[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 926
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12
    if-ge v7, v8, :cond_22

    .line 927
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 926
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 929
    :cond_22
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 914
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 915
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 917
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 918
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 920
    :cond_14
    return-void
.end method

.method private sendTextChange([Landroid/text/TextWatcher;III)V
    .registers 8
    .param p1, "recip"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 889
    array-length v1, p1

    .line 891
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 892
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 894
    :cond_c
    return-void
.end method

.method private sendTextHasChanged([Landroid/text/TextWatcher;)V
    .registers 5
    .param p1, "recip"    # [Landroid/text/TextWatcher;

    .prologue
    .line 897
    array-length v1, p1

    .line 899
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 900
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 902
    :cond_c
    return-void
.end method

.method private sendTextWillChange(III)[Landroid/text/TextWatcher;
    .registers 9
    .param p1, "start"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    .line 878
    add-int v3, p1, p2

    const-class v4, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/TextWatcher;

    .line 879
    .local v2, "recip":[Landroid/text/TextWatcher;
    array-length v1, v2

    .line 881
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_16

    .line 882
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 885
    :cond_16
    return-object v2
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .registers 27
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    .prologue
    .line 524
    move/from16 v7, p3

    .line 525
    .local v7, "nstart":I
    move/from16 v8, p4

    .line 527
    .local v8, "nend":I
    const-string/jumbo v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 529
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_36

    .line 530
    if-eqz p3, :cond_36

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-eq v0, v3, :cond_36

    .line 531
    add-int/lit8 v3, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    .line 533
    .local v9, "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_36

    .line 534
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 538
    .end local v9    # "c":C
    :cond_36
    and-int/lit8 v3, p5, 0xf

    const/4 v4, 0x3

    if-ne v3, v4, :cond_59

    .line 539
    if-eqz p4, :cond_59

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-eq v0, v3, :cond_59

    .line 540
    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    .line 542
    .restart local v9    # "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_59

    .line 543
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 547
    .end local v9    # "c":C
    :cond_59
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v3, :cond_c6

    .line 548
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    .line 556
    :cond_67
    :goto_67
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v3, :cond_ea

    .line 557
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    .line 565
    :cond_75
    :goto_75
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 566
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 568
    .local v18, "spans":[Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_80
    if-ge v12, v10, :cond_10e

    .line 569
    aget-object v3, v18, v12

    move-object/from16 v0, p2

    if-ne v3, v0, :cond_10a

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v3, v12

    .line 571
    .local v5, "ostart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v3, v12

    .line 573
    .local v6, "oend":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v3, :cond_9f

    .line 574
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v3

    .line 575
    :cond_9f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v3, :cond_aa

    .line 576
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v6, v3

    .line 578
    :cond_aa
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v3, v12

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v3, v12

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v3, v12

    .line 582
    if-eqz p1, :cond_c5

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 583
    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 615
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    :cond_c5
    :goto_c5
    return-void

    .line 549
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v18    # "spans":[Ljava/lang/Object;
    :cond_c6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_67

    .line 550
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v11, v3, 0x4

    .line 552
    .local v11, "flag":I
    const/4 v3, 0x2

    if-eq v11, v3, :cond_e2

    const/4 v3, 0x3

    if-ne v11, v3, :cond_67

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_67

    .line 553
    :cond_e2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    goto/16 :goto_67

    .line 558
    .end local v11    # "flag":I
    :cond_ea
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_75

    .line 559
    and-int/lit8 v11, p5, 0xf

    .line 561
    .restart local v11    # "flag":I
    const/4 v3, 0x2

    if-eq v11, v3, :cond_102

    const/4 v3, 0x3

    if-ne v11, v3, :cond_75

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_75

    .line 562
    :cond_102
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    goto/16 :goto_75

    .line 568
    .end local v11    # "flag":I
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v18    # "spans":[Ljava/lang/Object;
    :cond_10a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_80

    .line 589
    :cond_10e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_199

    .line 590
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v13

    .line 591
    .local v13, "newsize":I
    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 592
    .local v16, "newspans":[Ljava/lang/Object;
    new-array v0, v13, [I

    move-object/from16 v17, v0

    .line 593
    .local v17, "newspanstarts":[I
    new-array v14, v13, [I

    .line 594
    .local v14, "newspanends":[I
    new-array v15, v13, [I

    .line 596
    .local v15, "newspanflags":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v4, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v4, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 602
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 603
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 604
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 607
    .end local v13    # "newsize":I
    .end local v14    # "newspanends":[I
    .end local v15    # "newspanflags":[I
    .end local v16    # "newspans":[Ljava/lang/Object;
    .end local v17    # "newspanstarts":[I
    :cond_199
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput-object p2, v3, v4

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput p3, v3, v4

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput p4, v3, v4

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput p5, v3, v4

    .line 611
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 613
    if-eqz p1, :cond_c5

    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_c5
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_7

    .line 97
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 99
    .end local p0    # "source":Ljava/lang/CharSequence;
    :goto_6
    return-object p0

    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .registers 3
    .param p1, "x0"    # C

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .registers 3
    .param p1, "text"    # C

    .prologue
    .line 262
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 251
    .local v1, "length":I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, "length":I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 257
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .registers 6
    .param p1, "where"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 108
    .local v0, "len":I
    if-gez p1, :cond_25

    .line 109
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_25
    if-lt p1, v0, :cond_4a

    .line 111
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_4a
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_56

    .line 115
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    .line 117
    :goto_55
    return v1

    :cond_56
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    goto :goto_55
.end method

.method public clear()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 227
    return-void
.end method

.method public clearSpans()V
    .registers 7

    .prologue
    .line 231
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2d

    .line 232
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 233
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .line 234
    .local v2, "ostart":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .line 236
    .local v1, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_19

    .line 237
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 238
    :cond_19
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_20

    .line 239
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 241
    :cond_20
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 242
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 244
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 246
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2d
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 216
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 218
    .local v6, "ret":Landroid/text/SpannableStringBuilder;
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1c

    .line 219
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 221
    :cond_1c
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1044
    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1046
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_17

    .line 1047
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1057
    :goto_16
    return-void

    .line 1048
    :cond_17
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_2b

    .line 1049
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_16

    .line 1051
    :cond_2b
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1053
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1054
    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1055
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_16
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    .registers 20
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "flags"    # I
    .param p9, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1067
    const-string v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1069
    sub-int v5, p5, p4

    .line 1070
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    .line 1071
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p5, v0, :cond_1e

    .line 1072
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 1082
    :goto_1d
    return-void

    .line 1073
    :cond_1e
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v0, :cond_39

    .line 1074
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    goto :goto_1d

    .line 1077
    :cond_39
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1078
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1079
    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 1080
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_1d
.end method

.method public getChars(II[CI)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 839
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 841
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_11

    .line 842
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    :goto_10
    return-void

    .line 843
    :cond_11
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_20

    .line 844
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10

    .line 847
    :cond_20
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 656
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 657
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 659
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 660
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_18

    .line 661
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v4, v1

    .line 663
    .local v3, "where":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_17

    .line 664
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 670
    .end local v3    # "where":I
    :cond_17
    :goto_17
    return v3

    .line 659
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 670
    :cond_1b
    const/4 v3, -0x1

    goto :goto_17
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 6
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 678
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 679
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 681
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_14

    .line 682
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_11

    .line 683
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v1

    .line 687
    :goto_10
    return v3

    .line 681
    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 687
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 634
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 635
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 637
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 638
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_18

    .line 639
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .line 641
    .local v3, "where":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_17

    .line 642
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 648
    .end local v3    # "where":I
    :cond_17
    :goto_17
    return v3

    .line 637
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 648
    :cond_1b
    const/4 v3, -0x1

    goto :goto_17
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 26
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 697
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p3, :cond_7

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .line 788
    :cond_6
    :goto_6
    return-object v13

    .line 699
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 700
    .local v15, "spanCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 701
    .local v18, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v19, v0

    .line 702
    .local v19, "starts":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 703
    .local v4, "ends":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 704
    .local v5, "flags":[I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 705
    .local v7, "gapstart":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 707
    .local v6, "gaplen":I
    const/4 v2, 0x0

    .line 708
    .local v2, "count":I
    const/4 v13, 0x0

    .line 709
    .local v13, "ret":[Ljava/lang/Object;, "[TT;"
    const/4 v14, 0x0

    .line 711
    .local v14, "ret1":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .local v8, "i":I
    move v3, v2

    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;, "TT;"
    .local v3, "count":I
    :goto_2c
    if-ge v8, v15, :cond_d7

    .line 712
    aget v17, v19, v8

    .line 713
    .local v17, "spanStart":I
    move/from16 v0, v17

    if-le v0, v7, :cond_36

    .line 714
    sub-int v17, v17, v6

    .line 716
    :cond_36
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_41

    move v2, v3

    .line 711
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_3d
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_2c

    .line 720
    :cond_41
    aget v16, v4, v8

    .line 721
    .local v16, "spanEnd":I
    move/from16 v0, v16

    if-le v0, v7, :cond_49

    .line 722
    sub-int v16, v16, v6

    .line 724
    :cond_49
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_51

    move v2, v3

    .line 725
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 728
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_51
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_6d

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_6d

    .line 729
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_65

    move v2, v3

    .line 730
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 731
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_65
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_6d

    move v2, v3

    .line 732
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 736
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_6d
    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7b

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 738
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_7b
    if-nez v3, :cond_82

    .line 740
    aget-object v14, v18, v8

    .line 741
    .restart local v14    # "ret1":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 743
    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;, "TT;"
    .restart local v3    # "count":I
    :cond_82
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_9e

    .line 745
    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 746
    const/16 v20, 0x0

    aput-object v14, v13, v20

    .line 749
    :cond_9e
    aget v20, v5, v8

    const/high16 v21, 0xff0000

    and-int v12, v20, v21

    .line 750
    .local v12, "prio":I
    if-eqz v12, :cond_cf

    .line 753
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_a7
    if-ge v9, v3, :cond_b9

    .line 754
    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff0000

    and-int v11, v20, v21

    .line 756
    .local v11, "p":I
    if-le v12, v11, :cond_cc

    .line 761
    .end local v11    # "p":I
    :cond_b9
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v3, v9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v9, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    aget-object v20, v18, v8

    aput-object v20, v13, v9

    .line 764
    add-int/lit8 v2, v3, 0x1

    .line 765
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_3d

    .line 753
    .end local v2    # "count":I
    .restart local v3    # "count":I
    .restart local v11    # "p":I
    :cond_cc
    add-int/lit8 v9, v9, 0x1

    goto :goto_a7

    .line 767
    .end local v9    # "j":I
    .end local v11    # "p":I
    :cond_cf
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aget-object v20, v18, v8

    aput-object v20, v13, v3

    goto/16 :goto_3d

    .line 772
    .end local v2    # "count":I
    .end local v12    # "prio":I
    .end local v16    # "spanEnd":I
    .end local v17    # "spanStart":I
    .restart local v3    # "count":I
    :cond_d7
    if-nez v3, :cond_df

    .line 773
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_6

    .line 775
    :cond_df
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_fb

    .line 777
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 778
    const/16 v20, 0x0

    aput-object v14, v13, v20

    goto/16 :goto_6

    .line 781
    :cond_fb
    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v3, v0, :cond_6

    .line 786
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v10, v20

    check-cast v10, [Ljava/lang/Object;

    .line 787
    .local v10, "nret":[Ljava/lang/Object;, "[TT;"
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v10

    .line 788
    goto/16 :goto_6
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F
    .registers 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "flags"    # I
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1142
    sub-int v5, p4, p3

    .line 1143
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    .line 1145
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_18

    .line 1146
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v9

    .line 1159
    .local v9, "ret":F
    :goto_17
    return v9

    .line 1148
    .end local v9    # "ret":F
    :cond_18
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_32

    .line 1149
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v9

    .restart local v9    # "ret":F
    goto :goto_17

    .line 1152
    .end local v9    # "ret":F
    :cond_32
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1153
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1154
    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v9

    .line 1156
    .restart local v9    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_17
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;I)F
    .registers 21
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "flags"    # I
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;
    .param p9, "reserved"    # I

    .prologue
    .line 1171
    sub-int v5, p4, p3

    .line 1172
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    .line 1174
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_1b

    .line 1175
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v10

    .line 1188
    .local v10, "ret":F
    :goto_1a
    return v10

    .line 1177
    .end local v10    # "ret":F
    :cond_1b
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_38

    .line 1178
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v10

    .restart local v10    # "ret":F
    goto :goto_1a

    .line 1181
    .end local v10    # "ret":F
    :cond_38
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1182
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1183
    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v10

    .line 1185
    .restart local v10    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_1a
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .registers 15
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "flags"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1222
    sub-int v3, p2, p1

    .line 1223
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_13

    .line 1224
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1237
    .local v7, "ret":I
    :goto_12
    return v7

    .line 1226
    .end local v7    # "ret":I
    :cond_13
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_2d

    .line 1227
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v7, v0, v2

    .restart local v7    # "ret":I
    goto :goto_12

    .line 1230
    .end local v7    # "ret":I
    :cond_2d
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1231
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1232
    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    .line 1234
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1113
    const-string v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1117
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_13

    .line 1118
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1130
    .local v1, "ret":I
    :goto_12
    return v1

    .line 1119
    .end local v1    # "ret":I
    :cond_13
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_23

    .line 1120
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_12

    .line 1123
    .end local v1    # "ret":I
    :cond_23
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1125
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1126
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1127
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 9
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 211
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 11
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 206
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1089
    const-string/jumbo v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1093
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_14

    .line 1094
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1105
    .local v1, "ret":F
    :goto_13
    return v1

    .line 1095
    .end local v1    # "ret":F
    :cond_14
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_24

    .line 1096
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1    # "ret":F
    goto :goto_13

    .line 1098
    .end local v1    # "ret":F
    :cond_24
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1100
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1101
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1102
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_13
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 14
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 797
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 798
    .local v0, "count":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 799
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 800
    .local v8, "starts":[I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 801
    .local v2, "ends":[I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 802
    .local v4, "gapstart":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 804
    .local v3, "gaplen":I
    if-nez p3, :cond_10

    .line 805
    const-class p3, Ljava/lang/Object;

    .line 808
    :cond_10
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v0, :cond_3a

    .line 809
    aget v7, v8, v5

    .line 810
    .local v7, "st":I
    aget v1, v2, v5

    .line 812
    .local v1, "en":I
    if-le v7, v4, :cond_1a

    .line 813
    sub-int/2addr v7, v3

    .line 814
    :cond_1a
    if-le v1, v4, :cond_1d

    .line 815
    sub-int/2addr v1, v3

    .line 817
    :cond_1d
    if-le v7, p1, :cond_2a

    if-ge v7, p2, :cond_2a

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 818
    move p2, v7

    .line 819
    :cond_2a
    if-le v1, p1, :cond_37

    if-ge v1, p2, :cond_37

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 820
    move p2, v1

    .line 808
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 823
    .end local v1    # "en":I
    .end local v7    # "st":I
    :cond_3a
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 621
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_f

    .line 622
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_10

    .line 623
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 627
    :cond_f
    return-void

    .line 621
    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 29
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 420
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 30
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v15, v5

    .line 427
    .local v15, "filtercount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v15, :cond_2e

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v5, v5, v16

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 431
    .local v22, "repl":Ljava/lang/CharSequence;
    if-eqz v22, :cond_2b

    .line 432
    move-object/from16 p3, v22

    .line 433
    const/16 p4, 0x0

    .line 434
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 427
    :cond_2b
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 438
    .end local v22    # "repl":Ljava/lang/CharSequence;
    :cond_2e
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_3b

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_3b

    .line 511
    :goto_3a
    return-object p0

    .line 442
    :cond_3b
    move/from16 v0, p2

    move/from16 v1, p1

    if-eq v0, v1, :cond_47

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_4b

    .line 443
    :cond_47
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)I

    goto :goto_3a

    .line 445
    :cond_4b
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v23

    .line 446
    .local v23, "selstart":I
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .line 451
    .local v12, "selend":I
    const-string/jumbo v5, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 452
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 455
    sub-int v20, p2, p1

    .line 457
    .local v20, "origlen":I
    sub-int v5, p5, p4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v21

    .line 459
    .local v21, "recipients":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_86

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 462
    :cond_86
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v16, v5, -0x1

    :goto_8c
    if-ltz v16, :cond_bd

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v5, v6, :cond_a4

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    .line 466
    :cond_a4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v5, v6, :cond_ba

    .line 467
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    .line 462
    :cond_ba
    add-int/lit8 v16, v16, -0x1

    goto :goto_8c

    .line 470
    :cond_bd
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/16 v7, 0x20

    aput-char v7, v5, v6

    .line 471
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 472
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 474
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_ee

    .line 475
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    :cond_ee
    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p1, 0x1

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v17

    .line 479
    .local v17, "inserted":I
    const/4 v6, 0x0

    add-int/lit8 v8, p1, 0x1

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    .line 480
    const/4 v6, 0x0

    add-int v7, p1, v17

    add-int v5, p1, v17

    add-int v8, v5, v20

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    .line 490
    move/from16 v0, v23

    move/from16 v1, p1

    if-le v0, v1, :cond_185

    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_185

    .line 491
    sub-int v5, v23, p1

    int-to-long v0, v5

    move-wide/from16 v18, v0

    .line 493
    .local v18, "off":J
    move/from16 v0, v17

    int-to-long v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v9, v7

    div-long v18, v5, v9

    .line 494
    move-wide/from16 v0, v18

    long-to-int v5, v0

    add-int v8, v5, p1

    .line 496
    .end local v23    # "selstart":I
    .local v8, "selstart":I
    const/4 v6, 0x0

    sget-object v7, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v10, 0x22

    move-object/from16 v5, p0

    move v9, v8

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 499
    .end local v18    # "off":J
    :goto_148
    move/from16 v0, p1

    if-le v12, v0, :cond_16f

    move/from16 v0, p2

    if-ge v12, v0, :cond_16f

    .line 500
    sub-int v5, v12, p1

    int-to-long v0, v5

    move-wide/from16 v18, v0

    .line 502
    .restart local v18    # "off":J
    move/from16 v0, v17

    int-to-long v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v9, v7

    div-long v18, v5, v9

    .line 503
    move-wide/from16 v0, v18

    long-to-int v5, v0

    add-int v12, v5, p1

    .line 505
    const/4 v10, 0x0

    sget-object v11, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v14, 0x22

    move-object/from16 v9, p0

    move v13, v12

    invoke-direct/range {v9 .. v14}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 507
    .end local v18    # "off":J
    :cond_16f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    move/from16 v3, v20

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_3a

    .end local v8    # "selstart":I
    .restart local v23    # "selstart":I
    :cond_185
    move/from16 v8, v23

    .end local v23    # "selstart":I
    .restart local v8    # "selstart":I
    goto :goto_148
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 1242
    if-nez p1, :cond_8

    .line 1243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1246
    :cond_8
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1247
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 11
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 520
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 521
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 831
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 872
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 873
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 874
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 859
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 860
    .local v1, "len":I
    new-array v0, v1, [C

    .line 862
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 863
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
