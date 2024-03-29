.class public Lcom/android/server/location/MockProvider;
.super Ljava/lang/Object;
.source "MockProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MockProvider"


# instance fields
.field private final mAccuracy:I

.field private mEnabled:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mHasLocation:Z

.field private final mHasMonetaryCost:Z

.field private mHasStatus:Z

.field private final mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mName:Ljava/lang/String;

.field private final mPowerRequirement:I

.field private final mRequiresCell:Z

.field private final mRequiresNetwork:Z

.field private final mRequiresSatellite:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSupportsAltitude:Z

.field private final mSupportsBearing:Z

.field private final mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;
    .param p3, "requiresNetwork"    # Z
    .param p4, "requiresSatellite"    # Z
    .param p5, "requiresCell"    # Z
    .param p6, "hasMonetaryCost"    # Z
    .param p7, "supportsAltitude"    # Z
    .param p8, "supportsSpeed"    # Z
    .param p9, "supportsBearing"    # Z
    .param p10, "powerRequirement"    # I
    .param p11, "accuracy"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 63
    iput-object p1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 65
    iput-boolean p3, p0, Lcom/android/server/location/MockProvider;->mRequiresNetwork:Z

    .line 66
    iput-boolean p4, p0, Lcom/android/server/location/MockProvider;->mRequiresSatellite:Z

    .line 67
    iput-boolean p5, p0, Lcom/android/server/location/MockProvider;->mRequiresCell:Z

    .line 68
    iput-boolean p6, p0, Lcom/android/server/location/MockProvider;->mHasMonetaryCost:Z

    .line 69
    iput-boolean p7, p0, Lcom/android/server/location/MockProvider;->mSupportsAltitude:Z

    .line 70
    iput-boolean p9, p0, Lcom/android/server/location/MockProvider;->mSupportsBearing:Z

    .line 71
    iput-boolean p8, p0, Lcom/android/server/location/MockProvider;->mSupportsSpeed:Z

    .line 72
    iput p10, p0, Lcom/android/server/location/MockProvider;->mPowerRequirement:I

    .line 73
    iput p11, p0, Lcom/android/server/location/MockProvider;->mAccuracy:I

    .line 74
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 75
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 219
    return-void
.end method

.method public clearLocation()V
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    .line 177
    return-void
.end method

.method public clearStatus()V
    .registers 3

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 192
    return-void
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 83
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 87
    return-void
.end method

.method public enableLocationTracking(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 199
    return-void
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/location/MockProvider;->mAccuracy:I

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/location/MockProvider;->mPowerRequirement:I

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    if-eqz v0, :cond_f

    .line 95
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 96
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 97
    iget v0, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 99
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 6
    .param p1, "criteria"    # Landroid/location/Criteria;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/MockProvider;->mAccuracy:I

    if-ge v2, v3, :cond_10

    .line 162
    :cond_f
    :goto_f
    return v1

    .line 148
    :cond_10
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 149
    .local v0, "criteriaPower":I
    if-eqz v0, :cond_1a

    iget v2, p0, Lcom/android/server/location/MockProvider;->mPowerRequirement:I

    if-lt v0, v2, :cond_f

    .line 153
    :cond_1a
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/android/server/location/MockProvider;->mSupportsAltitude:Z

    if-eqz v2, :cond_f

    .line 156
    :cond_24
    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/android/server/location/MockProvider;->mSupportsSpeed:Z

    if-eqz v2, :cond_f

    .line 159
    :cond_2e
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-boolean v2, p0, Lcom/android/server/location/MockProvider;->mSupportsBearing:Z

    if-eqz v2, :cond_f

    .line 162
    :cond_38
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public removeListener(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 222
    return-void
.end method

.method public requestSingleShotFix()Z
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 6
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    .line 169
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v2, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 173
    :goto_10
    return-void

    .line 170
    :catch_11
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MockProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .registers 4
    .param p1, "minTime"    # J
    .param p3, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 206
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "updateTime"    # J

    .prologue
    .line 180
    iput p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 181
    iput-wide p3, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 182
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 183
    if-eqz p2, :cond_10

    .line 184
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 186
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    .line 187
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mSupportsSpeed:Z

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 212
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 209
    return-void
.end method
