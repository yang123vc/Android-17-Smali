.class Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkStatsSettings"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1695
    return-void
.end method

.method private getSecureBoolean(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1701
    if-eqz p2, :cond_e

    move v0, v1

    .line 1702
    .local v0, "defInt":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    :goto_d
    return v1

    .end local v0    # "defInt":I
    :cond_e
    move v0, v2

    .line 1701
    goto :goto_5

    .restart local v0    # "defInt":I
    :cond_10
    move v1, v2

    .line 1702
    goto :goto_d
.end method

.method private getSecureLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getNetworkBucketDuration()J
    .registers 4

    .prologue
    .line 1712
    const-string v0, "netstats_network_bucket_duration"

    const-wide/32 v1, 0x36ee80

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkMaxHistory()J
    .registers 4

    .prologue
    .line 1715
    const-string v0, "netstats_network_max_history"

    const-wide v1, 0x1cf7c5800L

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersistThreshold()J
    .registers 4

    .prologue
    .line 1709
    const-string v0, "netstats_persist_threshold"

    const-wide/32 v1, 0x200000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollInterval()J
    .registers 4

    .prologue
    .line 1706
    const-string v0, "netstats_poll_interval"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagMaxHistory()J
    .registers 4

    .prologue
    .line 1724
    const-string v0, "netstats_tag_max_history"

    const-wide v1, 0x9a7ec800L

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeCacheMaxAge()J
    .registers 3

    .prologue
    .line 1727
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public getUidBucketDuration()J
    .registers 4

    .prologue
    .line 1718
    const-string v0, "netstats_uid_bucket_duration"

    const-wide/32 v1, 0x6ddd00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidMaxHistory()J
    .registers 4

    .prologue
    .line 1721
    const-string v0, "netstats_uid_max_history"

    const-wide v1, 0x1cf7c5800L

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
