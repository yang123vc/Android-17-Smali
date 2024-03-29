.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetService$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetService$AppWidgetId;,
        Lcom/android/server/AppWidgetService$Host;,
        Lcom/android/server/AppWidgetService$Provider;
    }
.end annotation


# static fields
.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDeletedHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mNextAppWidgetId:I

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mStateLoaded:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    .line 1432
    new-instance v0, Lcom/android/server/AppWidgetService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetService$3;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 183
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AppWidgetService;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    return-void
.end method

.method private decrementAppWidgetServiceRefCount(I)V
    .registers 6
    .param p1, "appWidgetId"    # I

    .prologue
    .line 641
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 643
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 644
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 645
    .local v2, "key":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 646
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 649
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 650
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetService;->destroyRemoteViewsService(Landroid/content/Intent;)V

    .line 651
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 655
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/content/Intent$FilterComparison;
    :cond_39
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 596
    new-instance v0, Lcom/android/server/AppWidgetService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;Landroid/content/Intent;)V

    .line 618
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 620
    .local v1, "token":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 622
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    return-void

    .line 622
    :catchall_13
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private dumpAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "id"    # Lcom/android/server/AppWidgetService$AppWidgetId;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 258
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 260
    const-string v0, "    hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v0, v0, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 262
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 263
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v0, v0, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 264
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v0, :cond_4c

    .line 265
    const-string v0, "    provider="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_4c
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    if-eqz v0, :cond_5c

    .line 269
    const-string v0, "    host.callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 271
    :cond_5c
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6a

    .line 272
    const-string v0, "    views="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 274
    :cond_6a
    return-void
.end method

