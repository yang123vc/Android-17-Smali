.class final Landroid/content/res/AssetFileDescriptor$1;
.super Ljava/lang/Object;
.source "AssetFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 327
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-direct {v0, p1}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Landroid/content/res/AssetFileDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 330
    new-array v0, p1, [Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Landroid/content/res/AssetFileDescriptor$1;->newArray(I)[Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method
