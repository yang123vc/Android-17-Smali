.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x4

    .line 48
    new-array v0, v3, [[C

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [C

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    .line 217
    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    .line 48
    :array_30
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_3e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
    .end array-data

    nop

    :array_4e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_5e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 6
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 68
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 69
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 71
    if-eqz p1, :cond_17

    const/4 v2, 0x1

    :goto_b
    if-eqz p2, :cond_e

    const/4 v1, 0x2

    :cond_e
    or-int v0, v2, v1

    .line 72
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 73
    return-void

    .end local v0    # "kind":I
    :cond_17
    move v2, v1

    .line 71
    goto :goto_b
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .registers 5
    .param p0, "accepted"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 107
    .local v0, "dim":Landroid/text/method/DigitsKeyListener;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 110
    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .registers 5
    .param p0, "sign"    # Z
    .param p1, "decimal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p0, :cond_14

    const/4 v2, 0x1

    :goto_4
    if-eqz p1, :cond_7

    const/4 v1, 0x2

    :cond_7
    or-int v0, v2, v1

    .line 90
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_16

    .line 91
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    .line 94
    :goto_13
    return-object v1

    .end local v0    # "kind":I
    :cond_14
    move v2, v1

    .line 88
    goto :goto_4

    .line 93
    .restart local v0    # "kind":I
    :cond_16
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    .line 94
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_13
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 17
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 127
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 129
    .local v4, "out":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_d

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_d

    .line 213
    .end local v4    # "out":Ljava/lang/CharSequence;
    :cond_c
    :goto_c
    return-object v4

    .line 133
    .restart local v4    # "out":Ljava/lang/CharSequence;
    :cond_d
    if-eqz v4, :cond_15

    .line 134
    move-object p1, v4

    .line 135
    const/4 p2, 0x0

    .line 136
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 139
    :cond_15
    const/4 v5, -0x1

    .line 140
    .local v5, "sign":I
    const/4 v1, -0x1

    .line 141
    .local v1, "decimal":I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 147
    .local v2, "dlen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, p5, :cond_30

    .line 148
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 150
    .local v0, "c":C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_2a

    .line 151
    move v5, v3

    .line 147
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 152
    :cond_2a
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_27

    .line 153
    move v1, v3

    goto :goto_27

    .line 156
    .end local v0    # "c":C
    :cond_30
    move/from16 v3, p6

    :goto_32
    if-ge v3, v2, :cond_47

    .line 157
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 159
    .restart local v0    # "c":C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_3f

    .line 160
    const-string v4, ""

    goto :goto_c

    .line 161
    :cond_3f
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_44

    .line 162
    move v1, v3

    .line 156
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 173
    .end local v0    # "c":C
    :cond_47
    const/4 v7, 0x0

    .line 175
    .local v7, "stripped":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v3, p3, -0x1

    :goto_4a
    if-lt v3, p2, :cond_85

    .line 176
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 177
    .restart local v0    # "c":C
    const/4 v6, 0x0

    .line 179
    .local v6, "strip":Z
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_69

    .line 180
    if-ne v3, p2, :cond_59

    if-eqz p5, :cond_63

    .line 181
    :cond_59
    const/4 v6, 0x1

    .line 195
    :cond_5a
    :goto_5a
    if-eqz v6, :cond_82

    .line 196
    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_73

    .line 197
    const-string v4, ""

    goto :goto_c

    .line 182
    :cond_63
    if-ltz v5, :cond_67

    .line 183
    const/4 v6, 0x1

    goto :goto_5a

    .line 185
    :cond_67
    move v5, v3

    goto :goto_5a

    .line 187
    :cond_69
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_5a

    .line 188
    if-ltz v1, :cond_71

    .line 189
    const/4 v6, 0x1

    goto :goto_5a

    .line 191
    :cond_71
    move v1, v3

    goto :goto_5a

    .line 200
    :cond_73
    if-nez v7, :cond_7a

    .line 201
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7    # "stripped":Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 204
    .restart local v7    # "stripped":Landroid/text/SpannableStringBuilder;
    :cond_7a
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 175
    :cond_82
    add-int/lit8 v3, v3, -0x1

    goto :goto_4a

    .line 208
    .end local v0    # "c":C
    .end local v6    # "strip":Z
    :cond_85
    if-eqz v7, :cond_89

    move-object v4, v7

    .line 209
    goto :goto_c

    .line 210
    :cond_89
    if-nez v4, :cond_c

    .line 213
    const/4 v4, 0x0

    goto :goto_c
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .registers 3

    .prologue
    .line 114
    const/4 v0, 0x2

    .line 115
    .local v0, "contentType":I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_7

    .line 116
    or-int/lit16 v0, v0, 0x1000

    .line 118
    :cond_7
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_d

    .line 119
    or-int/lit16 v0, v0, 0x2000

    .line 121
    :cond_d
    return v0
.end method