.method private dumpHost(Lcom/android/server/AppWidgetService$Host;ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "host"    # Lcom/android/server/AppWidgetService$Host;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 248
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget v0, p1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 250
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 251
    iget v0, p1, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 252
    const-string v0, "    callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 253
    const-string v0, "    instances.size="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 254
    const-string v0, " zombie="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 255
    return-void
.end method

.method private dumpProvider(Lcom/android/server/AppWidgetService$Provider;ILjava/io/PrintWriter;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/AppWidgetService$Provider;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 228
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 229
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 232
    const-string v1, "    min=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 233
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    const-string v1, ")   minResize=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 235
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 236
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 238
    const-string v1, " resizeMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 240
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    const-string v1, " initialLayout=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    const-string v1, " zombie="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 245
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .registers 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/server/AppWidgetService;->mStateLoaded:Z

    if-nez v0, :cond_d

    .line 221
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadAppWidgetList()V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadStateLocked()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppWidgetService;->mStateLoaded:Z

    .line 225
    :cond_d
    return-void
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I
    .registers 5
    .param p0, "p"    # Lcom/android/server/AppWidgetService$Provider;

    .prologue
    .line 1056
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1057
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    .line 1058
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1a

    .line 1059
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 1058
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1061
    :cond_1a
    return-object v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "fc"    # Landroid/content/Intent$FilterComparison;

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 630
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 635
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    return-void

    .line 632
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 633
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;
    .registers 20
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1077
    const/4 v7, 0x0

    .line 1079
    .local v7, "p":Lcom/android/server/AppWidgetService$Provider;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1080
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x0

    .line 1082
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v15, "android.appwidget.provider"

    invoke-virtual {v1, v14, v15}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 1084
    if-nez v9, :cond_39

    .line 1085
    const-string v14, "AppWidgetService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_131
    .catchall {:try_start_6 .. :try_end_32} :catchall_15a

    .line 1087
    const/4 v8, 0x0

    .line 1158
    if-eqz v9, :cond_38

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1160
    :cond_38
    :goto_38
    return-object v8

    .line 1090
    :cond_39
    :try_start_39
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1094
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_3d
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_47

    const/4 v14, 0x2

    if-ne v12, v14, :cond_3d

    .line 1098
    :cond_47
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1099
    .local v6, "nodeName":Ljava/lang/String;
    const-string v14, "appwidget-provider"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7a

    .line 1100
    const-string v14, "AppWidgetService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_73} :catch_131
    .catchall {:try_start_39 .. :try_end_73} :catchall_15a

    .line 1102
    const/4 v8, 0x0

    .line 1158
    if-eqz v9, :cond_38

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_38

    .line 1105
    :cond_7a
    :try_start_7a
    new-instance v8, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {v8}, Lcom/android/server/AppWidgetService$Provider;-><init>()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_131
    .catchall {:try_start_7a .. :try_end_7f} :catchall_15a

    .line 1106
    .end local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    .local v8, "p":Lcom/android/server/AppWidgetService$Provider;
    :try_start_7f
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v5, v8, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1107
    .local v5, "info":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1108
    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v8, Lcom/android/server/AppWidgetService$Provider;->uid:I

    .line 1110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 1113
    .local v10, "res":Landroid/content/res/Resources;
    sget-object v14, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v10, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1119
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1121
    .local v13, "value":Landroid/util/TypedValue;
    if-eqz v13, :cond_127

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_a9
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 1122
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1123
    if-eqz v13, :cond_129

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_b4
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 1124
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1126
    if-eqz v13, :cond_12b

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_c0
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 1127
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1129
    if-eqz v13, :cond_12e

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_cc
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 1131
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 1133
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 1135
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_f0

    .line 1138
    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 1140
    :cond_f0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1142
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 1144
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 1146
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 1150
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_11f} :catch_164
    .catchall {:try_start_7f .. :try_end_11f} :catchall_161

    .line 1158
    if-eqz v9, :cond_124

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_124
    move-object v7, v8

    .line 1160
    .end local v8    # "p":Lcom/android/server/AppWidgetService$Provider;
    .restart local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    goto/16 :goto_38

    .line 1121
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    .restart local v8    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_127
    const/4 v14, 0x0

    goto :goto_a9

    .line 1123
    :cond_129
    const/4 v14, 0x0

    goto :goto_b4

    .line 1126
    :cond_12b
    :try_start_12b
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    goto :goto_c0

    .line 1129
    :cond_12e
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_130} :catch_164
    .catchall {:try_start_12b .. :try_end_130} :catchall_161

    goto :goto_cc

    .line 1151
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v8    # "p":Lcom/android/server/AppWidgetService$Provider;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "type":I
    .end local v13    # "value":Landroid/util/TypedValue;
    .restart local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    :catch_131
    move-exception v4

    .line 1155
    .local v4, "e":Ljava/lang/Exception;
    :goto_132
    :try_start_132
    const-string v14, "AppWidgetService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_152
    .catchall {:try_start_132 .. :try_end_152} :catchall_15a

    .line 1156
    const/4 v8, 0x0

    .line 1158
    if-eqz v9, :cond_38

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_38

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_15a
    move-exception v14

    :goto_15b
    if-eqz v9, :cond_160

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_160
    throw v14

    .end local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v8    # "p":Lcom/android/server/AppWidgetService$Provider;
    .restart local v12    # "type":I
    :catchall_161
    move-exception v14

    move-object v7, v8

    .end local v8    # "p":Lcom/android/server/AppWidgetService$Provider;
    .restart local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    goto :goto_15b

    .line 1151
    .end local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    .restart local v8    # "p":Lcom/android/server/AppWidgetService$Provider;
    :catch_164
    move-exception v4

    move-object v7, v8

    .end local v8    # "p":Lcom/android/server/AppWidgetService$Provider;
    .restart local v7    # "p":Lcom/android/server/AppWidgetService$Provider;
    goto :goto_132
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .registers 7
    .param p1, "id"    # Lcom/android/server/AppWidgetService$AppWidgetId;

    .prologue
    .line 574
    iget v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 576
    .local v0, "appWidgetId":I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 578
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 579
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 580
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_c

    .line 581
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 583
    .local v1, "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 584
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 585
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 591
    .end local v1    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_36
    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->decrementAppWidgetServiceRefCount(I)V

    .line 592
    return-void
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 975
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 987
    :cond_c
    :goto_c
    return v1

    .line 978
    :cond_d
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 981
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 983
    .local v0, "p":Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_c

    .line 984
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    const/4 v1, 0x1

    goto :goto_c
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1518
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1523
    .local v2, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_2c

    const/4 v0, 0x0

    .line 1524
    .local v0, "N":I
    :goto_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v0, :cond_3d

    .line 1525
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1526
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1527
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_31

    .line 1524
    :cond_29
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1523
    .end local v0    # "N":I
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_15

    .line 1530
    .restart local v0    # "N":I
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "i":I
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_31
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1531
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    goto :goto_29

    .line 1534
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3d
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 325
    .local v1, "callingUid":I
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 326
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 327
    iget v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 329
    .local v0, "appWidgetId":I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 331
    .local v2, "host":Lcom/android/server/AppWidgetService$Host;
    new-instance v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 332
    .local v3, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 333
    iput-object v2, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 335
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 340
    monitor-exit v5

    return v0

    .line 341
    .end local v0    # "appWidgetId":I
    .end local v2    # "host":Lcom/android/server/AppWidgetService$Host;
    .end local v3    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_2c
    move-exception v4

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .registers 13
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x1

    .line 445
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_APPWIDGET"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindGagetId appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " provider="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 450
    .local v1, "ident":J
    :try_start_29
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_40

    .line 451
    :try_start_2c
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 453
    .local v0, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v0, :cond_45

    .line 454
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "bad appWidgetId"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    .end local v0    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_3d
    move-exception v5

    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v5
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 488
    :catchall_40
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 456
    .restart local v0    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_45
    :try_start_45
    iget-object v5, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v5, :cond_72

    .line 457
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appWidgetId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already bound to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    :cond_72
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v4

    .line 461
    .local v4, "p":Lcom/android/server/AppWidgetService$Provider;
    if-nez v4, :cond_91

    .line 462
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not a appwidget provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 464
    :cond_91
    iget-boolean v5, v4, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-eqz v5, :cond_ae

    .line 465
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 469
    :cond_ae
    iput-object v4, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 470
    iget-object v5, v4, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v5, v4, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 472
    .local v3, "instancesSize":I
    if-ne v3, v9, :cond_c0

    .line 474
    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 481
    :cond_c0
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput p1, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 484
    invoke-static {v4}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 486
    monitor-exit v6
    :try_end_d4
    .catchall {:try_start_45 .. :try_end_d4} :catchall_3d

    .line 488
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    return-void
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 19
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 494
    iget-object v12, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 495
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 496
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v6

    .line 497
    .local v6, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v6, :cond_17

    .line 498
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v13, "bad appWidgetId"

    invoke-direct {v11, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 541
    .end local v6    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_14
    move-exception v11

    monitor-exit v12
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v11

    .line 500
    .restart local v6    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_17
    :try_start_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    move-result-object v1

    .line 502
    .local v1, "componentName":Landroid/content/ComponentName;
    :try_start_1b
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v13, 0x1000

    invoke-virtual {v11, v1, v13}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 504
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    const-string v11, "android.permission.BIND_REMOTEVIEWS"

    iget-object v13, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_64

    .line 505
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_4a} :catch_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_14

    .line 509
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    :catch_4a
    move-exception v4

    .line 510
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4b
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 516
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "si":Landroid/content/pm/ServiceInfo;
    :cond_64
    const/4 v2, 0x0

    .line 517
    .local v2, "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    new-instance v5, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 518
    .local v5, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 519
    .local v7, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_91

    .line 520
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    check-cast v2, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 521
    .restart local v2    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 522
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 523
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    move-object v3, v2

    .line 528
    .end local v2    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .local v3, "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_95
    .catchall {:try_start_4b .. :try_end_95} :catchall_14

    move-result-wide v9

    .line 530
    .local v9, "token":J
    :try_start_96
    new-instance v2, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v2, v7, v0}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_b4

    .line 531
    .end local v3    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v2    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :try_start_9d
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v2, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 532
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_ba

    .line 534
    :try_start_aa
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    move/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/server/AppWidgetService;->incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 541
    monitor-exit v12

    .line 542
    return-void

    .line 534
    .end local v2    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v3    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :catchall_b4
    move-exception v11

    move-object v2, v3

    .end local v3    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v2    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :goto_b6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
    :try_end_ba
    .catchall {:try_start_aa .. :try_end_ba} :catchall_14

    :catchall_ba
    move-exception v11

    goto :goto_b6
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z
    .registers 6
    .param p1, "id"    # Lcom/android/server/AppWidgetService$AppWidgetId;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    .line 887
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v1, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v1, p2, :cond_8

    .line 901
    :cond_7
    :goto_7
    return v0

    .line 891
    :cond_8
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_12

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v1, v1, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-eq v1, p2, :cond_7

    .line 895
    :cond_12
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 901
    const/4 v0, 0x0

    goto :goto_7
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/AppWidgetService$Provider;

    .prologue
    .line 432
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1a

    .line 433
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 436
    .local v0, "token":J
    :try_start_f
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 442
    .end local v0    # "token":J
    :cond_1a
    return-void

    .line 438
    .restart local v0    # "token":J
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public deleteAllHosts()V
    .registers 8

    .prologue
    .line 368
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 369
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 370
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 371
    .local v1, "callingUid":I
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 372
    .local v0, "N":I
    const/4 v2, 0x0

    .line 373
    .local v2, "changed":Z
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_13
    if-ltz v4, :cond_28

    .line 374
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    .line 375
    .local v3, "host":Lcom/android/server/AppWidgetService$Host;
    iget v5, v3, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v5, v1, :cond_25

    .line 376
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 377
    const/4 v2, 0x1

    .line 373
    :cond_25
    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    .line 380
    .end local v3    # "host":Lcom/android/server/AppWidgetService$Host;
    :cond_28
    if-eqz v2, :cond_2d

    .line 381
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 383
    :cond_2d
    monitor-exit v6

    .line 384
    return-void

    .line 383
    .end local v0    # "N":I
    .end local v1    # "callingUid":I
    .end local v2    # "changed":Z
    .end local v4    # "i":I
    :catchall_2f
    move-exception v5

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public deleteAppWidgetId(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 346
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 348
    .local v0, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_12

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 352
    :cond_12
    monitor-exit v2

    .line 353
    return-void

    .line 352
    .end local v0    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .registers 7
    .param p1, "id"    # Lcom/android/server/AppWidgetService$AppWidgetId;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 403
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 404
    .local v0, "host":Lcom/android/server/AppWidgetService$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 407
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 409
    iget-object v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 410
    .local v2, "p":Lcom/android/server/AppWidgetService$Provider;
    if-eqz v2, :cond_57

    .line 411
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-boolean v3, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v3, :cond_57

    .line 414
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 416
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 418
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_57

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 423
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 425
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_57
    return-void
.end method

.method public deleteHost(I)V
    .registers 6
    .param p1, "hostId"    # I

    .prologue
    .line 356
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 357
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 358
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 359
    .local v0, "callingUid":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v1

    .line 360
    .local v1, "host":Lcom/android/server/AppWidgetService$Host;
    if-eqz v1, :cond_16

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 364
    :cond_16
    monitor-exit v3

    .line 365
    return-void

    .line 364
    .end local v0    # "callingUid":I
    .end local v1    # "host":Lcom/android/server/AppWidgetService$Host;
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .registers 6
    .param p1, "host"    # Lcom/android/server/AppWidgetService$Host;

    .prologue
    .line 387
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 388
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 389
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 390
    .local v2, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 388
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 392
    .end local v2    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_18
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 397
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :goto_32
    return-void

    .line 286
    :cond_33
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 287
    :try_start_36
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 288
    .local v0, "N":I
    const-string v2, "Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    if-ge v1, v0, :cond_52

    .line 290
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpProvider(Lcom/android/server/AppWidgetService$Provider;ILjava/io/PrintWriter;)V

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 293
    :cond_52
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 294
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    const-string v2, "AppWidgetIds:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    const/4 v1, 0x0

    :goto_63
    if-ge v1, v0, :cond_73

    .line 297
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;ILjava/io/PrintWriter;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 300
    :cond_73
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 301
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v2, "Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const/4 v1, 0x0

    :goto_84
    if-ge v1, v0, :cond_94

    .line 304
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpHost(Lcom/android/server/AppWidgetService$Host;ILjava/io/PrintWriter;)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 307
    :cond_94
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 308
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    const-string v2, "Deleted Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    const/4 v1, 0x0

    :goto_a5
    if-ge v1, v0, :cond_b5

    .line 311
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpProvider(Lcom/android/server/AppWidgetService$Provider;ILjava/io/PrintWriter;)V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    .line 314
    :cond_b5
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    const-string v2, "Deleted Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x0

    :goto_c6
    if-ge v1, v0, :cond_d6

    .line 318
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpHost(Lcom/android/server/AppWidgetService$Host;ILjava/io/PrintWriter;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    .line 320
    :cond_d6
    monitor-exit v3

    goto/16 :goto_32

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_d9
    move-exception v2

    monitor-exit v3
    :try_end_db
    .catchall {:try_start_36 .. :try_end_db} :catchall_d9

    throw v2
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 1175
    .local v0, "callingUid":I
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_23

    move-result v2

    .line 1180
    .local v2, "packageUid":I
    if-eq v0, v2, :cond_3d

    .line 1181
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1176
    .end local v2    # "packageUid":I
    :catch_23
    move-exception v1

    .line 1177
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1184
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageUid":I
    :cond_3d
    return v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1065
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1066
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 1068
    .local v0, "p":Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    iget v3, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v1, v3, :cond_1a

    .line 1069
    invoke-static {v0}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v1

    monitor-exit v2

    .line 1071
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_19

    .line 1073
    .end local v0    # "p":Lcom/android/server/AppWidgetService$Provider;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 658
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 659
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 661
    .local v0, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_1c

    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_1c

    .line 662
    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    monitor-exit v2

    .line 664
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1b

    .line 665
    .end local v0    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 669
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 670
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 671
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 672
    .local v0, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_10

    .line 673
    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    monitor-exit v2

    .line 675
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_f

    .line 676
    .end local v0    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
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
    .line 680
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 681
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 682
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 683
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_28

    .line 685
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 686
    .local v2, "p":Lcom/android/server/AppWidgetService$Provider;
    iget-boolean v4, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v4, :cond_25

    .line 687
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 690
    .end local v2    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_28
    monitor-exit v5

    return-object v3

    .line 691
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v4
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1165
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_13

    .line 1166
    :cond_d
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1168
    :cond_13
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1
.end method

.method loadAppWidgetList()V
    .registers 8

    .prologue
    .line 961
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 963
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 964
    .local v3, "intent":Landroid/content/Intent;
    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 967
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_21

    const/4 v0, 0x0

    .line 968
    .local v0, "N":I
    :goto_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_26

    .line 969
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 970
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 968
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 967
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_12

    .line 972
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_26
    return-void
.end method

.method loadStateLocked()V
    .registers 7

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateFile()Lcom/android/internal/os/AtomicFile;

    move-result-object v1

    .line 1207
    .local v1, "file":Lcom/android/internal/os/AtomicFile;
    :try_start_4
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 1208
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_2b

    .line 1210
    if-eqz v2, :cond_10

    .line 1212
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_2b

    .line 1220
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_10
    :goto_10
    return-void

    .line 1213
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_11
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/io/IOException;
    :try_start_12
    const-string v3, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_2a} :catch_2b

    goto :goto_10

    .line 1217
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_2b
    move-exception v0

    .line 1218
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;
    .registers 7
    .param p1, "appWidgetId"    # I

    .prologue
    .line 905
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 906
    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 907
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_23

    .line 908
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 909
    .local v3, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_20

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 913
    .end local v3    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_1f
    return-object v3

    .line 907
    .restart local v3    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 913
    .end local v3    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "hostId"    # I

    .prologue
    .line 928
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 929
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 930
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 931
    .local v1, "h":Lcom/android/server/AppWidgetService$Host;
    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v3, p1, :cond_1a

    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v3, p2, :cond_1a

    .line 935
    .end local v1    # "h":Lcom/android/server/AppWidgetService$Host;
    :goto_19
    return-object v1

    .line 929
    .restart local v1    # "h":Lcom/android/server/AppWidgetService$Host;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 935
    .end local v1    # "h":Lcom/android/server/AppWidgetService$Host;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostId"    # I

    .prologue
    .line 939
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 940
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_21

    .line 941
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 942
    .local v1, "h":Lcom/android/server/AppWidgetService$Host;
    iget v4, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v4, p3, :cond_1e

    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 951
    .end local v1    # "h":Lcom/android/server/AppWidgetService$Host;
    :goto_1d
    return-object v1

    .line 940
    .restart local v1    # "h":Lcom/android/server/AppWidgetService$Host;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 946
    .end local v1    # "h":Lcom/android/server/AppWidgetService$Host;
    :cond_21
    new-instance v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 947
    .local v2, "host":Lcom/android/server/AppWidgetService$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    .line 948
    iput p1, v2, Lcom/android/server/AppWidgetService$Host;->uid:I

    .line 949
    iput p3, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 950
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 951
    goto :goto_1d
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 917
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 918
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 919
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 920
    .local v2, "p":Lcom/android/server/AppWidgetService$Provider;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 924
    .end local v2    # "p":Lcom/android/server/AppWidgetService$Provider;
    :goto_1b
    return-object v2

    .line 918
    .restart local v2    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 924
    .end local v2    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .registers 8
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .prologue
    .line 731
    if-nez p1, :cond_3

    .line 746
    :cond_2
    :goto_2
    return-void

    .line 734
    :cond_3
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 737
    array-length v0, p1

    .line 739
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 740
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 741
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1c

    .line 742
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 743
    .local v2, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;I)V

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 745
    .end local v2    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_1c
    monitor-exit v4

    goto :goto_2

    .end local v1    # "i":I
    :catchall_1e
    move-exception v3

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw v3
.end method

