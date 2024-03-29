.class public final Landroid/webkit/CookieSyncManager;
.super Landroid/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# static fields
.field private static sRef:Landroid/webkit/CookieSyncManager;


# instance fields
.field private mLastUpdate:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v0, "CookieSyncManager"

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private static checkInstanceIsCreated()V
    .registers 2

    .prologue
    .line 221
    sget-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    if-nez v0, :cond_c

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_c
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-class v2, Landroid/webkit/CookieSyncManager;

    monitor-enter v2

    if-nez p0, :cond_10

    .line 92
    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid context argument"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 91
    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 95
    :cond_10
    :try_start_10
    invoke-static {p0}, Landroid/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "appContext":Landroid/content/Context;
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    if-nez v1, :cond_22

    .line 98
    new-instance v1, Landroid/webkit/CookieSyncManager;

    invoke-direct {v1, v0}, Landroid/webkit/CookieSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    .line 100
    :cond_22
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_d

    monitor-exit v2

    return-object v1
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieSyncManager;
    .registers 2

    .prologue
    .line 80
    const-class v1, Landroid/webkit/CookieSyncManager;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->checkInstanceIsCreated()V

    .line 81
    sget-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private syncFromRamToFlash(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 205
    .local v0, "cookie":Landroid/webkit/CookieManager$Cookie;
    iget-byte v2, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 206
    iget-byte v2, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    if-eqz v2, :cond_24

    .line 207
    iget-object v2, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    iget-object v3, v0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    iget-object v4, v0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    iget-object v5, v0, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_24
    iget-byte v2, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_36

    .line 211
    iget-object v2, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewDatabase;->addCookie(Landroid/webkit/CookieManager$Cookie;)V

    .line 212
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->syncedACookie(Landroid/webkit/CookieManager$Cookie;)V

    goto :goto_4

    .line 214
    :cond_36
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->deleteACookie(Landroid/webkit/CookieManager$Cookie;)V

    goto :goto_4

    .line 218
    .end local v0    # "cookie":Landroid/webkit/CookieManager$Cookie;
    :cond_3e
    return-void
.end method


# virtual methods
.method clearAllCookies()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_5

    .line 131
    :goto_4
    return-void

    .line 130
    :cond_5
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCookies()V

    goto :goto_4
.end method

.method clearExpiredCookies(J)V
    .registers 4
    .param p1, "now"    # J

    .prologue
    .line 167
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_5

    .line 172
    :goto_4
    return-void

    .line 171
    :cond_5
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->clearExpiredCookies(J)V

    goto :goto_4
.end method

.method clearSessionCookies()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_5

    .line 158
    :goto_4
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearSessionCookies()V

    goto :goto_4
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_a

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewDatabase;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_9
.end method

.method hasCookies()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_6

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasCookies()Z

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic resetSync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->resetSync()V

    return-void
.end method

.method public bridge synthetic run()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->run()V

    return-void
.end method

.method public bridge synthetic startSync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->startSync()V

    return-void
.end method

.method public bridge synthetic stopSync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->stopSync()V

    return-void
.end method

.method public bridge synthetic sync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->sync()V

    return-void
.end method

.method protected syncFromRamToFlash()V
    .registers 6

    .prologue
    .line 179
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 181
    .local v2, "manager":Landroid/webkit/CookieManager;
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v3

    if-nez v3, :cond_b

    .line 199
    :goto_a
    return-void

    .line 185
    :cond_b
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 186
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->flushCookieStore()V

    goto :goto_a

    .line 188
    :cond_15
    iget-wide v3, p0, Landroid/webkit/CookieSyncManager;->mLastUpdate:J

    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->getUpdatedCookiesSince(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    .local v0, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/webkit/CookieSyncManager;->mLastUpdate:J

    .line 190
    invoke-direct {p0, v0}, Landroid/webkit/CookieSyncManager;->syncFromRamToFlash(Ljava/util/ArrayList;)V

    .line 192
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->deleteLRUDomain()Ljava/util/ArrayList;

    move-result-object v1

    .line 193
    .local v1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-direct {p0, v1}, Landroid/webkit/CookieSyncManager;->syncFromRamToFlash(Ljava/util/ArrayList;)V

    goto :goto_a
.end method
