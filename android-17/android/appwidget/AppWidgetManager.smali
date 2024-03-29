.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# static fields
.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field static final TAG:Ljava/lang/String; = "AppWidgetManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/appwidget/AppWidgetManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 228
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 207
    :try_start_3
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v3, :cond_13

    .line 208
    const-string v3, "appwidget"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 209
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 212
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 213
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    const/4 v2, 0x0

    .line 214
    .local v2, "result":Landroid/appwidget/AppWidgetManager;
    if-eqz v1, :cond_24

    .line 215
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/appwidget/AppWidgetManager;
    check-cast v2, Landroid/appwidget/AppWidgetManager;

    .line 217
    .restart local v2    # "result":Landroid/appwidget/AppWidgetManager;
    :cond_24
    if-nez v2, :cond_35

    .line 218
    new-instance v2, Landroid/appwidget/AppWidgetManager;

    .end local v2    # "result":Landroid/appwidget/AppWidgetManager;
    invoke-direct {v2, p0}, Landroid/appwidget/AppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 219
    .restart local v2    # "result":Landroid/appwidget/AppWidgetManager;
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_35
    monitor-exit v4

    return-object v2

    .line 222
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    .end local v2    # "result":Landroid/appwidget/AppWidgetManager;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v3
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 438
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 443
    return-void

    .line 440
    :catch_6
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 459
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 464
    return-void

    .line 461
    :catch_6
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 495
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 497
    :catch_7
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6
    .param p1, "appWidgetId"    # I

    .prologue
    .line 407
    :try_start_0
    sget-object v2, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 408
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_30

    .line 410
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 412
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 414
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 416
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    .line 419
    :cond_30
    return-object v1

    .line 421
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_31
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInstalledProviders()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v4}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    .line 381
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 383
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 385
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 387
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 389
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_a

    .line 394
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_3f
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "system server dead?"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_49
    return-object v3
.end method

.method public notifyAppWidgetViewDataChanged(II)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 373
    return-void
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .registers 6
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .prologue
    .line 357
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged([II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 362
    return-void

    .line 359
    :catch_6
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 323
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 324
    return-void
.end method

.method public partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 296
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 300
    return-void

    .line 297
    :catch_6
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 479
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->unbindRemoteViewsService(ILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 484
    return-void

    .line 481
    :catch_6
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 271
    return-void
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 341
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 346
    return-void

    .line 343
    :catch_6
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 247
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 252
    return-void

    .line 249
    :catch_6
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
