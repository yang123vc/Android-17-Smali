.class public abstract Landroid/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 69
    new-instance v5, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 90
    const/4 v0, 0x1

    if-ge p4, v0, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_25
    if-nez p5, :cond_2f

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseErrorHandler param value can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2f
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 98
    iput p4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    .line 99
    iput-object p5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 100
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 265
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_d

    .line 268
    :cond_24
    monitor-exit p0

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 7

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_10

    .line 218
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 220
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 226
    :cond_10
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_23

    .line 227
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1c

    .line 217
    :catchall_1c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 222
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1c

    .line 254
    :cond_21
    :goto_21
    monitor-exit p0

    return-object v3

    .line 231
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_26} :catch_28
    .catchall {:try_start_23 .. :try_end_26} :catchall_1c

    move-result-object v3

    goto :goto_21

    .line 232
    :catch_28
    move-exception v1

    .line 233
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_29
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_2e

    throw v1

    .line 234
    :cond_2e
    sget-object v3, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_1c

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_50
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 240
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_b0

    .line 244
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a2
    .catchall {:try_start_50 .. :try_end_a2} :catchall_a2

    .line 253
    .end local v2    # "path":Ljava/lang/String;
    :catchall_a2
    move-exception v3

    const/4 v4, 0x0

    :try_start_a4
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 254
    if-eqz v0, :cond_af

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_af

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_af
    throw v3
    :try_end_b0
    .catchall {:try_start_a4 .. :try_end_b0} :catchall_1c

    .line 248
    .restart local v2    # "path":Ljava/lang/String;
    :cond_b0
    :try_start_b0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 249
    sget-object v3, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 251
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d7
    .catchall {:try_start_b0 .. :try_end_d7} :catchall_a2

    .line 253
    const/4 v4, 0x0

    :try_start_d8
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 254
    if-eqz v0, :cond_21

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_21

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e3
    .catchall {:try_start_d8 .. :try_end_e3} :catchall_1c

    goto/16 :goto_21
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 9

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_10

    .line 131
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 133
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 139
    :cond_10
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_2b

    .line 140
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getWritableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1c

    .line 130
    :catchall_1c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 134
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_10

    .line 135
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1c

    .line 193
    :cond_29
    :goto_29
    monitor-exit p0

    return-object v0

    .line 149
    :cond_2b
    const/4 v1, 0x0

    .line 150
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 151
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2d
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_1c

    .line 153
    :cond_36
    const/4 v3, 0x1

    :try_start_37
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 154
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_77

    .line 155
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    :goto_42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 161
    .local v2, "version":I
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v2, v3, :cond_5d

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_94

    .line 164
    if-nez v2, :cond_85

    .line 165
    :try_start_4f
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 173
    :goto_52
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_8f

    .line 176
    :try_start_5a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    :cond_5d
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_94

    .line 181
    const/4 v1, 0x1

    .line 184
    const/4 v3, 0x0

    :try_start_62
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 185
    if-eqz v1, :cond_b1

    .line 186
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_1c

    if-eqz v3, :cond_74

    .line 187
    :try_start_6a
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_d2
    .catchall {:try_start_6a .. :try_end_6f} :catchall_1c

    .line 188
    :goto_6f
    :try_start_6f
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 190
    :cond_74
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_1c

    goto :goto_29

    .line 157
    .end local v2    # "version":I
    :cond_77
    :try_start_77
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_94

    move-result-object v0

    goto :goto_42

    .line 167
    .restart local v2    # "version":I
    :cond_85
    :try_start_85
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le v2, v3, :cond_ab

    .line 168
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8f

    goto :goto_52

    .line 176
    :catchall_8f
    move-exception v3

    :try_start_90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    .line 184
    .end local v2    # "version":I
    :catchall_94
    move-exception v3

    const/4 v4, 0x0

    :try_start_96
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 185
    if-eqz v1, :cond_c1

    .line 186
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_1c

    if-eqz v4, :cond_a8

    .line 187
    :try_start_9e
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a3} :catch_d0
    .catchall {:try_start_9e .. :try_end_a3} :catchall_1c

    .line 188
    :goto_a3
    :try_start_a3
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 190
    :cond_a8
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    :cond_aa
    :goto_aa
    throw v3
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_1c

    .line 170
    .restart local v2    # "version":I
    :cond_ab
    :try_start_ab
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_8f

    goto :goto_52

    .line 192
    :cond_b1
    :try_start_b1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_ba

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 193
    :cond_ba
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_29

    .line 192
    .end local v2    # "version":I
    :cond_c1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_ca

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 193
    :cond_ca
    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_cf
    .catchall {:try_start_b1 .. :try_end_cf} :catchall_1c

    goto :goto_aa

    .line 187
    :catch_d0
    move-exception v4

    goto :goto_a3

    .restart local v2    # "version":I
    :catch_d2
    move-exception v3

    goto :goto_6f
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 307
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 318
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
