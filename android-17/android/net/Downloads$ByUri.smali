.class public final Landroid/net/Downloads$ByUri;
.super Landroid/net/Downloads$DownloadBase;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByUri"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final QUERY_WHERE_APP_DATA_CLAUSE:Ljava/lang/String; = "entity=?"

.field private static final QUERY_WHERE_CLAUSE:Ljava/lang/String; = "notificationpackage=? AND notificationclass=?"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 323
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "total_bytes"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/net/Downloads$DownloadBase;-><init>()V

    return-void
.end method

.method private static final getCurrentOtaDownloads(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Landroid/net/Downloads;->DOWNLOADS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Landroid/net/Downloads;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "entity=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getProgressColumnCurrentBytes()I
    .registers 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public static final getProgressColumnId()I
    .registers 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public static final getProgressColumnTotalBytes()I
    .registers 1

    .prologue
    .line 319
    const/4 v0, 0x2

    return v0
.end method

.method public static final getProgressCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 333
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, "downloadUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getStatus(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Downloads$StatusInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "redownload_threshold"    # J

    .prologue
    .line 238
    const/4 v6, 0x0

    .line 239
    .local v6, "result":Landroid/net/Downloads$StatusInfo;
    const/4 v3, 0x0

    .line 240
    .local v3, "hasFailedDownload":Z
    const-wide/16 v1, 0x0

    .line 241
    .local v1, "failedDownloadModificationTime":J
    invoke-static {p0, p1}, Landroid/net/Downloads$ByUri;->getCurrentOtaDownloads(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    move-object v7, v6

    .line 243
    .end local v6    # "result":Landroid/net/Downloads$StatusInfo;
    .local v7, "result":Landroid/net/Downloads$StatusInfo;
    :goto_9
    if-eqz v0, :cond_6c

    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 244
    if-nez v7, :cond_7d

    .line 245
    new-instance v6, Landroid/net/Downloads$StatusInfo;

    invoke-direct {v6}, Landroid/net/Downloads$StatusInfo;-><init>()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_73

    .line 247
    .end local v7    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v6    # "result":Landroid/net/Downloads$StatusInfo;
    :goto_18
    :try_start_18
    # invokes: Landroid/net/Downloads;->getStatusOfDownload(Landroid/database/Cursor;J)I
    invoke-static {v0, p2, p3}, Landroid/net/Downloads;->access$100(Landroid/database/Cursor;J)I

    move-result v8

    .line 248
    .local v8, "status":I
    const/4 v9, 0x3

    if-eq v8, v9, :cond_22

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4d

    .line 250
    :cond_22
    const/4 v9, 0x4

    if-ne v8, v9, :cond_4b

    const/4 v9, 0x1

    :goto_26
    iput-boolean v9, v6, Landroid/net/Downloads$StatusInfo;->completed:Z

    .line 251
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/Downloads$StatusInfo;->filename:Ljava/lang/String;

    .line 252
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/net/Downloads$StatusInfo;->id:J

    .line 253
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Landroid/net/Downloads$StatusInfo;->statusCode:I

    .line 254
    const/4 v9, 0x5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_44
    .catchall {:try_start_18 .. :try_end_44} :catchall_7b

    .line 271
    if-eqz v0, :cond_49

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_49
    move-object v7, v6

    .line 275
    .end local v6    # "result":Landroid/net/Downloads$StatusInfo;
    .end local v8    # "status":I
    :goto_4a
    return-object v7

    .line 250
    .restart local v6    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v8    # "status":I
    :cond_4b
    const/4 v9, 0x0

    goto :goto_26

    .line 258
    :cond_4d
    const/4 v9, 0x4

    :try_start_4e
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 259
    .local v4, "modTime":J
    if-eqz v3, :cond_5a

    cmp-long v9, v4, v1

    if-gez v9, :cond_5a

    move-object v7, v6

    .line 262
    .end local v6    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v7    # "result":Landroid/net/Downloads$StatusInfo;
    goto :goto_9

    .line 265
    .end local v7    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v6    # "result":Landroid/net/Downloads$StatusInfo;
    :cond_5a
    const/4 v3, 0x1

    .line 266
    move-wide v1, v4

    .line 267
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Landroid/net/Downloads$StatusInfo;->statusCode:I

    .line 268
    const/4 v9, 0x5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_6a
    .catchall {:try_start_4e .. :try_end_6a} :catchall_7b

    move-object v7, v6

    .line 269
    .end local v6    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v7    # "result":Landroid/net/Downloads$StatusInfo;
    goto :goto_9

    .line 271
    .end local v4    # "modTime":J
    .end local v8    # "status":I
    :cond_6c
    if-eqz v0, :cond_71

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_71
    move-object v6, v7

    .line 275
    .end local v7    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v6    # "result":Landroid/net/Downloads$StatusInfo;
    goto :goto_4a

    .line 271
    .end local v6    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v7    # "result":Landroid/net/Downloads$StatusInfo;
    :catchall_73
    move-exception v9

    move-object v6, v7

    .end local v7    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v6    # "result":Landroid/net/Downloads$StatusInfo;
    :goto_75
    if-eqz v0, :cond_7a

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v9

    .line 271
    :catchall_7b
    move-exception v9

    goto :goto_75

    .end local v6    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v7    # "result":Landroid/net/Downloads$StatusInfo;
    :cond_7d
    move-object v6, v7

    .end local v7    # "result":Landroid/net/Downloads$StatusInfo;
    .restart local v6    # "result":Landroid/net/Downloads$StatusInfo;
    goto :goto_18
.end method

.method public static final removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification_package"    # Ljava/lang/String;
    .param p2, "notification_class"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "notificationpackage=? AND notificationclass=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    return-void
.end method
