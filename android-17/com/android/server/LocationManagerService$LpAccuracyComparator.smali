.class Lcom/android/server/LocationManagerService$LpAccuracyComparator;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LpAccuracyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/location/LocationProviderInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LpAccuracyComparator;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/LocationManagerService$1;

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I
    .registers 5
    .param p1, "l1"    # Lcom/android/server/location/LocationProviderInterface;
    .param p2, "l2"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 728
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    invoke-interface {p2}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 725
    check-cast p1, Lcom/android/server/location/LocationProviderInterface;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/location/LocationProviderInterface;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;->compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)Z
    .registers 5
    .param p1, "l1"    # Lcom/android/server/location/LocationProviderInterface;
    .param p2, "l2"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 732
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    invoke-interface {p2}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
