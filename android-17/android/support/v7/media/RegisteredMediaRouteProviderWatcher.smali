.class final Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouter:Landroid/support/v7/media/MediaRouter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "router"    # Landroid/support/v7/media/MediaRouter;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V

    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 102
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 103
    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    .line 104
    .local v2, "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    invoke-virtual {v2, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 108
    .end local v1    # "i":I
    .end local v2    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    :goto_17
    return v1

    .line 102
    .restart local v1    # "i":I
    .restart local v2    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 108
    .end local v2    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    :cond_1b
    const/4 v1, -0x1

    goto :goto_17
.end method

.method private scanPackages()V
    .registers 14

    .prologue
    .line 68
    const/4 v7, 0x0

    .line 69
    .local v7, "targetIndex":I
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.media.MediaRouteProviderService"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "intent":Landroid/content/Intent;
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 71
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 72
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_13

    .line 73
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 74
    .local v6, "sourceIndex":I
    if-gez v6, :cond_4e

    .line 75
    new-instance v3, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v9, v10}, Landroid/support/v7/media/RegisteredMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 78
    .local v3, "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    invoke-virtual {v3}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->start()V

    .line 79
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "targetIndex":I
    .local v8, "targetIndex":I
    invoke-virtual {v9, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 80
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v9, v3}, Landroid/support/v7/media/MediaRouter;->addProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    move v7, v8

    .line 81
    .end local v8    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    goto :goto_13

    .end local v3    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    :cond_4e
    if-lt v6, v7, :cond_13

    .line 82
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    .line 83
    .restart local v3    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    invoke-virtual {v3}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->rebindIfDisconnected()V

    .line 84
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-static {v9, v6, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v7, v8

    .end local v8    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    goto :goto_13

    .line 90
    .end local v3    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "sourceIndex":I
    :cond_64
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_8e

    .line 91
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_74
    if-lt v0, v7, :cond_8e

    .line 92
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    .line 93
    .restart local v3    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v9, v3}, Landroid/support/v7/media/MediaRouter;->removeProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 94
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v3}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->stop()V

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_74

    .line 98
    .end local v0    # "i":I
    .end local v3    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    :cond_8e
    return-void
.end method


# virtual methods
.method public start()V
    .registers 4

    .prologue
    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;

    invoke-direct {v2, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V

    .line 63
    return-void
.end method
