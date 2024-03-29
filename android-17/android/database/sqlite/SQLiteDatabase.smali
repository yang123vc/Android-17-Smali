.class public Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BEGIN_SQL:Ljava/lang/String; = "BEGIN;"

.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final DEFAULT_SQL_CACHE_SIZE:I = 0x19

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENABLE_DB_SAMPLE:Z = false

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WAIT_PERIOD:J = 0x1eL

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field private static final MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static mActiveDatabases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sBlockSize:I

.field private static sQueryLogTimeInMillis:I


# instance fields
.field private mCacheFullWarning:Z

.field private final mClosedStatementIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompiledQueries:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectionNum:S

.field volatile mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

.field private final mCustomFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mFlags:I

.field private volatile mHasAttachedDbs:Z

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field volatile mNativeHandle:I

.field mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private final mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mStackTrace:Ljava/lang/Throwable;

.field private mTransStartTime:J

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private mTransactionUsingExecSql:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_42

    move v0, v1

    :goto_b
    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v2

    const-string v3, " OR ROLLBACK "

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, " OR ABORT "

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, " OR FAIL "

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, " OR IGNORE "

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, " OR REPLACE "

    aput-object v3, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 217
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 230
    sput v2, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 261
    sput v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    return-void

    :cond_42
    move v0, v2

    .line 67
    goto :goto_b
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "flags"    # I
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p5, "connectionNum"    # S

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1936
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 200
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-direct {v1, v6}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;-><init>(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    .line 202
    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 203
    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 219
    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 234
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 237
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 255
    iput v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 267
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    .line 320
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 332
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 337
    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 384
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 1227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    .line 1937
    if-nez p1, :cond_43

    .line 1938
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "path should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1940
    :cond_43
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 1941
    iput p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    .line 1942
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 1943
    new-instance v1, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1944
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1945
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 1948
    if-nez p4, :cond_67

    new-instance p4, Landroid/database/DefaultDatabaseErrorHandler;

    .end local p4    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    invoke-direct {p4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    :cond_67
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 1949
    iput-short p5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    .line 1956
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit8 v0, v1, 0x4

    .line 1958
    .local v0, "limit":I
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->native_setSqliteSoftHeapLimit(I)V

    .line 1959
    return-void
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .registers 8
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    .prologue
    const/4 v4, 0x1

    .line 639
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 640
    const-string v3, "BEGIN;"

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->lockForced(Ljava/lang/String;)V

    .line 641
    const/4 v2, 0x0

    .line 644
    .local v2, "ok":Z
    :try_start_a
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v3

    if-le v3, v4, :cond_33

    .line 645
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_2c

    .line 646
    const-string v1, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 648
    .local v1, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "SQLiteDatabase"

    const-string v4, "beginTransaction() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    throw v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_25

    .line 677
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_25
    move-exception v3

    if-nez v2, :cond_2b

    .line 680
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    :cond_2b
    throw v3

    .line 652
    :cond_2c
    const/4 v2, 0x1

    .line 677
    if-nez v2, :cond_32

    .line 680
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 683
    :cond_32
    :goto_32
    return-void

    .line 658
    :cond_33
    if-eqz p2, :cond_58

    :try_start_35
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v3, :cond_58

    .line 659
    const-string v3, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 663
    :goto_3e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransStartTime:J

    .line 664
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 665
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 666
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_25

    .line 667
    if-eqz p1, :cond_51

    .line 669
    :try_start_4e
    invoke-interface {p1}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_51} :catch_5e
    .catchall {:try_start_4e .. :try_end_51} :catchall_25

    .line 675
    :cond_51
    const/4 v2, 0x1

    .line 677
    if-nez v2, :cond_32

    .line 680
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_32

    .line 661
    :cond_58
    :try_start_58
    const-string v3, "BEGIN IMMEDIATE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3e

    .line 670
    :catch_5e
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 672
    throw v0
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_25
.end method

.method private checkLockHoldTime()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x7d0

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 507
    .local v0, "elapsedTime":J
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v6

    .line 508
    .local v2, "lockedTime":J
    cmp-long v6, v2, v10

    if-gez v6, :cond_22

    const-string v6, "SQLiteDatabase"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_22

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_22

    .line 528
    :cond_21
    :goto_21
    return-void

    .line 513
    :cond_22
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-lez v6, :cond_21

    .line 514
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 516
    .local v5, "threadTime":I
    const/16 v6, 0x64

    if-gt v5, v6, :cond_3c

    cmp-long v6, v2, v10

    if-lez v6, :cond_21

    .line 518
    :cond_3c
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lock held on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms. Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "msg":Ljava/lang/String;
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v6, :cond_7e

    .line 522
    const-string v6, "SQLiteDatabase"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6, v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 524
    :cond_7e
    const-string v6, "SQLiteDatabase"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private closeClosable()V
    .registers 5

    .prologue
    .line 1126
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 1128
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1129
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1131
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteClosable;

    .line 1132
    .local v2, "program":Landroid/database/sqlite/SQLiteClosable;
    if-eqz v2, :cond_d

    .line 1133
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_d

    .line 1136
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    .end local v2    # "program":Landroid/database/sqlite/SQLiteClosable;
    :cond_25
    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 1080
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private native enableSqlProfiling(Ljava/lang/String;S)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;S)V
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1893
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 1894
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 1895
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 1897
    :cond_d
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1899
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_12 .. :try_end_15} :catch_1a
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f

    move-result v2

    .line 1904
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v2

    .line 1900
    :catch_1a
    move-exception v0

    .line 1901
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1902
    throw v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    .line 1904
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "tables"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1338
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1339
    .local v1, "spacepos":I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1341
    .local v0, "commapos":I
    if-lez v1, :cond_1e

    if-lt v1, v0, :cond_19

    if-gez v0, :cond_1e

    .line 1342
    :cond_19
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1346
    .end local p0    # "tables":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-object p0

    .line 1343
    .restart local p0    # "tables":Ljava/lang/String;
    :cond_1e
    if-lez v0, :cond_1d

    if-lt v0, v1, :cond_24

    if-gez v1, :cond_1d

    .line 1344
    :cond_24
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    .line 1348
    .end local v0    # "commapos":I
    .end local v1    # "spacepos":I
    :cond_29
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized getCacheHitNum()I
    .registers 2

    .prologue
    .line 2211
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->hitCount()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCacheMissNum()I
    .registers 2

    .prologue
    .line 2215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->missCount()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCachesize()I
    .registers 2

    .prologue
    .line 2219
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2455
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2459
    .local v22, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    sget-object v6, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2460
    :try_start_8
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 2461
    .local v32, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_b5

    .line 2462
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_15
    :goto_15
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/ref/WeakReference;

    .line 2463
    .local v33, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/database/sqlite/SQLiteDatabase;

    .line 2464
    .local v21, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v21, :cond_15

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2470
    :try_start_2f
    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->native_getDbLookaside()I

    move-result v8

    .line 2473
    .local v8, "lookasideUsed":I
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v31

    .line 2474
    .local v31, "path":Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    .line 2475
    .local v27, "indx":I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_b8

    add-int/lit8 v27, v27, 0x1

    move/from16 v2, v27

    :goto_48
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 2478
    .local v28, "lastnode":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v19

    .line 2479
    .local v19, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v19, :cond_15

    .line 2482
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_56
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_11e

    .line 2483
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/util/Pair;

    .line 2484
    .local v29, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".page_count;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 2490
    .local v4, "pageCount":J
    if-nez v23, :cond_ba

    .line 2491
    move-object/from16 v3, v28

    .line 2502
    .local v3, "dbName":Ljava/lang/String;
    :cond_92
    :goto_92
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_b2

    .line 2503
    new-instance v2, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v6

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v9

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v10

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v11

    invoke-direct/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_b2} :catch_179

    .line 2482
    :cond_b2
    add-int/lit8 v23, v23, 0x1

    goto :goto_56

    .line 2461
    .end local v3    # "dbName":Ljava/lang/String;
    .end local v4    # "pageCount":J
    .end local v8    # "lookasideUsed":I
    .end local v19    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v23    # "i":I
    .end local v27    # "indx":I
    .end local v28    # "lastnode":Ljava/lang/String;
    .end local v29    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31    # "path":Ljava/lang/String;
    .end local v32    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .end local v33    # "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :catchall_b5
    move-exception v2

    :try_start_b6
    monitor-exit v6
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v2

    .line 2475
    .restart local v8    # "lookasideUsed":I
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "indx":I
    .restart local v31    # "path":Ljava/lang/String;
    .restart local v32    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .restart local v33    # "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_b8
    const/4 v2, 0x0

    goto :goto_48

    .line 2494
    .restart local v4    # "pageCount":J
    .restart local v19    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v23    # "i":I
    .restart local v28    # "lastnode":Ljava/lang/String;
    .restart local v29    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ba
    const/4 v8, 0x0

    .line 2495
    :try_start_bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  (attached) "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2497
    .restart local v3    # "dbName":Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_92

    .line 2498
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 2499
    .local v26, "idx":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v6, -0x1

    move/from16 v0, v26

    if-eq v0, v6, :cond_11c

    add-int/lit8 v26, v26, 0x1

    move/from16 v6, v26

    :goto_10e
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_92

    :cond_11c
    const/4 v6, 0x0

    goto :goto_10e

    .line 2511
    .end local v3    # "dbName":Ljava/lang/String;
    .end local v4    # "pageCount":J
    .end local v26    # "idx":I
    .end local v29    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_11e
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    move-object/from16 v20, v0

    .line 2512
    .local v20, "connPool":Landroid/database/sqlite/DatabaseConnectionPool;
    if-eqz v20, :cond_15

    .line 2513
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/DatabaseConnectionPool;->getConnectionList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_12e
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/database/sqlite/SQLiteDatabase;

    .line 2514
    .local v30, "pDb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/database/sqlite/SQLiteDebug$DbStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(pooled # "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget-short v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v16

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v17

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v18

    invoke-direct/range {v9 .. v18}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_178
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bb .. :try_end_178} :catch_179

    goto :goto_12e

    .line 2519
    .end local v8    # "lookasideUsed":I
    .end local v19    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20    # "connPool":Landroid/database/sqlite/DatabaseConnectionPool;
    .end local v23    # "i":I
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v27    # "indx":I
    .end local v28    # "lastnode":Ljava/lang/String;
    .end local v30    # "pDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v31    # "path":Ljava/lang/String;
    :catch_179
    move-exception v2

    goto/16 :goto_15

    .line 2524
    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v33    # "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_17c
    return-object v22
