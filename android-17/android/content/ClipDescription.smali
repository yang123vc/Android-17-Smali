.class public Landroid/content/ClipDescription;
.super Ljava/lang/Object;
.source "ClipDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ClipDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMETYPE_TEXT_INTENT:Ljava/lang/String; = "text/vnd.android.intent"

.field public static final MIMETYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final MIMETYPE_TEXT_URILIST:Ljava/lang/String; = "text/uri-list"


# instance fields
.field final mLabel:Ljava/lang/CharSequence;

.field final mMimeTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 202
    new-instance v0, Landroid/content/ClipDescription$1;

    invoke-direct {v0}, Landroid/content/ClipDescription$1;-><init>()V

    sput-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;)V
    .registers 3
    .param p1, "o"    # Landroid/content/ClipDescription;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iget-object v0, p1, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 79
    iget-object v0, p1, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p2, :cond_e

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mimeTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_e
    iput-object p1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 71
    iput-object p2, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "concreteType"    # Ljava/lang/String;
    .param p1, "desiredType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "typeLength":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_12

    const-string v4, "*/*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 105
    :cond_11
    :goto_11
    return v2

    .line 94
    :cond_12
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 95
    .local v0, "slashpos":I
    if-lez v0, :cond_30

    .line 96
    add-int/lit8 v4, v0, 0x2

    if-ne v1, v4, :cond_32

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_32

    .line 97
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, p0, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_30
    move v2, v3

    .line 105
    goto :goto_11

    .line 100
    :cond_32
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_11
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public filterMimeTypes(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_22

    .line 142
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 143
    if-nez v0, :cond_18

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 149
    :cond_22
    if-nez v0, :cond_26

    .line 150
    const/4 v2, 0x0

    .line 154
    :goto_25
    return-object v2

    .line 152
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 153
    .local v2, "rawArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_25
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 168
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMimeTypeCount()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 124
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 125
    const/4 v1, 0x1

    .line 128
    :goto_11
    return v1

    .line 123
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public validate()V
    .registers 5

    .prologue
    .line 173
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    if-nez v1, :cond_d

    .line 174
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null mime types"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_d
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_1b

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "must have at least 1 mime type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_1b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    .line 180
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_47

    .line 181
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mime type at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 184
    :cond_4a
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 193
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 194
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 195
    return-void
.end method
