.class Landroid/net/wifi/NetworkUpdateResult;
.super Ljava/lang/Object;
.source "NetworkUpdateResult.java"


# instance fields
.field ipChanged:Z

.field netId:I

.field proxyChanged:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    .line 28
    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    .line 29
    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    .line 30
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4
    .param p1, "ip"    # Z
    .param p2, "proxy"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    .line 34
    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    .line 35
    iput-boolean p2, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getNetworkId()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    return v0
.end method

.method public hasIpChanged()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    return v0
.end method

.method public hasProxyChanged()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return v0
.end method

.method public setIpChanged(Z)V
    .registers 2
    .param p1, "ip"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    .line 48
    return-void
.end method

.method public setNetworkId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 39
    iput p1, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    .line 40
    return-void
.end method

.method public setProxyChanged(Z)V
    .registers 2
    .param p1, "proxy"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    .line 56
    return-void
.end method
