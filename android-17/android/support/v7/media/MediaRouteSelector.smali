.class public final Landroid/support/v7/media/MediaRouteSelector;
.super Ljava/lang/Object;
.source "MediaRouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteSelector$1;,
        Landroid/support/v7/media/MediaRouteSelector$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroid/support/v7/media/MediaRouteSelector;

.field private static final KEY_CONTROL_CATEGORIES:Ljava/lang/String; = "controlCategories"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mControlCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    sput-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "controlCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    .line 57
    iput-object p2, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Ljava/util/List;Landroid/support/v7/media/MediaRouteSelector$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/os/Bundle;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Landroid/support/v7/media/MediaRouteSelector$1;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/media/MediaRouteSelector;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteSelector;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/media/MediaRouteSelector;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteSelector;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    return-object v0
.end method

.method private ensureControlCategories()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-nez v0, :cond_20

    .line 72
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    const-string v1, "controlCategories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 73
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 74
    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 77
    :cond_20
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 204
    if-eqz p0, :cond_9

    new-instance v0, Landroid/support/v7/media/MediaRouteSelector;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    :goto_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_8
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public contains(Landroid/support/v7/media/MediaRouteSelector;)Z
    .registers 4
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;

    .prologue
    .line 134
    if-eqz p1, :cond_11

    .line 135
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 136
    invoke-direct {p1}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 137
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 139
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 163
    instance-of v1, p1, Landroid/support/v7/media/MediaRouteSelector;

    if-eqz v1, :cond_16

    move-object v0, p1

    .line 164
    check-cast v0, Landroid/support/v7/media/MediaRouteSelector;

    .line 165
    .local v0, "other":Landroid/support/v7/media/MediaRouteSelector;
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 166
    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 167
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 169
    .end local v0    # "other":Landroid/support/v7/media/MediaRouteSelector;
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getControlCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 67
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    return-object v0
.end method

.method public hasControlCategory(Ljava/lang/String;)Z
    .registers 5
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_21

    .line 87
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 88
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 89
    .local v0, "categoryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_21

    .line 90
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 91
    const/4 v2, 0x1

    .line 95
    .end local v0    # "categoryCount":I
    .end local v1    # "i":I
    :goto_1d
    return v2

    .line 89
    .restart local v0    # "categoryCount":I
    .restart local v1    # "i":I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 95
    .end local v0    # "categoryCount":I
    .end local v1    # "i":I
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 175
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 147
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 3

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 155
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public matchesControlFilters(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz p1, :cond_35

    .line 106
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 107
    iget-object v5, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    .local v0, "categoryCount":I
    if-eqz v0, :cond_35

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 110
    .local v2, "filterCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_35

    .line 111
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 112
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_32

    .line 113
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1d
    if-ge v4, v0, :cond_32

    .line 114
    iget-object v5, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 115
    const/4 v5, 0x1

    .line 122
    .end local v0    # "categoryCount":I
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "filterCount":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :goto_2e
    return v5

    .line 113
    .restart local v0    # "categoryCount":I
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "filterCount":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 110
    .end local v4    # "j":I
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 122
    .end local v0    # "categoryCount":I
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "filterCount":I
    .end local v3    # "i":I
    :cond_35
    const/4 v5, 0x0

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "MediaRouteSelector{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "controlCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
