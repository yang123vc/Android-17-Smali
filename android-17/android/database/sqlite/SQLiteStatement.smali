.class public Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# static fields
.field private static final LOCK_ACQUIRED:I = 0x2

.field private static final READ:Z = true

.field private static final TAG:Ljava/lang/String; = "SQLiteStatement"

.field private static final TRANS_STARTED:I = 0x1

.field private static final WRITE:Z


# instance fields
.field private mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 60
    return-void
.end method

.method private acquireAndLock(Z)J
    .registers 8
    .param p1, "rwFlag"    # Z

    .prologue
    const/4 v5, 0x2

    .line 216
    const/4 v3, 0x0

    iput v3, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    .line 218
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 219
    iget v3, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v3, v3, 0x40

    if-lez v3, :cond_62

    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 222
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_17
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 223
    iput-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 224
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteStatement;->setNativeHandle(I)V

    .line 225
    if-nez p1, :cond_65

    .line 226
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 237
    :goto_2d
    iget v3, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6d

    .line 238
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_41

    .line 241
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionUsingExecSqlFlag()V

    .line 252
    :cond_41
    :goto_41
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_52

    .line 253
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    .line 254
    iput v5, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    .line 257
    :cond_52
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 259
    .local v1, "startTime":J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 260
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->compileAndbindAllArgs()V

    .line 261
    return-wide v1

    .line 219
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "startTime":J
    :cond_62
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_17

    .line 228
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_65
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    goto :goto_2d

    .line 243
    :cond_6d
    iget v3, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v5, :cond_41

    .line 246
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_41

    .line 247
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 248
    const/4 v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    goto :goto_41
.end method

.method private final native native_1x1_blob_ashmem()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()I
.end method

.method private final native native_executeInsert()J
.end method

.method private final native native_executeSql(Ljava/lang/String;)V
.end method

.method private releaseAndUnlock()V
    .registers 3

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 269
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    .line 271
    :try_start_8
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_37

    .line 273
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 278
    :cond_12
    :goto_12
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    .line 282
    :cond_20
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->resetTransactionUsingExecSqlFlag()V

    .line 284
    :cond_25
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 287
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->release()V

    .line 289
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 290
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteStatement;->setNativeHandle(I)V

    .line 291
    return-void

    .line 273
    :catchall_37
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 275
    :cond_3e
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 276
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_12
.end method

.method private saveSqlAsLastSqlStatement()V
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 124
    :cond_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLastSqlStatement(Ljava/lang/String;)V

    .line 126
    :cond_15
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 71
    return-void
.end method

.method public executeInsert()J
    .registers 3

    .prologue
    .line 111
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->saveSqlAsLastSqlStatement()V

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    .line 113
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_executeInsert()J
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    move-result-wide v0

    .line 115
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-wide v0

    :catchall_f
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v0
.end method

.method public executeUpdateDelete()I
    .registers 3

    .prologue
    .line 83
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->saveSqlAsLastSqlStatement()V

    .line 84
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "numChanges":I
    iget v1, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_17

    .line 90
    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->native_executeSql(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_1c

    .line 96
    :goto_13
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return v0

    .line 92
    :cond_17
    :try_start_17
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    move-result v0

    goto :goto_13

    .line 96
    .end local v0    # "numChanges":I
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v1
.end method

.method public simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 9

    .prologue
    .line 183
    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v3

    .line 184
    .local v3, "timeStart":J
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_blob_ashmem()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 185
    .local v2, "retValue":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_14
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_10} :catch_22
    .catchall {:try_start_1 .. :try_end_10} :catchall_3e

    .line 195
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    .end local v2    # "retValue":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "timeStart":J
    :goto_13
    return-object v2

    .line 187
    :catch_14
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/io/IOException;
    :try_start_15
    const-string v5, "SQLiteStatement"

    const-string/jumbo v6, "simpleQueryForBlobFileDescriptor() failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_3e

    .line 189
    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    goto :goto_13

    .line 190
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_22
    move-exception v0

    .line 191
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_23
    new-instance v5, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_3e

    .line 195
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_3e
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v5
.end method

.method public simpleQueryForLong()J
    .registers 9

    .prologue
    .line 137
    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v3

    .line 138
    .local v3, "timeStart":J
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_long()J

    move-result-wide v1

    .line 139
    .local v1, "retValue":J
    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_10} :catch_14
    .catchall {:try_start_1 .. :try_end_10} :catchall_30

    .line 146
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-wide v1

    .line 141
    .end local v1    # "retValue":J
    .end local v3    # "timeStart":J
    :catch_14
    move-exception v0

    .line 142
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_15
    new-instance v5, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_30

    .line 146
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_30
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v5
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 160
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v2

    .line 161
    .local v2, "timeStart":J
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "retValue":Ljava/lang/String;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_10} :catch_14
    .catchall {:try_start_1 .. :try_end_10} :catchall_30

    .line 169
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-object v1

    .line 164
    .end local v1    # "retValue":Ljava/lang/String;
    .end local v2    # "timeStart":J
    :catch_14
    move-exception v0

    .line 165
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_15
    new-instance v4, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_30

    .line 169
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_30
    move-exception v4

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v4
.end method
