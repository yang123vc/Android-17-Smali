.class Landroid/server/BluetoothService$RemoteService;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteService"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public uuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    .line 182
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 185
    instance-of v2, p1, Landroid/server/BluetoothService$RemoteService;

    if-eqz v2, :cond_1d

    move-object v0, p1

    .line 186
    check-cast v0, Landroid/server/BluetoothService$RemoteService;

    .line 187
    .local v0, "service":Landroid/server/BluetoothService$RemoteService;
    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    iget-object v3, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    iget-object v3, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    .line 189
    .end local v0    # "service":Landroid/server/BluetoothService$RemoteService;
    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 194
    const/4 v0, 0x1

    .line 195
    .local v0, "hash":I
    iget-object v1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    if-nez v1, :cond_12

    move v1, v2

    :goto_7
    add-int/lit8 v0, v1, 0x1f

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    if-nez v3, :cond_19

    :goto_f
    add-int v0, v1, v2

    .line 197
    return v0

    .line 195
    :cond_12
    iget-object v1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    .line 196
    :cond_19
    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->hashCode()I

    move-result v2

    goto :goto_f
.end method
