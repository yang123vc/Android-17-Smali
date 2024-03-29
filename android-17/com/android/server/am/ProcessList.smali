.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static final HOME_APP_ADJ:I = 0x6

.field static final MAX_HIDDEN_APPS:I = 0xf

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field static final VISIBLE_APP_ADJ:I = 0x1


# instance fields
.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    return-void
.end method

.method constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-array v1, v4, [I

    aput v5, v1, v5

    aput v2, v1, v2

    aput v3, v1, v3

    const/4 v2, 0x3

    aput v6, v1, v2

    sget v2, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0xf

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 122
    new-array v1, v4, [J

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 128
    new-array v1, v4, [J

    fill-array-data v1, :array_66

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 133
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 140
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 141
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 143
    invoke-direct {p0, v5, v5, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 144
    return-void

    .line 122
    nop

    :array_4a
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 128
    :array_66
    .array-data 8
        0x8000
        0xa000
        0xc000
        0xe000
        0x10000
        0x14000
    .end array-data
.end method

.method private updateOomLevels(IIZ)V
    .registers 21
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v15, 0x12c

    sub-long/2addr v13, v15

    long-to-float v13, v13

    const/high16 v14, 0x43c80000

    div-float v12, v13, v14

    .line 163
    .local v12, "scaleMem":F
    const v9, 0x25800

    .line 164
    .local v9, "minSize":I
    const v7, 0xfa000

    .line 165
    .local v7, "maxSize":I
    mul-int v13, p1, p2

    int-to-float v13, v13

    int-to-float v14, v9

    sub-float/2addr v13, v14

    const v14, 0xd4800

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 168
    .local v11, "scaleDisp":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, "adjString":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v8, "memString":Ljava/lang/StringBuilder;
    cmpl-float v13, v12, v11

    if-lez v13, :cond_7a

    move v10, v12

    .line 172
    .local v10, "scale":F
    :goto_2c
    const/4 v13, 0x0

    cmpg-float v13, v10, v13

    if-gez v13, :cond_7c

    const/4 v10, 0x0

    .line 174
    :cond_32
    :goto_32
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    if-ge v4, v13, :cond_85

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    aget-wide v5, v13, v4

    .line 176
    .local v5, "low":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    aget-wide v2, v13, v4

    .line 177
    .local v2, "high":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    long-to-float v14, v5

    sub-long v15, v2, v5

    long-to-float v15, v15

    mul-float/2addr v15, v10

    add-float/2addr v14, v15

    float-to-long v14, v14

    aput-wide v14, v13, v4

    .line 179
    if-lez v4, :cond_5f

    .line 180
    const/16 v13, 0x2c

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    const/16 v13, 0x2c

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :cond_5f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v13, v13, v4

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v13, v13, v4

    const-wide/16 v15, 0x400

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x1000

    div-long/2addr v13, v15

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .end local v2    # "high":J
    .end local v4    # "i":I
    .end local v5    # "low":J
    .end local v10    # "scale":F
    :cond_7a
    move v10, v11

    .line 171
    goto :goto_2c

    .line 173
    .restart local v10    # "scale":F
    :cond_7c
    const/high16 v13, 0x3f800000

    cmpl-float v13, v10, v13

    if-lez v13, :cond_32

    const/high16 v10, 0x3f800000

    goto :goto_32

    .line 188
    .restart local v4    # "i":I
    :cond_85
    if-eqz p3, :cond_9d

    .line 189
    const-string v13, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v13, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_9d
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_14
    .catchall {:try_start_1 .. :try_end_6} :catchall_35

    .line 209
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_43
    .catchall {:try_start_6 .. :try_end_d} :catchall_40

    .line 213
    if-eqz v2, :cond_12

    .line 215
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_3e

    :cond_12
    :goto_12
    move-object v1, v2

    .line 220
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_13
    :goto_13
    return-void

    .line 210
    :catch_14
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    :goto_15
    :try_start_15
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_35

    .line 213
    if-eqz v1, :cond_13

    .line 215
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_13

    .line 216
    :catch_33
    move-exception v3

    goto :goto_13

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_35
    move-exception v3

    :goto_36
    if-eqz v1, :cond_3b

    .line 215
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 213
    :cond_3b
    :goto_3b
    throw v3

    .line 216
    :catch_3c
    move-exception v4

    goto :goto_3b

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3e
    move-exception v3

    goto :goto_12

    .line 213
    :catchall_40
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_36

    .line 210
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_43
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_15
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1e

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 149
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 150
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1e

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1e

    .line 151
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 152
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 155
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_1e
    return-void
.end method

.method getMemLevel(I)J
    .registers 7
    .param p1, "adjustment"    # I

    .prologue
    const-wide/16 v3, 0x400

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 198
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    .line 199
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 202
    :goto_13
    return-wide v1

    .line 197
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 202
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_13
.end method