.method notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;I)V
    .registers 13
    .param p1, "id"    # Lcom/android/server/AppWidgetService$AppWidgetId;
    .param p2, "viewId"    # I

    .prologue
    .line 799
    if-eqz p1, :cond_74

    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v8, :cond_74

    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v8, v8, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v8, :cond_74

    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v8, v8, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v8, :cond_74

    .line 801
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v8, :cond_21

    .line 804
    :try_start_18
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v9, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v8, v9, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_68

    .line 814
    :cond_21
    :goto_21
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v8, :cond_74

    .line 815
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 816
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$FilterComparison;

    .line 817
    .local v4, "key":Landroid/content/Intent$FilterComparison;
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    iget v9, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 818
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 820
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/AppWidgetService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetService$2;-><init>(Lcom/android/server/AppWidgetService;)V

    .line 841
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 843
    .local v6, "token":J
    :try_start_5e
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v0, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_6f

    .line 845
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 805
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "key":Landroid/content/Intent$FilterComparison;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6    # "token":J
    :catch_68
    move-exception v1

    .line 808
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_21

    .line 845
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "conn":Landroid/content/ServiceConnection;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "key":Landroid/content/Intent$FilterComparison;
    .restart local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .restart local v6    # "token":J
    :catchall_6f
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 851
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "key":Landroid/content/Intent$FilterComparison;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6    # "token":J
    :cond_74
    return-void
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 8
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 713
    if-nez p1, :cond_3

    .line 728
    :cond_2
    :goto_2
    return-void

    .line 716
    :cond_3
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 719
    array-length v0, p1

    .line 721
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 722
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 723
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1d

    .line 724
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 725
    .local v2, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 727
    .end local v2    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_1d
    monitor-exit v4

    goto :goto_2

    .end local v1    # "i":I
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v3
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .registers 3
    .param p1, "host"    # Lcom/android/server/AppWidgetService$Host;

    .prologue
    .line 955
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_11

    .line 956
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 958
    :cond_11
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 27
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 1294
    const/16 v19, 0x0

    .line 1297
    .local v19, "success":Z
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 1298
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1301
    const/16 v17, 0x0

    .line 1302
    .local v17, "providerIndex":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1304
    .local v10, "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    :cond_16
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .line 1305
    .local v21, "type":I
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_ba

    .line 1306
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1307
    .local v20, "tag":Ljava/lang/String;
    const-string v22, "p"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_105

    .line 1310
    const/16 v22, 0x0

    const-string v23, "pkg"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1311
    .local v15, "pkg":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "cl"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1313
    .local v3, "cl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_53} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_53} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_53} :catch_275
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_53} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_53} :catch_2af

    move-result-object v13

    .line 1315
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_54
    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_54 .. :try_end_64} :catch_ec
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_64} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_64} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_64} :catch_275
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_64} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_54 .. :try_end_64} :catch_2af

    .line 1322
    :goto_64
    :try_start_64
    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v11

    .line 1323
    .local v11, "p":Lcom/android/server/AppWidgetService$Provider;
    if-nez v11, :cond_ad

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_ad

    .line 1325
    new-instance v11, Lcom/android/server/AppWidgetService$Provider;

    .end local v11    # "p":Lcom/android/server/AppWidgetService$Provider;
    invoke-direct {v11}, Lcom/android/server/AppWidgetService$Provider;-><init>()V

    .line 1326
    .restart local v11    # "p":Lcom/android/server/AppWidgetService$Provider;
    new-instance v22, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v22 .. v22}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1327
    iget-object v0, v11, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1328
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v11, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    :cond_ad
    if-eqz v11, :cond_b8

    .line 1333
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catch Ljava/lang/NullPointerException; {:try_start_64 .. :try_end_b8} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_b8} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_b8} :catch_275
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_b8} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_b8} :catch_2af

    .line 1335
    :cond_b8
    add-int/lit8 v17, v17, 0x1

    .line 1395
    .end local v3    # "cl":Ljava/lang/String;
    .end local v11    # "p":Lcom/android/server/AppWidgetService$Provider;
    .end local v13    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v20    # "tag":Ljava/lang/String;
    :cond_ba
    :goto_ba
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1396
    const/16 v19, 0x1

    .line 1409
    .end local v10    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    :goto_c4
    if-eqz v19, :cond_2cc

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .local v8, "i":I
    :goto_d2
    if-ltz v8, :cond_30c

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1412
    add-int/lit8 v8, v8, -0x1

    goto :goto_d2

    .line 1316
    .end local v8    # "i":I
    .restart local v3    # "cl":Ljava/lang/String;
    .restart local v10    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v13    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "providerIndex":I
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    :catch_ec
    move-exception v4

    .line 1317
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_ef
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1319
    .local v16, "pkgs":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v15, v16, v22

    goto/16 :goto_64

    .line 1337
    .end local v3    # "cl":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v16    # "pkgs":[Ljava/lang/String;
    :cond_105
    const-string v22, "h"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a9

    .line 1338
    new-instance v7, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v7}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 1342
    .local v7, "host":Lcom/android/server/AppWidgetService$Host;
    const/16 v22, 0x0

    const-string v23, "pkg"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v7, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;
    :try_end_126
    .catch Ljava/lang/NullPointerException; {:try_start_ef .. :try_end_126} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_ef .. :try_end_126} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ef .. :try_end_126} :catch_275
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_126} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ef .. :try_end_126} :catch_2af

    .line 1344
    :try_start_126
    iget-object v0, v7, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v7, Lcom/android/server/AppWidgetService$Host;->uid:I
    :try_end_136
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_126 .. :try_end_136} :catch_184
    .catch Ljava/lang/NullPointerException; {:try_start_126 .. :try_end_136} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_126 .. :try_end_136} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_126 .. :try_end_136} :catch_275
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_136} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_126 .. :try_end_136} :catch_2af

    .line 1348
    :goto_136
    :try_start_136
    iget-boolean v0, v7, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    move/from16 v22, v0

    if-eqz v22, :cond_144

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_ba

    .line 1351
    :cond_144
    const/16 v22, 0x0

    const-string v23, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v7, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_165
    .catch Ljava/lang/NullPointerException; {:try_start_136 .. :try_end_165} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_136 .. :try_end_165} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_136 .. :try_end_165} :catch_275
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_165} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_136 .. :try_end_165} :catch_2af

    goto/16 :goto_ba

    .line 1397
    .end local v7    # "host":Lcom/android/server/AppWidgetService$Host;
    .end local v10    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_167
    move-exception v4

    .line 1398
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v22, "AppWidgetService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 1345
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "host":Lcom/android/server/AppWidgetService$Host;
    .restart local v10    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    :catch_184
    move-exception v5

    .line 1346
    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_187
    move/from16 v0, v22

    iput-boolean v0, v7, Lcom/android/server/AppWidgetService$Host;->zombie:Z
    :try_end_18b
    .catch Ljava/lang/NullPointerException; {:try_start_187 .. :try_end_18b} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_187 .. :try_end_18b} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_187 .. :try_end_18b} :catch_275
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18b} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_187 .. :try_end_18b} :catch_2af

    goto :goto_136

    .line 1399
    .end local v5    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "host":Lcom/android/server/AppWidgetService$Host;
    .end local v10    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_18c
    move-exception v4

    .line 1400
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v22, "AppWidgetService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 1356
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_1a9
    :try_start_1a9
    const-string v22, "g"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_ba

    .line 1357
    new-instance v9, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v9}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 1358
    .local v9, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v22, 0x0

    const-string v23, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 1359
    iget v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1ec

    .line 1360
    iget v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 1363
    :cond_1ec
    const/16 v22, 0x0

    const-string v23, "p"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1364
    .local v18, "providerString":Ljava/lang/String;
    if-eqz v18, :cond_21a

    .line 1368
    const/16 v22, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 1369
    .local v12, "pIndex":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 1374
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ba

    .line 1381
    .end local v12    # "pIndex":I
    :cond_21a
    const/16 v22, 0x0

    const-string v23, "h"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 1382
    .local v6, "hIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 1383
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ba

    .line 1388
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v22, v0

    if-eqz v22, :cond_259

    .line 1389
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    :cond_259
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_273
    .catch Ljava/lang/NullPointerException; {:try_start_1a9 .. :try_end_273} :catch_167
    .catch Ljava/lang/NumberFormatException; {:try_start_1a9 .. :try_end_273} :catch_18c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a9 .. :try_end_273} :catch_275
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_273} :catch_292
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a9 .. :try_end_273} :catch_2af

    goto/16 :goto_ba

    .line 1401
    .end local v6    # "hIndex":I
    .end local v9    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v10    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v18    # "providerString":Ljava/lang/String;
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_275
    move-exception v4

    .line 1402
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v22, "AppWidgetService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 1403
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_292
    move-exception v4

    .line 1404
    .local v4, "e":Ljava/io/IOException;
    const-string v22, "AppWidgetService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 1405
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2af
    move-exception v4

    .line 1406
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v22, "AppWidgetService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 1417
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2cc
    const-string v22, "AppWidgetService"

    const-string v23, "Failed to read state, clearing widgets and hosts."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1422
    .local v2, "N":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2f0
    if-ge v8, v2, :cond_30c

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1422
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f0

    .line 1426
    .end local v2    # "N":I
    :cond_30c
    return-void
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .registers 14
    .param p1, "p"    # Lcom/android/server/AppWidgetService$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    const/4 v7, 0x1

    .line 1029
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_4e

    .line 1033
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4f

    .line 1034
    .local v7, "alreadyRegistered":Z
    :goto_b
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1036
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1037
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1039
    .local v9, "token":J
    :try_start_22
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_51

    .line 1042
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    if-nez v7, :cond_4e

    .line 1045
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1046
    .local v4, "period":J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_41

    .line 1047
    const-wide/32 v4, 0x1b7740

    .line 1049
    :cond_41
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1053
    .end local v4    # "period":J
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "token":J
    :cond_4e
    return-void

    .line 1033
    :cond_4f
    const/4 v7, 0x0

    goto :goto_b

    .line 1042
    .restart local v7    # "alreadyRegistered":Z
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "token":J
    :catchall_51
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "p"    # Lcom/android/server/AppWidgetService$Provider;

    .prologue
    const/4 v4, 0x0

    .line 992
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 993
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_30

    .line 994
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 996
    .local v2, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 998
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1000
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1001
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1002
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 1003
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1004
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1006
    .end local v2    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_30
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1007
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1008
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1011
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1608
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1609
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_26

    .line 1610
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1611
    .local v3, "p":Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1612
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1609
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1620
    .end local v3    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_26
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1621
    add-int/lit8 v2, v0, -0x1

    :goto_2e
    if-ltz v2, :cond_46

    .line 1622
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 1623
    .local v1, "host":Lcom/android/server/AppWidgetService$Host;
    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1624
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1621
    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 1627
    .end local v1    # "host":Lcom/android/server/AppWidgetService$Host;
    :cond_46
    return-void
