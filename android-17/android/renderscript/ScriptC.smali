.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 7
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .prologue
    .line 57
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 58
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I

    move-result v0

    .line 59
    .local v0, "id":I
    if-nez v0, :cond_12

    .line 60
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Loading of ScriptC script failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_12
    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptC;->setID(I)V

    .line 63
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I
    .registers 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .prologue
    .line 69
    const-class v10, Landroid/renderscript/ScriptC;

    monitor-enter v10

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_65

    move-result-object v5

    .line 72
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    :try_start_9
    new-array v6, v9, [B

    .line 73
    .local v6, "pgm":[B
    const/4 v7, 0x0

    .line 75
    .local v7, "pgmLength":I
    :goto_c
    array-length v9, v6

    sub-int v1, v9, v7

    .line 76
    .local v1, "bytesLeft":I
    if-nez v1, :cond_20

    .line 77
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 78
    .local v0, "buf2":[B
    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    move-object v6, v0

    .line 80
    array-length v9, v6

    sub-int v1, v9, v7

    .line 82
    .end local v0    # "buf2":[B
    :cond_20
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_59

    move-result v2

    .line 83
    .local v2, "bytesRead":I
    if-gtz v2, :cond_57

    .line 89
    :try_start_26
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_5e
    .catchall {:try_start_26 .. :try_end_29} :catchall_65

    .line 98
    :try_start_29
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "cacheDir":Ljava/lang/String;
    const-string v9, "ScriptC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Create script for resource = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, v8, v3, v6, v7}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    :try_end_54
    .catchall {:try_start_29 .. :try_end_54} :catchall_65

    move-result v9

    monitor-exit v10

    return v9

    .line 86
    .end local v3    # "cacheDir":Ljava/lang/String;
    .end local v8    # "resName":Ljava/lang/String;
    :cond_57
    add-int/2addr v7, v2

    .line 87
    goto :goto_c

    .line 89
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "pgm":[B
    .end local v7    # "pgmLength":I
    :catchall_59
    move-exception v9

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_65

    .line 91
    :catch_5e
    move-exception v4

    .line 92
    .local v4, "e":Ljava/io/IOException;
    :try_start_5f
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_65

    .line 69
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_65
    move-exception v9

    monitor-exit v10

    throw v9
.end method
