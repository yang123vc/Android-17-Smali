.class public final Landroid/view/textservice/SuggestionsInfo;
.super Ljava/lang/Object;
.source "SuggestionsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SuggestionsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/String;

.field public static final RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:I = 0x4

.field public static final RESULT_ATTR_IN_THE_DICTIONARY:I = 0x1

.field public static final RESULT_ATTR_LOOKS_LIKE_TYPO:I = 0x2


# instance fields
.field private mCookie:I

.field private mSequence:I

.field private final mSuggestions:[Ljava/lang/String;

.field private final mSuggestionsAttributes:I

.field private final mSuggestionsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/view/textservice/SuggestionsInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/SuggestionsInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .registers 5
    .param p1, "suggestionsAttributes"    # I
    .param p2, "suggestions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 61
    if-nez p2, :cond_13

    .line 62
    sget-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 68
    :goto_e
    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    .line 69
    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    .line 70
    return-void

    .line 65
    :cond_13
    iput-object p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    goto :goto_e
.end method

.method public constructor <init>(I[Ljava/lang/String;II)V
    .registers 6
    .param p1, "suggestionsAttributes"    # I
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "sequence"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p2, :cond_13

    .line 82
    sget-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 88
    :goto_c
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 89
    iput p3, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    .line 90
    iput p4, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    .line 91
    return-void

    .line 85
    :cond_13
    iput-object p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    goto :goto_c
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_25

    :goto_22
    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 99
    return-void

    .line 98
    :cond_25
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getCookie()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    return v0
.end method

.method public getSequence()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    return v0
.end method

.method public getSuggestionAt(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 168
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSuggestionsAttributes()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    return v0
.end method

.method public getSuggestionsCount()I
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    if-nez v0, :cond_6

    .line 158
    const/4 v0, -0x1

    .line 160
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_5
.end method

.method public setCookieAndSequence(II)V
    .registers 3
    .param p1, "cookie"    # I
    .param p2, "sequence"    # I

    .prologue
    .line 123
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    .line 124
    iput p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 109
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 111
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void

    .line 113
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method