.end method

.method saveStateLocked()V
    .registers 7

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateFile()Lcom/android/internal/os/AtomicFile;

    move-result-object v1

    .line 1226
    .local v1, "file":Lcom/android/internal/os/AtomicFile;
    :try_start_4
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1227
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1228
    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1236
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_11
    return-void

    .line 1230
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_12
    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1231
    const-string v3, "AppWidgetService"

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 1233
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method savedStateFile()Lcom/android/internal/os/AtomicFile;
    .registers 4

    .prologue
    .line 1429
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/appwidgets.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V
    .registers 4
    .param p1, "p"    # Lcom/android/server/AppWidgetService$Provider;

    .prologue
    .line 1014
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1016
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1017
    return-void
.end method

.method sendInitialBroadcasts()V
    .registers 7

    .prologue
    .line 1188
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1189
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 1190
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1191
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_2f

    .line 1192
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1193
    .local v3, "p":Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2c

    .line 1194
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1195
    invoke-static {v3}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v1

    .line 1196
    .local v1, "appWidgetIds":[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1197
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1191
    .end local v1    # "appWidgetIds":[I
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1200
    .end local v3    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_2f
    monitor-exit v5

    .line 1201
    return-void

    .line 1200
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v4
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .registers 5
    .param p1, "p"    # Lcom/android/server/AppWidgetService$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 1020
    if-eqz p2, :cond_1d

    array-length v1, p2

    if-lez v1, :cond_1d

    .line 1021
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1023
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1024
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .registers 14
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 855
    .local p4, "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 856
    .local v1, "callingUid":I
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 857
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 858
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 859
    .local v2, "host":Lcom/android/server/AppWidgetService$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 861
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 863
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    .line 864
    .local v5, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 865
    .local v0, "N":I
    new-array v6, v0, [I

    .line 866
    .local v6, "updatedIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v0, :cond_30

    .line 867
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 868
    .local v4, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v7, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v7, v6, v3

    .line 869
    iget-object v7, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 871
    .end local v4    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_30
    monitor-exit v8

    return-object v6

    .line 872
    .end local v0    # "N":I
    .end local v2    # "host":Lcom/android/server/AppWidgetService$Host;
    .end local v3    # "i":I
    .end local v5    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v6    # "updatedIds":[I
    :catchall_32
    move-exception v7

    monitor-exit v8
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v7
.end method

.method public stopListening(I)V
    .registers 5
    .param p1, "hostId"    # I

    .prologue
    .line 876
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 877
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 878
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v0

    .line 879
    .local v0, "host":Lcom/android/server/AppWidgetService$Host;
    if-eqz v0, :cond_16

    .line 880
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 881
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 883
    :cond_16
    monitor-exit v2

    .line 884
    return-void

    .line 883
    .end local v0    # "host":Lcom/android/server/AppWidgetService$Host;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public systemReady(Z)V
    .registers 9
    .param p1, "safeMode"    # Z

    .prologue
    const/4 v6, 0x0

    .line 187
    iput-boolean p1, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 189
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 190
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 191
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_5d

    .line 196
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    return-void

    .line 191
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "sdFilter":Landroid/content/IntentFilter;
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .registers 9
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 546
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 547
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 552
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v1

    .line 557
    .local v1, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v1, :cond_2c

    .line 558
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 569
    .end local v1    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v3

    .line 561
    .restart local v1    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 563
    .local v0, "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 564
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 565
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .end local v0    # "conn":Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .end local v1    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_41
    monitor-exit v4

    .line 570
    return-void

    .line 567
    :cond_43
    const-string v3, "AppWidgetService"

    const-string v5, "Error (unbindRemoteViewsService): Connection not bound"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_29

    goto :goto_41
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 8
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 695
    if-nez p1, :cond_3

    .line 710
    :cond_2
    :goto_2
    return-void

    .line 698
    :cond_3
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 701
    array-length v0, p1

    .line 703
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 704
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1c

    .line 706
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 707
    .local v2, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 709
    .end local v2    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_1c
    monitor-exit v4

    goto :goto_2

    .end local v1    # "i":I
    :catchall_1e
    move-exception v3

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw v3
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "id"    # Lcom/android/server/AppWidgetService$AppWidgetId;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 770
    return-void
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V
    .registers 7
    .param p1, "id"    # Lcom/android/server/AppWidgetService$AppWidgetId;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"    # Z

    .prologue
    .line 776
    if-eqz p1, :cond_25

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_25

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_25

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v1, :cond_25

    .line 779
    if-nez p3, :cond_16

    iput-object p2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 782
    :cond_16
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_25

    .line 785
    :try_start_1c
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    .line 793
    :cond_25
    :goto_25
    return-void

    .line 786
    :catch_26
    move-exception v0

    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_25
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 13
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 749
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 750
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v5

    .line 752
    .local v5, "p":Lcom/android/server/AppWidgetService$Provider;
    if-nez v5, :cond_26

    .line 753
    const-string v6, "AppWidgetService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    monitor-exit v7

    .line 766
    :goto_25
    return-void

    .line 756
    :cond_26
    iget-object v4, v5, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    .line 757
    .local v4, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 758
    .local v1, "callingUid":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 759
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v0, :cond_45

    .line 760
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 761
    .local v3, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 762
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 759
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 765
    .end local v3    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_45
    monitor-exit v7

    goto :goto_25

    .end local v0    # "N":I
    .end local v1    # "callingUid":I
    .end local v2    # "i":I
    .end local v4    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v5    # "p":Lcom/android/server/AppWidgetService$Provider;
    :catchall_47
    move-exception v6

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v6
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 22
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1537
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1538
    .local v13, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1539
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1544
    .local v6, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_46

    const/4 v3, 0x0

    .line 1545
    .local v3, "N":I
    :goto_26
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_27
    if-ge v9, v3, :cond_10d

    .line 1546
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1547
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1548
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    const/high16 v18, 0x40000

    and-int v17, v17, v18

    if-eqz v17, :cond_4b

    .line 1545
    :cond_43
    :goto_43
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 1544
    .end local v3    # "N":I
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v9    # "i":I
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_46
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_26

    .line 1551
    .restart local v3    # "N":I
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "i":I
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4b
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_43

    .line 1552
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .local v7, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v14

    .line 1554
    .local v14, "p":Lcom/android/server/AppWidgetService$Provider;
    if-nez v14, :cond_86

    .line 1555
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v17

    if-eqz v17, :cond_43

    .line 1556
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1559
    :cond_86
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v15

    .line 1560
    .local v15, "parsed":Lcom/android/server/AppWidgetService$Provider;
    if-eqz v15, :cond_43

    .line 1561
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1563
    iget-object v0, v15, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1565
    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1566
    .local v2, "M":I
    if-lez v2, :cond_43

    .line 1567
    invoke-static {v14}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v5

    .line 1571
    .local v5, "appWidgetIds":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1572
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1574
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_ba
    if-ge v12, v2, :cond_106

    .line 1575
    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1576
    .local v10, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 1577
    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f5

    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f5

    .line 1579
    :try_start_e0
    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v17, v0

    iget v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_f5} :catch_f8

    .line 1574
    :cond_f5
    :goto_f5
    add-int/lit8 v12, v12, 0x1

    goto :goto_ba

    .line 1580
    :catch_f8
    move-exception v8

    .line 1584
    .local v8, "ex":Landroid/os/RemoteException;
    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_f5

    .line 1589
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v10    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_106
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    goto/16 :goto_43

    .line 1597
    .end local v2    # "M":I
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "appWidgetIds":[I
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v12    # "j":I
    .end local v14    # "p":Lcom/android/server/AppWidgetService$Provider;
    .end local v15    # "parsed":Lcom/android/server/AppWidgetService$Provider;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1598
    add-int/lit8 v9, v3, -0x1

    :goto_119
    if-ltz v9, :cond_15f

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppWidgetService$Provider;

    .line 1600
    .restart local v14    # "p":Lcom/android/server/AppWidgetService$Provider;
    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15c

    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15c

    .line 1602
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1598
    :cond_15c
    add-int/lit8 v9, v9, -0x1

    goto :goto_119

    .line 1605
    .end local v14    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_15f
    return-void
.end method

.method writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 14
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v8, 0x1

    .line 1242
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1243
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v5, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1244
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1245
    const/4 v9, 0x0

    const-string v10, "gs"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    const/4 v7, 0x0

    .line 1248
    .local v7, "providerIndex":I
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1249
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v0, :cond_63

    .line 1250
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppWidgetService$Provider;

    .line 1251
    .local v6, "p":Lcom/android/server/AppWidgetService$Provider;
    iget-object v9, v6, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_60

    .line 1252
    const/4 v9, 0x0

    const-string v10, "p"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1253
    const/4 v9, 0x0

    const-string v10, "pkg"

    iget-object v11, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1254
    const/4 v9, 0x0

    const-string v10, "cl"

    iget-object v11, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    const/4 v9, 0x0

    const-string v10, "p"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    iput v7, v6, Lcom/android/server/AppWidgetService$Provider;->tag:I

    .line 1257
    add-int/lit8 v7, v7, 0x1

    .line 1249
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1261
    .end local v6    # "p":Lcom/android/server/AppWidgetService$Provider;
    :cond_63
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1262
    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v0, :cond_99

    .line 1263
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    .line 1264
    .local v2, "host":Lcom/android/server/AppWidgetService$Host;
    const/4 v9, 0x0

    const-string v10, "h"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    const/4 v9, 0x0

    const-string v10, "pkg"

    iget-object v11, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1266
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    const/4 v9, 0x0

    const-string v10, "h"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    iput v3, v2, Lcom/android/server/AppWidgetService$Host;->tag:I

    .line 1262
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 1271
    .end local v2    # "host":Lcom/android/server/AppWidgetService$Host;
    :cond_99
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1272
    const/4 v3, 0x0

    :goto_a0
    if-ge v3, v0, :cond_e5

    .line 1273
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1274
    .local v4, "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v9, 0x0

    const-string v10, "g"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1276
    const/4 v9, 0x0

    const-string v10, "h"

    iget-object v11, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v11, v11, Lcom/android/server/AppWidgetService$Host;->tag:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    iget-object v9, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v9, :cond_dc

    .line 1278
    const/4 v9, 0x0

    const-string v10, "p"

    iget-object v11, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v11, v11, Lcom/android/server/AppWidgetService$Provider;->tag:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1280
    :cond_dc
    const/4 v9, 0x0

    const-string v10, "g"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1272
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 1283
    .end local v4    # "id":Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_e5
    const/4 v9, 0x0

    const-string v10, "gs"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1285
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_ee} :catch_ef

    .line 1289
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "providerIndex":I
    :goto_ee
    return v8

    .line 1287
    :catch_ef
    move-exception v1

    .line 1288
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "AppWidgetService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to write state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v8, 0x0

    goto :goto_ee
.end method
