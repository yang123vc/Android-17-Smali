.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .prologue
    .line 4336
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 4511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    .line 4336
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 10
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 4372
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$900(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    .line 4373
    .local v3, "systemApp":Z
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4380
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4381
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    if-ge v2, v0, :cond_8e

    .line 4382
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 4383
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez v3, :cond_66

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v4

    if-lez v4, :cond_66

    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 4384
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 4385
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with priority > 0, forcing to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    :cond_66
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_88

    .line 4393
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> For Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    :cond_88
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 4381
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 4397
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_8e
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .param p1, "x0"    # Landroid/content/IntentFilter;
    .param p2, "x1"    # Ljava/util/List;

    .prologue
    .line 4336
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .registers 8
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4421
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4422
    .local v1, "filterAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_25

    .line 4423
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4424
    .local v0, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_22

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_22

    .line 4426
    const/4 v3, 0x0

    .line 4429
    .end local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :goto_21
    return v3

    .line 4422
    .restart local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 4429
    .end local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_25
    const/4 v3, 0x1

    goto :goto_21
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "x0"    # Ljava/io/PrintWriter;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/content/IntentFilter;

    .prologue
    .line 4336
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p3    # "x2":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .registers 5
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 4490
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4492
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4493
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Activity;->getComponentShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4496
    return-void
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;)Z
    .registers 3
    .param p1, "x0"    # Landroid/content/IntentFilter;

    .prologue
    .line 4336
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .registers 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    const/4 v2, 0x0

    .line 4434
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4435
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_18

    .line 4436
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4437
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_18

    .line 4441
    iget-boolean v3, v1, Lcom/android/server/pm/PackageSetting;->stopped:Z

    if-eqz v3, :cond_18

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_18

    const/4 v2, 0x1

    .line 4444
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_18
    return v2
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Landroid/content/pm/ResolveInfo;
    .registers 8
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"    # I

    .prologue
    const/4 v1, 0x0

    .line 4455
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 4479
    :cond_11
    :goto_11
    return-object v1

    .line 4458
    :cond_12
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 4459
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v2, :cond_24

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    .line 4463
    :cond_24
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 4464
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4466
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_39

    .line 4467
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 4469
    :cond_39
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 4470
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v2, v2, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v2, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 4473
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 4474
    iget-boolean v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 4475
    iget v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 4476
    iget-object v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4477
    iget v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v2, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 4478
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$900(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_11
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Landroid/content/IntentFilter;
    .param p2, "x1"    # I

    .prologue
    .line 4336
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .registers 3
    .param p1, "x0"    # Landroid/content/IntentFilter;

    .prologue
    .line 4336
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->packageForFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 4449
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4345
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 4346
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_8
    invoke-super {p0, p1, p2, v0}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4340
    if-eqz p3, :cond_b

    const/high16 v0, 0x10000

    :goto_4
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 4341
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4340
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4352
    .local p4, "packageActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    if-nez p4, :cond_4

    .line 4353
    const/4 v5, 0x0

    .line 4368
    :goto_3
    return-object v5

    .line 4355
    :cond_4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 4356
    const/high16 v5, 0x10000

    and-int/2addr v5, p3

    if-eqz v5, :cond_2e

    const/4 v1, 0x1

    .line 4357
    .local v1, "defaultOnly":Z
    :goto_c
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4358
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4362
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_30

    .line 4363
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v5, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 4364
    .local v3, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2b

    .line 4365
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4362
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 4356
    .end local v0    # "N":I
    .end local v1    # "defaultOnly":Z
    .end local v2    # "i":I
    .end local v3    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    :cond_2e
    const/4 v1, 0x0

    goto :goto_c

    .line 4368
    .restart local v0    # "N":I
    .restart local v1    # "defaultOnly":Z
    .restart local v2    # "i":I
    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    :cond_30
    invoke-super {p0, p1, p2, v1, v4}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    goto :goto_3
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 8
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 4400
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4407
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4408
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    if-ge v2, v0, :cond_20

    .line 4409
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 4414
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 4408
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4416
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_20
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4484
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/server/pm/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1000()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4485
    return-void
.end method
