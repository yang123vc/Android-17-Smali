.class public Lcom/android/internal/os/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "baseName"    # Ljava/io/File;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    .line 39
    return-void
.end method


# virtual methods
.method public failWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 91
    if-eqz p1, :cond_14

    .line 92
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 94
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 95
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 96
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    .line 101
    :cond_14
    :goto_14
    return-void

    .line 97
    :catch_15
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "failWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 79
    if-eqz p1, :cond_d

    .line 80
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 82
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 83
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_e

    .line 88
    :cond_d
    :goto_d
    return-void

    .line 84
    :catch_e
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "finishWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public getBaseFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openAppend()Ljava/io/FileOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v1

    .line 106
    :catch_9
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t append "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 124
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 125
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 127
    :cond_14
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 133
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 134
    .local v4, "pos":I
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 135
    .local v1, "avail":I
    new-array v2, v1, [B

    .line 137
    .local v2, "data":[B
    :cond_b
    :goto_b
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2b

    move-result v0

    .line 140
    .local v0, "amt":I
    if-gtz v0, :cond_17

    .line 154
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    return-object v2

    .line 145
    :cond_17
    add-int/2addr v4, v0

    .line 146
    :try_start_18
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 147
    array-length v6, v2

    sub-int/2addr v6, v4

    if-le v1, v6, :cond_b

    .line 148
    add-int v6, v4, v1

    new-array v3, v6, [B

    .line 149
    .local v3, "newData":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2b

    .line 150
    move-object v2, v3

    goto :goto_b

    .line 154
    .end local v0    # "amt":I
    .end local v1    # "avail":I
    .end local v2    # "data":[B
    .end local v3    # "newData":[B
    :catchall_2b
    move-exception v6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v6
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 47
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 48
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 49
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 50
    const-string v4, "AtomicFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t rename file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to backup file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_41
    :goto_41
    const/4 v3, 0x0

    .line 59
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_42
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "str":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_49} :catch_50

    .line 75
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    :goto_49
    return-object v3

    .line 54
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :cond_4a
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_41

    .line 60
    :catch_50
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 62
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_78

    .line 63
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_78
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    invoke-static {v4, v5, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 70
    :try_start_81
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_88} :catch_89

    .restart local v3    # "str":Ljava/io/FileOutputStream;
    goto :goto_49

    .line 71
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :catch_89
    move-exception v1

    .line 72
    .local v1, "e2":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public truncate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 115
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_2a

    .line 120
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_d
    return-void

    .line 116
    :catch_e
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t append "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2a
    move-exception v2

    goto :goto_d
.end method
