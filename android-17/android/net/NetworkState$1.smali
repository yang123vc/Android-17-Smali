.class final Landroid/net/NetworkState$1;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkState;
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
        "Landroid/net/NetworkState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Landroid/net/NetworkState;

    invoke-direct {v0, p1}, Landroid/net/NetworkState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/net/NetworkState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 74
    new-array v0, p1, [Landroid/net/NetworkState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/net/NetworkState$1;->newArray(I)[Landroid/net/NetworkState;

    move-result-object v0

    return-object v0
.end method