.end method

.method private declared-synchronized getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 2399
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPathForLogs()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2050
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2051
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2061
    :goto_6
    return-object v0

    .line 2053
    :cond_7
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 2054
    const/4 v0, 0x0

    goto :goto_6

    .line 2056
    :cond_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 2057
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2061
    :goto_1c
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_6

    .line 2059
    :cond_1f
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1c
.end method

.method private isPooledConnection()Z
    .registers 2

    .prologue
    .line 2403
    iget-short v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private lock(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "forced"    # Z

    .prologue
    .line 410
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 411
    const-string v3, "SQLiteDatabase"

    const-string v4, "don\'t lock() while in a synchronized method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 414
    if-nez p2, :cond_17

    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v3, :cond_17

    .line 444
    :cond_16
    :goto_16
    return-void

    .line 415
    :cond_17
    const/4 v0, 0x0

    .line 416
    .local v0, "done":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 417
    .local v1, "timeStart":J
    :cond_1c
    :goto_1c
    if-nez v0, :cond_5d

    .line 420
    :try_start_1e
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 421
    if-nez v0, :cond_1c

    .line 424
    const-string v3, "SQLiteDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "database lock has not been available for 30 sec. Current Owner of the lock is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getOwnerDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Continuing to wait in thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_5a} :catch_5b

    goto :goto_1c

    .line 428
    :catch_5b
    move-exception v3

    goto :goto_1c

    .line 432
    :cond_5d
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v3, :cond_76

    .line 433
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 436
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 439
    :cond_76
    if-eqz p1, :cond_16

    goto :goto_16
