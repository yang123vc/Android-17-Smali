.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 38
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 39
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .registers 11
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "curIndex":I
    array-length v4, p0

    .line 70
    .local v4, "endIndex":I
    const/4 v5, 0x0

    .line 74
    .local v5, "length":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "curIndex":I
    .local v2, "curIndex":I
    :try_start_7
    aget-byte v8, p0, v1
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_9} :catch_38
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_7 .. :try_end_9} :catch_5c

    and-int/lit16 v6, v8, 0xff

    .line 75
    .local v6, "tag":I
    const/16 v8, 0xd0

    if-ne v6, v8, :cond_4f

    .line 77
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    :try_start_11
    aget-byte v8, p0, v2
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_13} :catch_4d
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_11 .. :try_end_13} :catch_70

    and-int/lit16 v7, v8, 0xff

    .line 78
    .local v7, "temp":I
    if-ge v7, v9, :cond_24

    .line 79
    move v5, v7

    .line 104
    .end local v7    # "temp":I
    :goto_18
    sub-int v8, v4, v1

    if-ge v8, v5, :cond_66

    .line 105
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 80
    .restart local v7    # "temp":I
    :cond_24
    const/16 v8, 0x81

    if-ne v7, v8, :cond_45

    .line 81
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "curIndex":I
    .restart local v2    # "curIndex":I
    :try_start_2a
    aget-byte v8, p0, v1

    and-int/lit16 v7, v8, 0xff

    .line 82
    if-ge v7, v9, :cond_42

    .line 83
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_38} :catch_38
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2a .. :try_end_38} :catch_5c

    .line 97
    .end local v6    # "tag":I
    .end local v7    # "temp":I
    :catch_38
    move-exception v3

    move v1, v2

    .line 98
    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3a
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 86
    .end local v1    # "curIndex":I
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "curIndex":I
    .restart local v6    # "tag":I
    .restart local v7    # "temp":I
    :cond_42
    move v5, v7

    move v1, v2

    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    goto :goto_18

    .line 88
    :cond_45
    :try_start_45
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_45 .. :try_end_4d} :catch_4d
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_45 .. :try_end_4d} :catch_70

    .line 97
    .end local v7    # "temp":I
    :catch_4d
    move-exception v3

    goto :goto_3a

    .line 92
    .end local v1    # "curIndex":I
    .restart local v2    # "curIndex":I
    :cond_4f
    :try_start_4f
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I
    :try_end_54
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4f .. :try_end_54} :catch_38
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4f .. :try_end_54} :catch_5c

    move-result v8

    and-int/lit16 v9, v6, -0x81

    if-ne v8, v9, :cond_72

    .line 93
    const/4 v6, 0x0

    .line 94
    const/4 v1, 0x0

    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    goto :goto_18

    .line 99
    .end local v1    # "curIndex":I
    .end local v6    # "tag":I
    .restart local v2    # "curIndex":I
    :catch_5c
    move-exception v3

    move v1, v2

    .line 100
    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_5e
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 108
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .restart local v6    # "tag":I
    :cond_66
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    new-instance v8, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v8, v6, v0}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;)V

    return-object v8

    .line 99
    .end local v0    # "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :catch_70
    move-exception v3

    goto :goto_5e

    .end local v1    # "curIndex":I
    .restart local v2    # "curIndex":I
    :cond_72
    move v1, v2

    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    goto :goto_18
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return v0
.end method
