.class Lcom/android/server/net/NetworkStatsService$UidStatsKey;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidStatsKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkStatsService$UidStatsKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .registers 5
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 1658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1659
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 1660
    iput p2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    .line 1661
    iput p3, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    .line 1662
    iput p4, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    .line 1663
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsService$UidStatsKey;)I
    .registers 4
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .prologue
    .line 1682
    iget v0, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iget v1, p1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1652
    check-cast p1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->compareTo(Lcom/android/server/net/NetworkStatsService$UidStatsKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1672
    instance-of v2, p1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    if-eqz v2, :cond_25

    move-object v0, p1

    .line 1673
    check-cast v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1674
    .local v0, "key":Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-ne v2, v3, :cond_25

    const/4 v1, 0x1

    .line 1677
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_25
    return v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 1667
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
