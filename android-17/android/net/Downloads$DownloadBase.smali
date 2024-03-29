.class public Landroid/net/Downloads$DownloadBase;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDownloadByUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookieData"    # Ljava/lang/String;
    .param p3, "showDownload"    # Z
    .param p4, "downloadDestination"    # I
    .param p5, "allowRoaming"    # Z
    .param p6, "skipIntegrityCheck"    # Z
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "notification_package"    # Ljava/lang/String;
    .param p9, "notification_class"    # Ljava/lang/String;
    .param p10, "notification_extras"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 493
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "uri"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v7, "cookiedata"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo v8, "visibility"

    if-eqz p3, :cond_78

    const/4 v7, 0x0

    :goto_1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    if-eqz p7, :cond_2b

    .line 500
    const-string/jumbo v7, "title"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_2b
    const-string v7, "entity"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x0

    .line 508
    .local v2, "destination":I
    packed-switch p4, :pswitch_data_84

    .line 525
    :goto_34
    const-string v7, "destination"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string/jumbo v7, "no_integrity"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 528
    if-eqz p8, :cond_65

    if-eqz p9, :cond_65

    .line 529
    const-string/jumbo v7, "notificationpackage"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string/jumbo v7, "notificationclass"

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-eqz p10, :cond_65

    .line 535
    const-string/jumbo v7, "notificationextras"

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_65
    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 542
    .local v5, "downloadUri":Landroid/net/Uri;
    const-wide/16 v3, -0x1

    .line 543
    .local v3, "downloadId":J
    if-eqz v5, :cond_77

    .line 544
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 546
    :cond_77
    return-wide v3

    .line 496
    .end local v2    # "destination":I
    .end local v3    # "downloadId":J
    .end local v5    # "downloadUri":Landroid/net/Uri;
    :cond_78
    const/4 v7, 0x2

    goto :goto_1a

    .line 510
    .restart local v2    # "destination":I
    :pswitch_7a
    const/4 v2, 0x0

    .line 511
    goto :goto_34

    .line 513
    :pswitch_7c
    if-eqz p5, :cond_80

    .line 514
    const/4 v2, 0x1

    goto :goto_34

    .line 516
    :cond_80
    const/4 v2, 0x3

    .line 519
    goto :goto_34

    .line 521
    :pswitch_82
    const/4 v2, 0x2

    goto :goto_34

    .line 508
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_7c
        :pswitch_82
    .end packed-switch
.end method
