.class public Landroid/test/mock/MockContentResolver;
.super Landroid/content/ContentResolver;
.source "MockContentResolver.java"


# instance fields
.field mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    .line 96
    .local v0, "provider":Landroid/content/ContentProvider;
    if-eqz v0, :cond_f

    .line 97
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v1

    .line 99
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ContentProvider;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z

    .prologue
    .line 122
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .param p1, "provider"    # Landroid/content/IContentProvider;

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method
