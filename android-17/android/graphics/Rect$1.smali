.class final Landroid/graphics/Rect$1;
.super Ljava/lang/Object;
.source "Rect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Rect;
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
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 567
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 568
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 569
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Landroid/graphics/Rect$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/Rect;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 576
    new-array v0, p1, [Landroid/graphics/Rect;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Landroid/graphics/Rect$1;->newArray(I)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
