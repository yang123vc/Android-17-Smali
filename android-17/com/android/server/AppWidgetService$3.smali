.class Lcom/android/server/AppWidgetService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .registers 2

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1436
    .local v2, "action":Ljava/lang/String;
    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    .line 1514
    :cond_13
    :goto_13
    return-void

    .line 1438
    :cond_14
    const-string v15, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_84

    .line 1439
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 1440
    .local v13, "revised":Ljava/util/Locale;
    if-eqz v13, :cond_36

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    if-eqz v15, :cond_36

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    invoke-virtual {v13, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 1442
    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iput-object v13, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    .line 1444
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1445
    :try_start_45
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    # invokes: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1447
    .local v1, "N":I
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_58
    if-ltz v7, :cond_78

    .line 1448
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppWidgetService$Provider;

    .line 1449
    .local v10, "p":Lcom/android/server/AppWidgetService$Provider;
    iget-object v15, v10, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v15, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1450
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1447
    add-int/lit8 v7, v7, -0x1

    goto :goto_58

    .line 1452
    .end local v10    # "p":Lcom/android/server/AppWidgetService$Provider;
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_78
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1453
    monitor-exit v16

    goto :goto_13

    .end local v1    # "N":I
    .end local v7    # "i":I
    :catchall_81
    move-exception v15

    monitor-exit v16
    :try_end_83
    .catchall {:try_start_45 .. :try_end_83} :catchall_81

    throw v15

    .line 1456
    .end local v13    # "revised":Ljava/util/Locale;
    :cond_84
    const/4 v3, 0x0

    .line 1457
    .local v3, "added":Z
    const/4 v5, 0x0

    .line 1458
    .local v5, "changed":Z
    const/4 v11, 0x0

    .line 1459
    .local v11, "pkgList":[Ljava/lang/String;
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d6

    .line 1460
    const-string v15, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1461
    const/4 v3, 0x1

    .line 1478
    :goto_98
    if-eqz v11, :cond_13

    array-length v15, v11

    if-eqz v15, :cond_13

    .line 1481
    if-nez v3, :cond_a1

    if-eqz v5, :cond_125

    .line 1482
    :cond_a1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1483
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    # invokes: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1485
    .local v6, "extras":Landroid/os/Bundle;
    if-nez v5, :cond_c5

    if-eqz v6, :cond_107

    const-string v15, "android.intent.extra.REPLACING"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_107

    .line 1487
    :cond_c5
    move-object v4, v11

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_c8
    if-ge v8, v9, :cond_118

    aget-object v12, v4, v8

    .line 1489
    .restart local v12    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_aa .. :try_end_d3} :catchall_122

    .line 1487
    add-int/lit8 v8, v8, 0x1

    goto :goto_c8

    .line 1462
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_d6
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e8

    .line 1463
    const-string v15, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1464
    const/4 v3, 0x0

    goto :goto_98

    .line 1466
    :cond_e8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 1467
    .local v14, "uri":Landroid/net/Uri;
    if-eqz v14, :cond_13

    .line 1470
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 1471
    .restart local v12    # "pkgName":Ljava/lang/String;
    if-eqz v12, :cond_13

    .line 1474
    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/String;

    .end local v11    # "pkgList":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v12, v11, v15

    .line 1475
    .restart local v11    # "pkgList":[Ljava/lang/String;
    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1476
    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_98

    .line 1493
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_107
    move-object v4, v11

    .restart local v4    # "arr$":[Ljava/lang/String;
    :try_start_108
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_10a
    if-ge v8, v9, :cond_118

    aget-object v12, v4, v8

    .line 1494
    .restart local v12    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1493
    add-int/lit8 v8, v8, 0x1

    goto :goto_10a

    .line 1497
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1498
    monitor-exit v16

    goto/16 :goto_13

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catchall_122
    move-exception v15

    monitor-exit v16
    :try_end_124
    .catchall {:try_start_108 .. :try_end_124} :catchall_122

    throw v15

    .line 1500
    :cond_125
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1501
    .restart local v6    # "extras":Landroid/os/Bundle;
    if-eqz v6, :cond_137

    const-string v15, "android.intent.extra.REPLACING"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_13

    .line 1504
    :cond_137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1505
    :try_start_140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    # invokes: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1506
    move-object v4, v11

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_14a
    if-ge v8, v9, :cond_15f

    aget-object v12, v4, v8

    .line 1507
    .restart local v12    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1506
    add-int/lit8 v8, v8, 0x1

    goto :goto_14a

    .line 1510
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_15f
    monitor-exit v16

    goto/16 :goto_13

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catchall_162
    move-exception v15

    monitor-exit v16
    :try_end_164
    .catchall {:try_start_140 .. :try_end_164} :catchall_162

    throw v15
.end method
