.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipInflaterInputStream;,
        Ljava/util/zip/ZipFile$RAFStream;
    }
.end annotation


# static fields
.field static final GPBF_DATA_DESCRIPTOR_FLAG:I = 0x8

.field static final GPBF_UTF8_FLAG:I = 0x800

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field private final fileName:Ljava/lang/String;

.field private fileToDeleteOnClose:Ljava/io/File;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    .line 90
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x5

    if-eq p2, v0, :cond_22

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_22
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3e

    .line 125
    iput-object p1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 130
    :goto_28
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 132
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->readCentralDir()V

    .line 133
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 134
    return-void

    .line 127
    :cond_3e
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    goto :goto_28
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 146
    return-void
.end method

.method static synthetic access$000(Ljava/util/zip/ZipFile;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    return-void
.end method

.method private checkNotClosed()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_c
    return-void
.end method

.method private readCentralDir()V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x16

    sub-long v15, v20, v22

    .line 320
    .local v15, "scanOffset":J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-gez v20, :cond_1c

    .line 321
    new-instance v20, Ljava/util/zip/ZipException;

    const-string v21, "too short to be Zip"

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 324
    :cond_1c
    const-wide/32 v20, 0x10000

    sub-long v17, v15, v20

    .line 325
    .local v17, "stopOffset":J
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-gez v20, :cond_29

    .line 326
    const-wide/16 v17, 0x0

    .line 329
    :cond_29
    const v3, 0x6054b50

    .line 331
    .local v3, "ENDHEADERMAGIC":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v20

    const v21, 0x6054b50

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9c

    .line 344
    const/16 v20, 0x12

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 345
    .local v8, "eocd":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 348
    const/16 v20, 0x0

    array-length v0, v8

    move/from16 v21, v0

    sget-object v22, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v8, v0, v1, v2}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v11

    .line 349
    .local v11, "it":Llibcore/io/BufferIterator;
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    .line 350
    .local v6, "diskNumber":S
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    .line 351
    .local v7, "diskWithCentralDir":S
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v13

    .line 352
    .local v13, "numEntries":S
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v19

    .line 353
    .local v19, "totalNumEntries":S
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 354
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readInt()I

    move-result v5

    .line 356
    .local v5, "centralDirOffset":I
    move/from16 v0, v19

    if-ne v13, v0, :cond_94

    if-nez v6, :cond_94

    if-eqz v7, :cond_ac

    .line 357
    :cond_94
    new-instance v20, Ljava/util/zip/ZipException;

    const-string v21, "spanned archives not supported"

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 336
    .end local v5    # "centralDirOffset":I
    .end local v6    # "diskNumber":S
    .end local v7    # "diskWithCentralDir":S
    .end local v8    # "eocd":[B
    .end local v11    # "it":Llibcore/io/BufferIterator;
    .end local v13    # "numEntries":S
    .end local v19    # "totalNumEntries":S
    :cond_9c
    const-wide/16 v20, 0x1

    sub-long v15, v15, v20

    .line 337
    cmp-long v20, v15, v17

    if-gez v20, :cond_2c

    .line 338
    new-instance v20, Ljava/util/zip/ZipException;

    const-string v21, "EOCD not found; not a Zip archive?"

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 361
    .restart local v5    # "centralDirOffset":I
    .restart local v6    # "diskNumber":S
    .restart local v7    # "diskWithCentralDir":S
    .restart local v8    # "eocd":[B
    .restart local v11    # "it":Llibcore/io/BufferIterator;
    .restart local v13    # "numEntries":S
    .restart local v19    # "totalNumEntries":S
    :cond_ac
    new-instance v14, Ljava/util/zip/ZipFile$RAFStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    int-to-long v0, v5

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-direct {v14, v0, v1, v2}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 362
    .local v14, "rafs":Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v20, 0x1000

    move/from16 v0, v20

    invoke-direct {v4, v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 363
    .local v4, "bin":Ljava/io/BufferedInputStream;
    const/16 v20, 0x2e

    move/from16 v0, v20

    new-array v9, v0, [B

    .line 364
    .local v9, "hdrBuf":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_ce
    if-ge v10, v13, :cond_e9

    .line 365
    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-direct {v12, v9, v4}, Ljava/util/zip/ZipEntry;-><init>([BLjava/io/InputStream;)V

    .line 366
    .local v12, "newEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    add-int/lit8 v10, v10, 0x1

    goto :goto_ce

    .line 368
    .end local v12    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_e9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 170
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 172
    .local v0, "raf":Ljava/io/RandomAccessFile;
    if-eqz v0, :cond_1d

    .line 173
    monitor-enter v0

    .line 174
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 175
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 176
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1e

    .line 177
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v1, :cond_1d

    .line 178
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 179
    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 182
    :cond_1d
    return-void

    .line 176
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 199
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    new-instance v1, Ljava/util/zip/ZipFile$1;

    invoke-direct {v1, p0, v0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_9

    .line 151
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_14

    .line 155
    :cond_9
    :try_start_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    .line 160
    return-void

    .line 156
    :catch_d
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 154
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    .line 155
    :try_start_15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 157
    throw v1

    .line 156
    :catch_19
    move-exception v0

    .line 157
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 6
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 225
    if-nez p1, :cond_b

    .line 226
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 229
    :cond_b
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 230
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_30

    .line 231
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 233
    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_30
    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 12
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 249
    if-nez p1, :cond_c

    .line 250
    const/4 v4, 0x0

    .line 272
    :goto_b
    return-object v4

    .line 254
    :cond_c
    iget-object v3, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 255
    .local v3, "raf":Ljava/io/RandomAccessFile;
    monitor-enter v3

    .line 260
    :try_start_f
    new-instance v4, Ljava/util/zip/ZipFile$RAFStream;

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    const-wide/16 v7, 0x1c

    add-long/2addr v5, v7

    invoke-direct {v4, v3, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 261
    .local v4, "rafstrm":Ljava/util/zip/ZipFile$RAFStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 262
    .local v1, "is":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    .line 263
    .local v2, "localExtraLenOrWhatever":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 266
    iget v5, p1, Ljava/util/zip/ZipEntry;->nameLength:I

    add-int/2addr v5, v2

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 267
    iget-wide v5, v4, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v7, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 268
    iget v5, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5d

    .line 269
    const/16 v5, 0x400

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 270
    .local v0, "bufSize":I
    new-instance v5, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    new-instance v6, Ljava/util/zip/Inflater;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v5, v4, v6, v0, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    monitor-exit v3

    move-object v4, v5

    goto :goto_b

    .line 272
    .end local v0    # "bufSize":I
    :cond_5d
    monitor-exit v3

    goto :goto_b

    .line 274
    .end local v1    # "is":Ljava/io/DataInputStream;
    .end local v2    # "localExtraLenOrWhatever":I
    .end local v4    # "rafstrm":Ljava/util/zip/ZipFile$RAFStream;
    :catchall_5f
    move-exception v5

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_f .. :try_end_61} :catchall_5f

    throw v5
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 294
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
