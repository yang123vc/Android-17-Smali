.class final Landroid/content/pm/PermissionInfo$1;
.super Ljava/lang/Object;
.source "PermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PermissionInfo;
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
        "Landroid/content/pm/PermissionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PermissionInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    new-instance v0, Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/PermissionInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/content/pm/PermissionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/PermissionInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 145
    new-array v0, p1, [Landroid/content/pm/PermissionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/content/pm/PermissionInfo$1;->newArray(I)[Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method
