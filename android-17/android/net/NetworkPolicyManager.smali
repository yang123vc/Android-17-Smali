.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_METERED:I = 0x1


# instance fields
.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .registers 4
    .param p1, "service"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_e

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing INetworkPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_e
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 67
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .registers 9
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 134
    new-instance v2, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 138
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 139
    .local v0, "cycle":Landroid/text/format/Time;
    iput v5, v0, Landroid/text/format/Time;->second:I

    iput v5, v0, Landroid/text/format/Time;->minute:I

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 140
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 142
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-ltz v3, :cond_40

    .line 145
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 146
    .local v1, "lastMonth":Landroid/text/format/Time;
    iput v5, v1, Landroid/text/format/Time;->second:I

    iput v5, v1, Landroid/text/format/Time;->minute:I

    iput v5, v1, Landroid/text/format/Time;->hour:I

    .line 147
    iput v4, v1, Landroid/text/format/Time;->monthDay:I

    .line 148
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 149
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 151
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 152
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 155
    .end local v1    # "lastMonth":Landroid/text/format/Time;
    :cond_40
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .registers 9
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    new-instance v2, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 164
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 165
    .local v0, "cycle":Landroid/text/format/Time;
    iput v5, v0, Landroid/text/format/Time;->second:I

    iput v5, v0, Landroid/text/format/Time;->minute:I

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 166
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 168
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-gtz v3, :cond_40

    .line 171
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 172
    .local v1, "nextMonth":Landroid/text/format/Time;
    iput v5, v1, Landroid/text/format/Time;->second:I

    iput v5, v1, Landroid/text/format/Time;->minute:I

    iput v5, v1, Landroid/text/format/Time;->hour:I

    .line 173
    iput v4, v1, Landroid/text/format/Time;->monthDay:I

    .line 174
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 175
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 177
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 178
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 181
    .end local v1    # "nextMonth":Landroid/text/format/Time;
    :cond_40
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    .prologue
    .line 242
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 243
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    .line 244
    const-string v0, "REJECT_METERED_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 246
    :cond_e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    .prologue
    .line 251
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 252
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    .line 253
    const-string v0, "REJECT_METERED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 255
    :cond_e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string/jumbo v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 208
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_9

    const v0, 0x1869f

    if-le p1, v0, :cond_b

    .line 210
    :cond_9
    const/4 v0, 0x0

    .line 237
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .registers 4
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "cycleDay"    # I

    .prologue
    const/4 v1, 0x1

    .line 191
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_17

    .line 193
    iget v0, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 194
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 199
    :goto_13
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 200
    return-void

    .line 197
    :cond_17
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    goto :goto_13
.end method


# virtual methods
.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .registers 3

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 86
    :goto_6
    return-object v1

    .line 85
    :catch_7
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUidPolicy(I)I
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 107
    :goto_6
    return v1

    .line 106
    :catch_7
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 116
    :goto_5
    return-void

    .line 114
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 3
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    :goto_5
    return-void

    .line 77
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setUidPolicy(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 101
    :goto_5
    return-void

    .line 99
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 123
    :goto_5
    return-void

    .line 121
    :catch_6
    move-exception v0

    goto :goto_5
.end method