.end method

.method private lockForced()V
    .registers 3

    .prologue
    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 469
    return-void
.end method

.method private lockForced(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 473
    return-void
.end method

.method private logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .registers 15
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "beginMillis"    # J
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 2001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 2002
    .local v1, "durationMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_14

    const-string v4, "GETLOCK:"

    if-ne p4, v4, :cond_14

    .line 2042
    :goto_13
    return-void

    .line 2007
    :cond_14
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v4, :cond_22

    .line 2008
    const-string v4, "db.db_operation.threshold_ms"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 2010
    :cond_22
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_74

    .line 2011
    const/16 v3, 0x64

    .line 2019
    .local v3, "samplePercent":I
    :cond_2b
    if-eqz p4, :cond_3e

    .line 2020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2022
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_48

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2032
    :cond_48
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v0

    .line 2033
    .local v0, "blockingPackage":Ljava/lang/String;
    if-nez v0, :cond_50

    const-string v0, ""

    .line 2035
    :cond_50
    const v4, 0xcb20

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPathForLogs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_13

    .line 2013
    .end local v0    # "blockingPackage":Ljava/lang/String;
    .end local v3    # "samplePercent":I
    :cond_74
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    sget v6, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 2014
    .restart local v3    # "samplePercent":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_2b

    goto :goto_13
.end method

.method private native native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I
.end method

.method private final native native_finalize(I)V
.end method

.method private native native_getDbLookaside()I
.end method

.method private native native_releaseCustomFunction(I)V
.end method

.method private native native_setLocale(Ljava/lang/String;I)V
.end method

.method private native native_setSqliteSoftHeapLimit(I)V
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    .prologue
    .line 962
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 986
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 990
    .local v0, "sqliteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    sget v1, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    if-nez v1, :cond_16

    .line 993
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    sput v1, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 995
    :cond_16
    sget v1, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setPageSize(J)V

    .line 996
    const-string v1, "TRUNCATE"

    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1000
    :try_start_24
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    monitor-exit v2

    .line 1002
    return-object v0

    .line 1001
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;
    .registers 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "connectionNum"    # S

    .prologue
    .line 1007
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V

    .line 1009
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1010
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "opening the db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_2c
    invoke-direct {v0, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1014
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 1015
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_3d

    .line 1016
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;S)V

    .line 1018
    :cond_3d
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_44

    .line 1019
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;S)V
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_a .. :try_end_44} :catch_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_44} :catch_50

    .line 1024
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_44
    :goto_44
    return-object v0

    .line 1022
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_45
    move-exception v6

    .line 1023
    .local v6, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v1, v0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1024
    invoke-static {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_44

    .line 1025
    .end local v6    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_50
    move-exception v6

    .line 1026
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteDatabase"

    const-string v2, "Failed to open the database. closing it."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1028
    throw v6
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 1036
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 1043
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 1051
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private releaseCustomFunctions()V
    .registers 5

    .prologue
    .line 1217
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1219
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1220
    .local v0, "function":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->native_releaseCustomFunction(I)V

    .line 1218
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1222
    .end local v0    # "function":Ljava/lang/Integer;
    :cond_1e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1223
    monitor-exit v3

    .line 1224
    return-void

    .line 1223
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2438
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p1}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_e

    if-ne p1, p0, :cond_f

    .line 2448
    :cond_e
    :goto_e
    return-void

    .line 2441
    :cond_f
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2442
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_28

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2443
    :cond_28
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2444
    :cond_36
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseDbConnection threadid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", releasing # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    :cond_71
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->release(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_e
.end method

.method public static native releaseMemory()I
.end method

.method private setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1057
    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1065
    :cond_e
    :goto_e
    return-void

    .line 1060
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA journal_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1062
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting journal_mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed for db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (on pragma set journal_mode, sqlite returned:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private unlockForced()V
    .registers 3

    .prologue
    .line 496
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_10

    .line 497
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 498
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 501
    :cond_10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    .line 502
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .registers 14
    .param p1, "checkFullyYielded"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 888
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_1a

    .line 891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 892
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 893
    const/4 v4, 0x0

    .line 923
    :goto_19
    return v4

    .line 895
    :cond_1a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 896
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 897
    .local v3, "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 898
    if-eqz p1, :cond_32

    .line 899
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 900
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 904
    :cond_32
    cmp-long v4, p2, v8

    if-lez v4, :cond_4c

    .line 908
    move-wide v1, p2

    .line 909
    .local v1, "remainingDelay":J
    :cond_37
    cmp-long v4, v1, v8

    if-lez v4, :cond_4c

    .line 911
    cmp-long v4, v1, v6

    if-gez v4, :cond_51

    move-wide v4, v1

    :goto_40
    :try_start_40
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_53

    .line 916
    :goto_43
    sub-long/2addr v1, v6

    .line 917
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_37

    .line 922
    .end local v1    # "remainingDelay":J
    :cond_4c
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 923
    const/4 v4, 0x1

    goto :goto_19

    .restart local v1    # "remainingDelay":J
    :cond_51
    move-wide v4, v6

    .line 911
    goto :goto_40

    .line 913
    :catch_53
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_43
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "function"    # Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .prologue
    .line 1204
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1205
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1206
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I

    move-result v0

    .line 1207
    .local v0, "ref":I
    if-eqz v0, :cond_18

    .line 1209
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    monitor-exit v2

    .line 1214
    return-void

    .line 1211
    :cond_18
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to add custom function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1213
    .end local v0    # "ref":I
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_31

    throw v1
.end method

.method declared-synchronized addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .registers 4
    .param p1, "closable"    # Landroid/database/sqlite/SQLiteClosable;

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 347
    monitor-exit p0

    return-void

    .line 346
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "compiledStatement"    # Landroid/database/sqlite/SQLiteCompiledSql;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2105
    monitor-enter p0

    :try_start_3
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9f

    move-result-object v5

    if-eqz v5, :cond_d

    .line 2136
    :goto_b
    monitor-exit p0

    return-void

    .line 2109
    :cond_d
    :try_start_d
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_a2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    .line 2112
    .local v1, "maxCacheSz":I
    :goto_17
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v5, :cond_c2

    .line 2113
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_af

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_ac

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-ne v5, v1, :cond_ac

    .line 2117
    .local v2, "printWarning":Z
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_c2

    .line 2122
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached MAX size for compiled-sql statement cache for database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Use setMaxSqlCacheSize() to increase cachesize. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    .line 2125
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Here are the SQL statements in Cache of database: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2127
    .local v3, "s":Ljava/lang/String;
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sql statement in Cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_d .. :try_end_9e} :catchall_9f

    goto :goto_7a

    .line 2105
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "maxCacheSz":I
    .end local v2    # "printWarning":Z
    .end local v3    # "s":Ljava/lang/String;
    :catchall_9f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2109
    :cond_a2
    :try_start_a2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    goto/16 :goto_17

    .restart local v1    # "maxCacheSz":I
    :cond_ac
    move v2, v4

    .line 2113
    goto/16 :goto_2b

    :cond_af
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_bf

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-eq v5, v1, :cond_2b

    :cond_bf
    move v2, v4

    goto/16 :goto_2b

    .line 2135
    :cond_c2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catchall {:try_start_a2 .. :try_end_c7} :catchall_9f

    goto/16 :goto_b
.end method

.method declared-synchronized amIInTransaction()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 816
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 817
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_35

    .line 819
    .local v0, "b":Z
    :cond_10
    :goto_10
    const-string v2, "SQLiteDatabase"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 820
    const-string v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amIinTransaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_43

    .line 822
    :cond_31
    monitor-exit p0

    return v0

    .end local v0    # "b":Z
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_33
    move-object v1, p0

    .line 816
    goto :goto_a

    .line 817
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_35
    :try_start_35
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-nez v2, :cond_41

    iget-object v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_43

    move-result v2

    if-eqz v2, :cond_10

    :cond_41
    const/4 v0, 0x1

    goto :goto_10

    .line 816
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public beginTransaction()V
    .registers 3

    .prologue
    .line 552
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 553
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .registers 3

    .prologue
    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 577
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 606
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 635
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 1087
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1116
    :goto_7
    return-void

    .line 1090
    :cond_8
    const-string v0, "SQLiteDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1091
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (connection # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_36
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1097
    :try_start_39
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_6a

    move-result v0

    if-nez v0, :cond_43

    .line 1114
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_7

    .line 1100
    :cond_43
    :try_start_43
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1102
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1103
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V

    .line 1105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    .line 1106
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_7f

    .line 1107
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1108
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_6f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_6a
    .catchall {:try_start_43 .. :try_end_6a} :catchall_6a

    .line 1114
    :catchall_6a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    .line 1109
    :cond_6f
    :try_start_6f
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_7a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_6a

    .line 1114
    :cond_7f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_7
.end method

.method closeDatabase()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 1143
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteUnfinalizedObjectsException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1178
    :cond_3
    :goto_3
    return-void

    .line 1144
    :catch_4
    move-exception v1

    .line 1145
    .local v1, "e":Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1146
    .local v5, "msg":Ljava/lang/String;
    const-string v9, ","

    const/4 v10, 0x2

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 1147
    .local v8, "tokens":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1149
    .local v7, "stmtId":I
    iget-object v9, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1150
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1151
    .local v3, "found":Z
    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_48

    .line 1152
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1153
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteClosable;

    .line 1154
    .local v6, "program":Landroid/database/sqlite/SQLiteClosable;
    if-eqz v6, :cond_22

    instance-of v9, v6, Landroid/database/sqlite/SQLiteProgram;

    if-eqz v9, :cond_22

    .line 1155
    check-cast v6, Landroid/database/sqlite/SQLiteProgram;

    .end local v6    # "program":Landroid/database/sqlite/SQLiteClosable;
    iget-object v0, v6, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 1156
    .local v0, "compiledSql":Landroid/database/sqlite/SQLiteCompiledSql;
    iget v9, v0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-ne v9, v7, :cond_22

    .line 1157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1158
    const/4 v3, 0x1

    goto :goto_22

    .line 1162
    .end local v0    # "compiledSql":Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    :cond_48
    if-nez v3, :cond_65

    .line 1165
    iget-object v9, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1166
    const-string v9, "SQLiteDatabase"

    const-string/jumbo v10, "this shouldn\'t happen. finalizing the statement now: "

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1169
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    goto :goto_3

    .line 1173
    :cond_65
    new-instance v9, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close() on database: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed due to un-close()d SQL statements: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method closePendingStatements()V
    .registers 6

    .prologue
    .line 2248
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2250
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2265
    :cond_b
    return-void

    .line 2253
    :cond_c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 2255
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2256
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2257
    :try_start_1d
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2258
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2259
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_3f

    .line 2261
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2262
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    if-ge v0, v2, :cond_b

    .line 2263
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->native_finalize(I)V

    .line 2262
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 2259
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1368
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method createPoolConnection(S)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7
    .param p1, "connectionNum"    # S

    .prologue
    .line 2393
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v1, v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2394
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iput-object p0, v0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 2395
    return-object v0
.end method

.method declared-synchronized deallocCachedSqlStatements()V
    .registers 4

    .prologue
    .line 2140
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    .line 2141
    .local v0, "compiledSql":Landroid/database/sqlite/SQLiteCompiledSql;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 2140
    .end local v0    # "compiledSql":Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2143
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_22
    :try_start_22
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 2144
    monitor-exit p0

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1738
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_35
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_35 .. :try_end_38} :catch_40
    .catchall {:try_start_35 .. :try_end_38} :catchall_45

    move-result v2

    .line 1746
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v2

    .line 1738
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_3d
    const-string v2, ""

    goto :goto_2a

    .line 1742
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catch_40
    move-exception v0

    .line 1743
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_41
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1744
    throw v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .line 1746
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public disableWriteAheadLogging()V
    .registers 3

    .prologue
    .line 2357
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2359
    :try_start_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-nez v0, :cond_b

    .line 2366
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2368
    :goto_a
    return-void

    .line 2362
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V

    .line 2363
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v1, "TRUNCATE"

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    .line 2366
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_a

    :catchall_1e
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public enableWriteAheadLogging()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2318
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2346
    :goto_8
    return v0

    .line 2322
    :cond_9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2324
    :try_start_c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_6f

    if-eqz v2, :cond_15

    .line 2346
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    goto :goto_8

    .line 2328
    :cond_15
    :try_start_15
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v3, ":memory:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2329
    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_6f

    .line 2346
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_8

    .line 2335
    :cond_2a
    :try_start_2a
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-eqz v2, :cond_5c

    .line 2336
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2337
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_6f

    .line 2346
    :cond_58
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_8

    .line 2342
    :cond_5c
    :try_start_5c
    new-instance v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-direct {v0, p0}, Landroid/database/sqlite/DatabaseConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 2343
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, "WAL"

    invoke-direct {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_6f

    .line 2346
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    goto :goto_8

    :catchall_6f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public endTransaction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 690
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 692
    :try_start_4
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v2, :cond_1a

    .line 693
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 697
    :goto_b
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1e

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    .line 745
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 746
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 752
    :goto_19
    return-void

    .line 695
    :cond_1a
    const/4 v2, 0x0

    :try_start_1b
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_b

    .line 745
    :catchall_1e
    move-exception v2

    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 746
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    throw v2

    .line 700
    :cond_25
    const/4 v1, 0x0

    .line 701
    .local v1, "savedException":Ljava/lang/RuntimeException;
    :try_start_26
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_1e

    if-eqz v2, :cond_33

    .line 703
    :try_start_2a
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_56

    .line 704
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_33} :catch_5c
    .catchall {:try_start_2a .. :try_end_33} :catchall_1e

    .line 713
    :cond_33
    :goto_33
    :try_start_33
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_62

    .line 714
    const-string v2, "COMMIT;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v2, :cond_50

    .line 722
    const-string v2, "PRAGMA wal_checkpoint;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 723
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v2, :cond_50

    .line 724
    const-string v2, "SQLiteDatabase"

    const-string v3, "PRAGMA wal_Checkpoint done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_1e

    .line 745
    :cond_50
    :goto_50
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 746
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_19

    .line 706
    :cond_56
    :try_start_56
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catchall {:try_start_56 .. :try_end_5b} :catchall_1e

    goto :goto_33

    .line 708
    :catch_5c
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v1, v0

    .line 710
    const/4 v2, 0x0

    :try_start_5f
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_1e

    goto :goto_33

    .line 733
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_62
    :try_start_62
    const-string v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 734
    if-eqz v1, :cond_50

    .line 735
    throw v1
    :try_end_6a
    .catch Landroid/database/SQLException; {:try_start_62 .. :try_end_6a} :catch_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_1e

    .line 737
    :catch_6a
    move-exception v2

    goto :goto_50
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1839
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1840
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1886
    if-nez p2, :cond_a

    .line 1887
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1890
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1911
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1912
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() was never explicitly called on database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1915
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V

    .line 1916
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_35

    .line 1919
    :cond_31
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1921
    return-void

    .line 1919
    :catchall_35
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finalizeStatementLater(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 2223
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2234
    :goto_6
    return-void

    .line 2227
    :cond_7
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2228
    :try_start_a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2230
    monitor-exit v1

    goto :goto_6

    .line 2233
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0

    .line 2232
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_18

    goto :goto_6
.end method

.method public getAttachedDbs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2535
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2569
    :cond_7
    :goto_7
    return-object v0

    .line 2538
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2539
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-nez v2, :cond_1f

    .line 2549
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2553
    :cond_1f
    const/4 v1, 0x0

    .line 2555
    .local v1, "c":Landroid/database/Cursor;
    :try_start_20
    const-string/jumbo v2, "pragma database_list;"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2556
    :goto_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2562
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_41

    goto :goto_28

    .line 2565
    :catchall_41
    move-exception v2

    if-eqz v1, :cond_47

    .line 2566
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v2

    .line 2565
    :cond_48
    if-eqz v1, :cond_7

    .line 2566
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method

.method declared-synchronized getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 2151
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDatabaseHandle(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 2371
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2374
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2388
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :goto_12
    return-object p0

    .line 2384
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :cond_13
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_12

    .line 2388
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_12
.end method

.method getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 2407
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2412
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2427
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :cond_9
    :goto_9
    return-object p0

    .line 2419
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :cond_a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_9

    .line 2423
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2424
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2425
    :cond_2b
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    :cond_36
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->get(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_9
.end method

.method declared-synchronized getLastSqlStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .registers 5

    .prologue
    .line 1257
    const-string v2, "PRAGMA max_page_count;"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1258
    .local v0, "pageCount":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .registers 3

    .prologue
    .line 1286
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1986
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method getQueuedUpStmtList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2271
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 931
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public getVersion()I
    .registers 3

    .prologue
    .line 1239
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .registers 2

    .prologue
    .line 779
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1591
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-wide v1

    .line 1594
    :goto_5
    return-wide v1

    .line 1592
    :catch_6
    move-exception v0

    .line 1593
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    const-wide/16 v1, -0x1

    goto :goto_5
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 16
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    .prologue
    .line 1689
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .local v7, "sql":Ljava/lang/StringBuilder;
    const-string v9, "INSERT"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    sget-object v9, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v9, v9, p4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    const-string v9, " INTO "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    const/16 v9, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1696
    const/4 v0, 0x0

    .line 1697
    .local v0, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_58

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_58

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v6

    .line 1698
    .local v6, "size":I
    :goto_2b
    if-lez v6, :cond_77

    .line 1699
    new-array v0, v6, [Ljava/lang/Object;

    .line 1700
    const/4 v3, 0x0

    .line 1701
    .local v3, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1702
    .local v1, "colName":Ljava/lang/String;
    if-lez v3, :cond_5a

    const-string v9, ","

    :goto_48
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v0, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_38

    .line 1697
    .end local v1    # "colName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "size":I
    :cond_58
    const/4 v6, 0x0

    goto :goto_2b

    .line 1702
    .restart local v1    # "colName":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "size":I
    :cond_5a
    const-string v9, ""

    goto :goto_48

    .line 1706
    .end local v1    # "colName":Ljava/lang/String;
    :cond_5d
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1707
    const-string v9, " VALUES ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    const/4 v3, 0x0

    :goto_68
    if-ge v3, v6, :cond_8d

    .line 1709
    if-lez v3, :cond_74

    const-string v9, ",?"

    :goto_6e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 1709
    :cond_74
    const-string v9, "?"

    goto :goto_6e

    .line 1712
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") VALUES (NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    :cond_8d
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1716
    new-instance v8, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1718
    .local v8, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_9b
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_9e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9b .. :try_end_9e} :catch_a3
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a8

    move-result-wide v9

    .line 1723
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v9

    .line 1719
    :catch_a3
    move-exception v2

    .line 1720
    .local v2, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_a4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1721
    throw v2
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a8

    .line 1723
    .end local v2    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_a8
    move-exception v9

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v9
.end method

.method public isDatabaseIntegrityOk()Z
    .registers 10

    .prologue
    .line 2586
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2587
    const/4 v0, 0x0

    .line 2589
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 2590
    if-nez v0, :cond_46

    .line 2591
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "databaselist for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " couldn\'t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "be retrieved. probably because the database is closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_33} :catch_33

    .line 2594
    :catch_33
    move-exception v1

    .line 2596
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2597
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "main"

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_be

    .line 2600
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2601
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2603
    .local v4, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".integrity_check(1);"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 2604
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v5

    .line 2605
    .local v5, "rslt":Ljava/lang/String;
    const-string/jumbo v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_af

    .line 2607
    const-string v7, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA integrity_check on "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " returned: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_54 .. :try_end_a8} :catchall_b7

    .line 2608
    const/4 v6, 0x0

    .line 2611
    if-eqz v4, :cond_ae

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2614
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .end local v5    # "rslt":Ljava/lang/String;
    :cond_ae
    :goto_ae
    return v6

    .line 2611
    .restart local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local v5    # "rslt":Ljava/lang/String;
    :cond_af
    if-eqz v4, :cond_b4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2599
    :cond_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 2611
    .end local v5    # "rslt":Ljava/lang/String;
    :catchall_b7
    move-exception v6

    if-eqz v4, :cond_bd

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bd
    throw v6

    .line 2614
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_be
    const/4 v6, 0x1

    goto :goto_ae
.end method

.method public isDbLockedByCurrentThread()Z
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isInQueueOfStatementsToBeFinalized(I)Z
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 2237
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2240
    const/4 v0, 0x1

    .line 2243
    :goto_7
    return v0

    .line 2242
    :cond_8
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2243
    :try_start_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_7

    .line 2244
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0
.end method

.method declared-synchronized isInStatementCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 2196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 1973
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReadOnly()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1966
    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method lock()V
    .registers 3

    .prologue
    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method lock(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 401
    return-void
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "beginMillis"    # J

    .prologue
    .line 1993
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1311
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1327
    return-void
.end method

.method public needUpgrade(I)Z
    .registers 3
    .param p1, "newVersion"    # I

    .prologue
    .line 1977
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 359
    :cond_9
    return-void
.end method

.method onCorruption()V
    .registers 3

    .prologue
    .line 387
    const v0, 0x124fc

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 388
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 389
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 1485
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 1523
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 1405
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .prologue
    .line 1445
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1446
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1449
    .local v8, "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v8, p6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1538
    invoke-virtual {p0, v0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    .prologue
    .line 1556
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1557
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1559
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1560
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v2, v1, p2, p4}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    .local v2, "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    const/4 v0, 0x0

    .line 1564
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_1e

    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :goto_16
    :try_start_16
    invoke-interface {v2, p1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_21

    move-result-object v0

    .line 1568
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1570
    return-object v0

    .line 1564
    .restart local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :cond_1e
    :try_start_1e
    iget-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_16

    .line 1568
    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :catchall_21
    move-exception v3

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method declared-synchronized releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "compiledSql"    # Landroid/database/sqlite/SQLiteCompiledSql;

    .prologue
    .line 2201
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_e

    .line 2203
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->release()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 2208
    :goto_c
    monitor-exit p0

    return-void

    .line 2206
    :cond_e
    :try_start_e
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_c

    .line 2201
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .registers 3
    .param p1, "closable"    # Landroid/database/sqlite/SQLiteClosable;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 351
    monitor-exit p0

    return-void

    .line 350
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1637
    const/4 v1, 0x5

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-wide v1

    .line 1641
    :goto_5
    return-wide v1

    .line 1639
    :catch_6
    move-exception v0

    .line 1640
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1641
    const-wide/16 v1, -0x1

    goto :goto_5
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1663
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized resetTransactionUsingExecSqlFlag()V
    .registers 3

    .prologue
    .line 790
    monitor-enter p0

    :try_start_1
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 791
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_15

    .line 792
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'commit or end or rollback\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 796
    monitor-exit p0

    return-void

    .line 790
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLastSqlStatement(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2072
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2074
    :try_start_3
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 2076
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2078
    return-void

    .line 2076
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .registers 2
    .param p1, "lockingEnabled"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 378
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .registers 8
    .param p1, "cacheSize"    # I

    .prologue
    .line 2169
    monitor-enter p0

    .line 2170
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2171
    .local v2, "oldCompiledQueries":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    const/16 v3, 0x64

    if-gt p1, v3, :cond_9

    if-gez p1, :cond_14

    .line 2172
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "expected value between 0 and 100"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2192
    .end local v2    # "oldCompiledQueries":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :catchall_11
    move-exception v3

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v3

    .line 2174
    .restart local v2    # "oldCompiledQueries":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :cond_14
    if-eqz v2, :cond_24

    :try_start_16
    invoke-virtual {v2}, Landroid/util/LruCache;->maxSize()I

    move-result v3

    if-ge p1, v3, :cond_24

    .line 2175
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2178
    :cond_24
    new-instance v3, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v3, p0, p1}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2186
    if-eqz v2, :cond_53

    .line 2188
    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2189
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 2192
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_16 .. :try_end_54} :catchall_11

    .line 2193
    return-void
.end method

.method public setMaximumSize(J)J
    .registers 13
    .param p1, "numBytes"    # J

    .prologue
    .line 1269
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 1270
    .local v4, "pageSize":J
    div-long v2, p1, v4

    .line 1272
    .local v2, "numPages":J
    rem-long v6, p1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_11

    .line 1273
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 1275
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA max_page_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1277
    .local v0, "newPageCount":J
    mul-long v6, v0, v4

    return-wide v6
.end method

.method public setPageSize(J)V
    .registers 5
    .param p1, "numBytes"    # J

    .prologue
    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    return-void
.end method

.method public setTransactionSuccessful()V
    .registers 3

    .prologue
    .line 764
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 765
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_14

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_14
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_21

    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 773
    return-void
.end method

.method declared-synchronized setTransactionUsingExecSqlFlag()V
    .registers 3

    .prologue
    .line 783
    monitor-enter p0

    :try_start_1
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 784
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'begin transaction\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 787
    monitor-exit p0

    return-void

    .line 783
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method unlock()V
    .registers 3

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_5

    .line 488
    :goto_4
    return-void

    .line 482
    :cond_5
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_15

    .line 483
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 484
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 487
    :cond_15
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    goto :goto_4
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1761
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 19
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    .prologue
    .line 1777
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-nez v11, :cond_10

    .line 1778
    :cond_8
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Empty values"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1781
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v11, 0x78

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1782
    .local v9, "sql":Ljava/lang/StringBuilder;
    const-string v11, "UPDATE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    sget-object v11, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v11, v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    const-string v11, " SET "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    .line 1789
    .local v8, "setValuesSize":I
    if-nez p4, :cond_62

    move v2, v8

    .line 1790
    .local v2, "bindArgsSize":I
    :goto_32
    new-array v1, v2, [Ljava/lang/Object;

    .line 1791
    .local v1, "bindArgs":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1792
    .local v5, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1793
    .local v3, "colName":Ljava/lang/String;
    if-lez v5, :cond_68

    const-string v11, ","

    :goto_4d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v1, v5

    .line 1796
    const-string v11, "=?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_3d

    .line 1789
    .end local v1    # "bindArgs":[Ljava/lang/Object;
    .end local v2    # "bindArgsSize":I
    .end local v3    # "colName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_62
    move-object/from16 v0, p4

    array-length v11, v0

    add-int v2, v8, v11

    goto :goto_32

    .line 1793
    .restart local v1    # "bindArgs":[Ljava/lang/Object;
    .restart local v2    # "bindArgsSize":I
    .restart local v3    # "colName":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_68
    const-string v11, ""

    goto :goto_4d

    .line 1798
    .end local v3    # "colName":Ljava/lang/String;
    :cond_6b
    if-eqz p4, :cond_79

    .line 1799
    move v5, v8

    :goto_6e
    if-ge v5, v2, :cond_79

    .line 1800
    sub-int v11, v5, v8

    aget-object v11, p4, v11

    aput-object v11, v1, v5

    .line 1799
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 1803
    :cond_79
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_89

    .line 1804
    const-string v11, " WHERE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    :cond_89
    new-instance v10, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1810
    .local v10, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_92
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_92 .. :try_end_95} :catch_9a
    .catchall {:try_start_92 .. :try_end_95} :catchall_9f

    move-result v11

    .line 1815
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v11

    .line 1811
    :catch_9a
    move-exception v4

    .line 1812
    .local v4, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_9b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1813
    throw v4
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_9f

    .line 1815
    .end local v4    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_9f
    move-exception v11

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v11
.end method

.method verifyDbIsOpen()V
    .registers 4

    .prologue
    .line 2081
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_35

    .line 2082
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (conn# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2085
    :cond_35
    return-void
.end method

.method verifyLockOwner()V
    .registers 3

    .prologue
    .line 2088
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2089
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2090
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t have database lock!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_15
    return-void
.end method

.method public yieldIfContended()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 856
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .registers 4

    .prologue
    .line 869
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .registers 4
    .param p1, "sleepAfterYieldDelay"    # J

    .prologue
    .line 884
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
