.class public Landroid/content/pm/ParceledListSlice;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_IPC_SIZE:I = 0x40000


# instance fields
.field private mIsLastSlice:Z

.field private mNumItems:I

.field private mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 142
    new-instance v0, Landroid/content/pm/ParceledListSlice$1;

    invoke-direct {v0}, Landroid/content/pm/ParceledListSlice$1;-><init>()V

    sput-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IZ)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "numItems"    # I
    .param p3, "lastSlice"    # Z

    .prologue
    .line 48
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 50
    iput p2, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    .line 51
    iput-boolean p3, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;IZLandroid/content/pm/ParceledListSlice$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Landroid/content/pm/ParceledListSlice$1;

    .prologue
    .line 31
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;IZ)V

    return-void
.end method


# virtual methods
.method public append(Landroid/os/Parcelable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, "item":Landroid/os/Parcelable;, "TT;"
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    if-nez v1, :cond_d

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParceledListSlice has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_d
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-interface {p1, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    iget v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    .line 95
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/high16 v2, 0x40000

    if-le v1, v2, :cond_23

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 56
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isLastSlice()Z
    .registers 2

    .prologue
    .line 138
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    iget-boolean v0, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    return v0
.end method

.method public populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "item":Landroid/os/Parcelable;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v2, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    if-ge v0, v2, :cond_1a

    .line 113
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Landroid/os/Parcelable;, "TT;"
    check-cast v1, Landroid/os/Parcelable;

    .line 114
    .restart local v1    # "item":Landroid/os/Parcelable;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 117
    :cond_1a
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 120
    return-object v1
.end method

.method public setLastSlice(Z)V
    .registers 2
    .param p1, "lastSlice"    # Z

    .prologue
    .line 129
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    iput-boolean p1, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    .line 130
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    const/4 v2, 0x0

    .line 66
    iget v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v1, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    if-lez v1, :cond_20

    .line 70
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 71
    .local v0, "parcelSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 75
    .end local v0    # "parcelSize":I
    :cond_20
    iput v2, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    .line 76
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 78
    return-void

    :cond_2b
    move v1, v2

    .line 67
    goto :goto_b
.end method
