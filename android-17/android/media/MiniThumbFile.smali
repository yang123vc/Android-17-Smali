.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 133
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 134
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 73
    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_3f

    .line 74
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 76
    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_41

    .line 79
    :cond_3f
    monitor-exit v3

    return-object v0

    .line 70
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_41
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .registers 8

    .prologue
    .line 102
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_58

    .line 103
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 104
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 108
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "f":Ljava/io/File;
    :try_start_42
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4c} :catch_5b

    .line 124
    :goto_4c
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_58

    .line 125
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 128
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_58
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 115
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_5b
    move-exception v1

    .line 119
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5c
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_67

    goto :goto_4c

    .line 120
    :catch_67
    move-exception v4

    goto :goto_4c
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .registers 5
    .param p1, "version"    # I

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .registers 4

    .prologue
    .line 90
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 94
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    .line 99
    :cond_13
    :goto_13
    return-void

    .line 95
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    .line 63
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 64
    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 63
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 66
    :cond_20
    :try_start_20
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 67
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_d

    .line 139
    :try_start_5
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_12
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    .line 145
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 137
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public declared-synchronized getMagic(J)J
    .registers 14
    .param p1, "id"    # J

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    .line 153
    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_97

    move-result-object v8

    .line 154
    .local v8, "r":Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_4e

    .line 155
    const-wide/16 v3, 0x2710

    mul-long v1, p1, v3

    .line 156
    .local v1, "pos":J
    const/4 v7, 0x0

    .line 158
    .local v7, "lock":Ljava/nio/channels/FileLock;
    :try_start_f
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 164
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v10, :cond_49

    .line 165
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v9, :cond_49

    .line 167
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_41} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_41} :catch_61
    .catchall {:try_start_f .. :try_end_41} :catchall_90

    move-result-wide v3

    .line 178
    if-eqz v7, :cond_47

    :try_start_44
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_9a
    .catchall {:try_start_44 .. :try_end_47} :catchall_97

    .line 185
    .end local v1    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    :cond_47
    :goto_47
    monitor-exit p0

    return-wide v3

    .line 178
    .restart local v1    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    :cond_49
    if-eqz v7, :cond_4e

    :try_start_4b
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_9c
    .catchall {:try_start_4b .. :try_end_4e} :catchall_97

    .line 185
    .end local v1    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    :cond_4e
    :goto_4e
    const-wide/16 v3, 0x0

    goto :goto_47

    .line 170
    .restart local v1    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    :catch_51
    move-exception v6

    .line 171
    .local v6, "ex":Ljava/io/IOException;
    :try_start_52
    const-string v0, "MiniThumbFile"

    const-string v3, "Got exception checking file magic: "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_90

    .line 178
    if-eqz v7, :cond_4e

    :try_start_5b
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_97

    goto :goto_4e

    .line 180
    :catch_5f
    move-exception v0

    goto :goto_4e

    .line 172
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_61
    move-exception v6

    .line 174
    .local v6, "ex":Ljava/lang/RuntimeException;
    :try_start_62
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when reading magic, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_62 .. :try_end_88} :catchall_90

    .line 178
    if-eqz v7, :cond_4e

    :try_start_8a
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_97

    goto :goto_4e

    .line 180
    :catch_8e
    move-exception v0

    goto :goto_4e

    .line 177
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    :catchall_90
    move-exception v0

    .line 178
    if-eqz v7, :cond_96

    :try_start_93
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9e
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    .line 182
    :cond_96
    :goto_96
    :try_start_96
    throw v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    .line 153
    .end local v1    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "r":Ljava/io/RandomAccessFile;
    :catchall_97
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    .restart local v1    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    .restart local v8    # "r":Ljava/io/RandomAccessFile;
    :catch_9a
    move-exception v0

    goto :goto_47

    :catch_9c
    move-exception v0

    goto :goto_4e

    :catch_9e
    move-exception v3

    goto :goto_96
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .registers 20
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_da

    move-result-object v14

    .line 238
    .local v14, "r":Ljava/io/RandomAccessFile;
    if-nez v14, :cond_b

    const/16 p3, 0x0

    .line 271
    .end local p3    # "data":[B
    :cond_9
    :goto_9
    monitor-exit p0

    return-object p3

    .line 240
    .restart local p3    # "data":[B
    :cond_b
    const-wide/16 v5, 0x2710

    mul-long v3, p1, v5

    .line 241
    .local v3, "pos":J
    const/4 v11, 0x0

    .line 243
    .local v11, "lock":Ljava/nio/channels/FileLock;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x2710

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v11

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v15

    .line 246
    .local v15, "size":I
    const/16 v2, 0xd

    if-le v15, v2, :cond_6d

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 249
    .local v9, "flag":B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    .line 250
    .local v12, "magic":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 252
    .local v10, "length":I
    add-int/lit8 v2, v10, 0xd

    if-lt v15, v2, :cond_6d

    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v2, v10, :cond_6d

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v5, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_65} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_65} :catch_a2
    .catchall {:try_start_10 .. :try_end_65} :catchall_d3

    .line 265
    if-eqz v11, :cond_9

    :try_start_67
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_da

    goto :goto_9

    .line 267
    :catch_6b
    move-exception v2

    goto :goto_9

    .line 265
    .end local v9    # "flag":B
    .end local v10    # "length":I
    .end local v12    # "magic":J
    :cond_6d
    if-eqz v11, :cond_72

    :try_start_6f
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_dd
    .catchall {:try_start_6f .. :try_end_72} :catchall_da

    .line 271
    .end local v15    # "size":I
    :cond_72
    :goto_72
    const/16 p3, 0x0

    goto :goto_9

    .line 257
    :catch_75
    move-exception v8

    .line 258
    .local v8, "ex":Ljava/io/IOException;
    :try_start_76
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception when reading thumbnail id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_76 .. :try_end_9a} :catchall_d3

    .line 265
    if-eqz v11, :cond_72

    :try_start_9c
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0
    .catchall {:try_start_9c .. :try_end_9f} :catchall_da

    goto :goto_72

    .line 267
    :catch_a0
    move-exception v2

    goto :goto_72

    .line 259
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_a2
    move-exception v8

    .line 261
    .local v8, "ex":Ljava/lang/RuntimeException;
    :try_start_a3
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading thumbnail, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_a3 .. :try_end_cb} :catchall_d3

    .line 265
    if-eqz v11, :cond_72

    :try_start_cd
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1
    .catchall {:try_start_cd .. :try_end_d0} :catchall_da

    goto :goto_72

    .line 267
    :catch_d1
    move-exception v2

    goto :goto_72

    .line 264
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    :catchall_d3
    move-exception v2

    .line 265
    if-eqz v11, :cond_d9

    :try_start_d6
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_df
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_da

    .line 269
    :cond_d9
    :goto_d9
    :try_start_d9
    throw v2
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    .line 237
    .end local v3    # "pos":J
    .end local v11    # "lock":Ljava/nio/channels/FileLock;
    .end local v14    # "r":Ljava/io/RandomAccessFile;
    :catchall_da
    move-exception v2

    monitor-exit p0

    throw v2

    .line 267
    .restart local v3    # "pos":J
    .restart local v11    # "lock":Ljava/nio/channels/FileLock;
    .restart local v14    # "r":Ljava/io/RandomAccessFile;
    .restart local v15    # "size":I
    :catch_dd
    move-exception v2

    goto :goto_72

    .end local v15    # "size":I
    :catch_df
    move-exception v5

    goto :goto_d9
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .registers 15
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x2710

    .line 190
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7c

    move-result-object v8

    .line 191
    .local v8, "r":Ljava/io/RandomAccessFile;
    if-nez v8, :cond_b

    .line 227
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 193
    :cond_b
    mul-long v1, p2, v3

    .line 194
    .local v1, "pos":J
    const/4 v7, 0x0

    .line 196
    .local v7, "lock":Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_4d

    .line 197
    :try_start_10
    array-length v0, p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_11} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_11} :catch_7f
    .catchall {:try_start_10 .. :try_end_11} :catchall_75

    const/16 v3, 0x2703

    if-le v0, v3, :cond_1d

    .line 221
    if-eqz v7, :cond_9

    :try_start_17
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_7c

    goto :goto_9

    .line 223
    :catch_1b
    move-exception v0

    goto :goto_9

    .line 201
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 202
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 203
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 204
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 209
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4d} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_4d} :catch_7f
    .catchall {:try_start_1d .. :try_end_4d} :catchall_75

    .line 221
    :cond_4d
    if-eqz v7, :cond_9

    :try_start_4f
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_7c

    goto :goto_9

    .line 223
    :catch_53
    move-exception v0

    goto :goto_9

    .line 211
    :catch_55
    move-exception v6

    .line 212
    .local v6, "ex":Ljava/io/IOException;
    :try_start_56
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    throw v6
    :try_end_75
    .catchall {:try_start_56 .. :try_end_75} :catchall_75

    .line 220
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_75
    move-exception v0

    .line 221
    if-eqz v7, :cond_7b

    :try_start_78
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_b0
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    .line 225
    :cond_7b
    :goto_7b
    :try_start_7b
    throw v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 190
    .end local v1    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "r":Ljava/io/RandomAccessFile;
    :catchall_7c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    .restart local v1    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    .restart local v8    # "r":Ljava/io/RandomAccessFile;
    :catch_7f
    move-exception v6

    .line 217
    .local v6, "ex":Ljava/lang/RuntimeException;
    :try_start_80
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_80 .. :try_end_a6} :catchall_75

    .line 221
    if-eqz v7, :cond_9

    :try_start_a8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ad
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_7c

    goto/16 :goto_9

    .line 223
    :catch_ad
    move-exception v0

    goto/16 :goto_9

    .end local v6    # "ex":Ljava/lang/RuntimeException;
    :catch_b0
    move-exception v3

    goto :goto_7b
.end method
