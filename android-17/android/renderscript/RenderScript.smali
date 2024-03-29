.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$RSMessageHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static sInitialized:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:I

.field mDev:I

.field mElement_ALLOCATION:Landroid/renderscript/Element;

.field mElement_A_8:Landroid/renderscript/Element;

.field mElement_BOOLEAN:Landroid/renderscript/Element;

.field mElement_CHAR_2:Landroid/renderscript/Element;

.field mElement_CHAR_3:Landroid/renderscript/Element;

.field mElement_CHAR_4:Landroid/renderscript/Element;

.field mElement_DOUBLE_2:Landroid/renderscript/Element;

.field mElement_DOUBLE_3:Landroid/renderscript/Element;

.field mElement_DOUBLE_4:Landroid/renderscript/Element;

.field mElement_ELEMENT:Landroid/renderscript/Element;

.field mElement_F32:Landroid/renderscript/Element;

.field mElement_F64:Landroid/renderscript/Element;

.field mElement_FLOAT_2:Landroid/renderscript/Element;

.field mElement_FLOAT_3:Landroid/renderscript/Element;

.field mElement_FLOAT_4:Landroid/renderscript/Element;

.field mElement_I16:Landroid/renderscript/Element;

.field mElement_I32:Landroid/renderscript/Element;

.field mElement_I64:Landroid/renderscript/Element;

.field mElement_I8:Landroid/renderscript/Element;

.field mElement_INT_2:Landroid/renderscript/Element;

.field mElement_INT_3:Landroid/renderscript/Element;

.field mElement_INT_4:Landroid/renderscript/Element;

.field mElement_LONG_2:Landroid/renderscript/Element;

.field mElement_LONG_3:Landroid/renderscript/Element;

.field mElement_LONG_4:Landroid/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field mElement_MESH:Landroid/renderscript/Element;

.field mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field mElement_RGBA_4444:Landroid/renderscript/Element;

.field mElement_RGBA_5551:Landroid/renderscript/Element;

.field mElement_RGBA_8888:Landroid/renderscript/Element;

.field mElement_RGB_565:Landroid/renderscript/Element;

.field mElement_RGB_888:Landroid/renderscript/Element;

.field mElement_SAMPLER:Landroid/renderscript/Element;

.field mElement_SCRIPT:Landroid/renderscript/Element;

.field mElement_SHORT_2:Landroid/renderscript/Element;

.field mElement_SHORT_3:Landroid/renderscript/Element;

.field mElement_SHORT_4:Landroid/renderscript/Element;

.field mElement_TYPE:Landroid/renderscript/Element;

.field mElement_U16:Landroid/renderscript/Element;

.field mElement_U32:Landroid/renderscript/Element;

.field mElement_U64:Landroid/renderscript/Element;

.field mElement_U8:Landroid/renderscript/Element;

.field mElement_UCHAR_2:Landroid/renderscript/Element;

.field mElement_UCHAR_3:Landroid/renderscript/Element;

.field mElement_UCHAR_4:Landroid/renderscript/Element;

.field mElement_UINT_2:Landroid/renderscript/Element;

.field mElement_UINT_3:Landroid/renderscript/Element;

.field mElement_UINT_4:Landroid/renderscript/Element;

.field mElement_ULONG_2:Landroid/renderscript/Element;

.field mElement_ULONG_3:Landroid/renderscript/Element;

.field mElement_ULONG_4:Landroid/renderscript/Element;

.field mElement_USHORT_2:Landroid/renderscript/Element;

.field mElement_USHORT_3:Landroid/renderscript/Element;

.field mElement_USHORT_4:Landroid/renderscript/Element;

.field mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 64
    const/4 v1, 0x0

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 66
    :try_start_3
    const-string/jumbo v1, "rs_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    .line 68
    const/4 v1, 0x1

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_f} :catch_10

    .line 73
    return-void

    .line 69
    :catch_10
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 736
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 859
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 860
    return-void
.end method

.method static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 882
    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 884
    .local v0, "rs":Landroid/renderscript/RenderScript;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    .line 886
    .local v1, "sdkVersion":I
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()I

    move-result v2

    iput v2, v0, Landroid/renderscript/RenderScript;->mDev:I

    .line 887
    iget v2, v0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/renderscript/RenderScript;->nContextCreate(III)I

    move-result v2

    iput v2, v0, Landroid/renderscript/RenderScript;->mContext:I

    .line 888
    iget v2, v0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v2, :cond_24

    .line 889
    new-instance v2, Landroid/renderscript/RSDriverException;

    const-string v3, "Failed to create RS context."

    invoke-direct {v2, v3}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    :cond_24
    new-instance v2, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v2, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v2, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 892
    iget-object v2, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 893
    return-object v0
.end method

.method static getTargetSdkVersion(Landroid/content/Context;)I
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 872
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method


# virtual methods
.method public contextDump()V
    .registers 2

    .prologue
    .line 902
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 903
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    .line 904
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 921
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 922
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(I)V

    .line 923
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iput-boolean v1, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 925
    :try_start_d
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_1f

    .line 929
    :goto_12
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    .line 930
    iput v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    .line 932
    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nDeviceDestroy(I)V

    .line 933
    iput v1, p0, Landroid/renderscript/RenderScript;->mDev:I

    .line 934
    return-void

    .line 926
    :catch_1f
    move-exception v0

    goto :goto_12
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 913
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .registers 2

    .prologue
    .line 937
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method declared-synchronized nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "alloc"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 280
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "alloc"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 263
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 264
    monitor-exit p0

    return-void

    .line 262
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 252
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 251
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)I
    .registers 5
    .param p1, "mips"    # I
    .param p2, "assetStream"    # I
    .param p3, "usage"    # I

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 257
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(IIII)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 256
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 242
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 241
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(III)I
    .registers 5
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "usage"    # I

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 237
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(IIII)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 236
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 247
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 246
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[BI)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [B
    .param p6, "sizeBytes"    # I

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 297
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[BI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 298
    monitor-exit p0

    return-void

    .line 296
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[FI)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [F
    .param p6, "sizeBytes"    # I

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 302
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[FI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 303
    monitor-exit p0

    return-void

    .line 301
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[II)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [I
    .param p6, "sizeBytes"    # I

    .prologue
    .line 286
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 287
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[II)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 288
    monitor-exit p0

    return-void

    .line 286
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[SI)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [S
    .param p6, "sizeBytes"    # I

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 292
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[SI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 293
    monitor-exit p0

    return-void

    .line 291
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIIIIIIII)V
    .registers 27
    .param p1, "dstAlloc"    # I
    .param p2, "dstXoff"    # I
    .param p3, "dstYoff"    # I
    .param p4, "dstMip"    # I
    .param p5, "dstFace"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "srcAlloc"    # I
    .param p9, "srcXoff"    # I
    .param p10, "srcYoff"    # I
    .param p11, "srcMip"    # I
    .param p12, "srcFace"    # I

    .prologue
    .line 322
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 323
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIIIIIIII)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 329
    monitor-exit p0

    return-void

    .line 322
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[BI)V
    .registers 21
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    .prologue
    .line 333
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 334
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[BI)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 335
    monitor-exit p0

    return-void

    .line 333
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[FI)V
    .registers 21
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [F
    .param p9, "sizeBytes"    # I

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 349
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[FI)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 350
    monitor-exit p0

    return-void

    .line 348
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[II)V
    .registers 21
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [I
    .param p9, "sizeBytes"    # I

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 344
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[II)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 345
    monitor-exit p0

    return-void

    .line 343
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[SI)V
    .registers 21
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [S
    .param p9, "sizeBytes"    # I

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 339
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[SI)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 340
    monitor-exit p0

    return-void

    .line 338
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 354
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 355
    monitor-exit p0

    return-void

    .line 353
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementData1D(IIII[BI)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "mip"    # I
    .param p4, "compIdx"    # I
    .param p5, "d"    # [B
    .param p6, "sizeBytes"    # I

    .prologue
    .line 307
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 308
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationElementData1D(IIIII[BI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 309
    monitor-exit p0

    return-void

    .line 307
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(I)V
    .registers 3
    .param p1, "alloc"    # I

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 275
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 276
    monitor-exit p0

    return-void

    .line 274
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetType(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 379
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 380
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 379
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[B)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "d"    # [B

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 360
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 361
    monitor-exit p0

    return-void

    .line 359
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[F)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "d"    # [F

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 375
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[F)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 376
    monitor-exit p0

    return-void

    .line 374
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[I)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "d"    # [I

    .prologue
    .line 369
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 370
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 371
    monitor-exit p0

    return-void

    .line 369
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[S)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "d"    # [S

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 365
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[S)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 366
    monitor-exit p0

    return-void

    .line 364
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize1D(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dimX"    # I

    .prologue
    .line 385
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 386
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 387
    monitor-exit p0

    return-void

    .line 385
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize2D(III)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I

    .prologue
    .line 390
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 391
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationResize2D(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 392
    monitor-exit p0

    return-void

    .line 390
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(II)V
    .registers 4
    .param p1, "alloc"    # I
    .param p2, "src"    # I

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 270
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 271
    monitor-exit p0

    return-void

    .line 269
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAssignName(I[B)V
    .registers 4
    .param p1, "obj"    # I
    .param p2, "name"    # [B

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 184
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAssignName(II[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramFragment(I)V
    .registers 3
    .param p1, "pf"    # I

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 158
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramRaster(I)V
    .registers 3
    .param p1, "pr"    # I

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 168
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramStore(I)V
    .registers 3
    .param p1, "pfs"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 153
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramVertex(I)V
    .registers 3
    .param p1, "pv"    # I

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 163
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindRootScript(I)V
    .registers 3
    .param p1, "script"    # I

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 143
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 144
    monitor-exit p0

    return-void

    .line 142
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindSampler(II)V
    .registers 4
    .param p1, "sampler"    # I
    .param p2, "slot"    # I

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 148
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(III)I
    .registers 5
    .param p1, "dev"    # I
    .param p2, "ver"    # I
    .param p3, "sdkVer"    # I

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextCreate(III)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreateGL(IIIIIIIIIIIIIFI)I
    .registers 17
    .param p1, "dev"    # I
    .param p2, "ver"    # I
    .param p3, "sdkVer"    # I
    .param p4, "colorMin"    # I
    .param p5, "colorPref"    # I
    .param p6, "alphaMin"    # I
    .param p7, "alphaPref"    # I
    .param p8, "depthMin"    # I
    .param p9, "depthPref"    # I
    .param p10, "stencilMin"    # I
    .param p11, "stencilPref"    # I
    .param p12, "samplesMin"    # I
    .param p13, "samplesPref"    # I
    .param p14, "samplesQ"    # F
    .param p15, "dpi"    # I

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p15}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(IIIIIIIIIIIIIFI)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextDeinitToClient(I)V
.end method

.method declared-synchronized nContextDestroy()V
    .registers 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 112
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextDestroy(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextDump(I)V
    .registers 3
    .param p1, "bits"    # I

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 132
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 133
    monitor-exit p0

    return-void

    .line 131
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 137
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextFinish(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 138
    monitor-exit p0

    return-void

    .line 136
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(I[I)I
.end method

.method native nContextInitToClient(I)V
.end method

.method declared-synchronized nContextPause()V
    .registers 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 173
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextPause(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 174
    monitor-exit p0

    return-void

    .line 172
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextPeekMessage(I[I)I
.end method

.method declared-synchronized nContextResume()V
    .registers 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 178
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextResume(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .registers 3
    .param p1, "p"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 127
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 128
    monitor-exit p0

    return-void

    .line 126
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/view/Surface;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 117
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(IIILandroid/view/Surface;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 118
    monitor-exit p0

    return-void

    .line 116
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 122
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nDeviceCreate()I
.end method

.method native nDeviceDestroy(I)V
.end method

.method native nDeviceSetConfig(III)V
.end method

.method declared-synchronized nElementCreate(IIZI)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "kind"    # I
    .param p3, "norm"    # Z
    .param p4, "vecSize"    # I

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 204
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 203
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementCreate2([I[Ljava/lang/String;[I)I
    .registers 5
    .param p1, "elements"    # [I
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "arraySizes"    # [I

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 209
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnElementCreate2(I[I[Ljava/lang/String;[I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 208
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetNativeData(I[I)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "elementData"    # [I

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 214
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(II[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 215
    monitor-exit p0

    return-void

    .line 213
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetSubElements(I[I[Ljava/lang/String;[I)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "IDs"    # [I
    .param p3, "names"    # [Ljava/lang/String;
    .param p4, "arraySizes"    # [I

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 220
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 4
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 407
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 406
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAssetStream(I)I
    .registers 3
    .param p1, "assetStream"    # I

    .prologue
    .line 396
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 397
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 396
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 402
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(ILjava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 401
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetEntryByIndex(II)I
    .registers 4
    .param p1, "fileA3D"    # I
    .param p2, "index"    # I

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 422
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(III)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 421
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetIndexEntries(II[I[Ljava/lang/String;)V
    .registers 11
    .param p1, "fileA3D"    # I
    .param p2, "numEntries"    # I
    .param p3, "IDs"    # [I
    .param p4, "names"    # [Ljava/lang/String;

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 417
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 418
    monitor-exit p0

    return-void

    .line 416
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetNumIndexEntries(I)I
    .registers 3
    .param p1, "fileA3D"    # I

    .prologue
    .line 411
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 412
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 411
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)I
    .registers 11
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "dpi"    # I

    .prologue
    .line 437
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 438
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 437
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FII)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I
    .param p4, "assetStream"    # I

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 433
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 432
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)I
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 428
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(ILjava/lang/String;FI)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 427
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nGetName(I)Ljava/lang/String;
    .registers 3
    .param p1, "obj"    # I

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 189
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnGetName(II)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 188
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshCreate([I[I[I)I
    .registers 5
    .param p1, "vtx"    # [I
    .param p2, "idx"    # [I
    .param p3, "prim"    # [I

    .prologue
    .line 563
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 564
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshCreate(I[I[I[I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 563
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndexCount(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 573
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 574
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 573
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndices(I[I[II)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "idxIds"    # [I
    .param p3, "primitives"    # [I
    .param p4, "vtxIdCount"    # I

    .prologue
    .line 583
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 584
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(II[I[II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 585
    monitor-exit p0

    return-void

    .line 583
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertexBufferCount(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 568
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 569
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(II)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 568
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertices(I[II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "vtxIds"    # [I
    .param p3, "vtxIdCount"    # I

    .prologue
    .line 578
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 579
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(II[II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 580
    monitor-exit p0

    return-void

    .line 578
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nObjDestroy(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_a

    .line 197
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnObjDestroy(II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 199
    :cond_a
    monitor-exit p0

    return-void

    .line 196
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindConstants(III)V
    .registers 5
    .param p1, "pv"    # I
    .param p2, "slot"    # I
    .param p3, "mID"    # I

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 538
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 539
    monitor-exit p0

    return-void

    .line 537
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindSampler(III)V
    .registers 5
    .param p1, "vpf"    # I
    .param p2, "slot"    # I
    .param p3, "s"    # I

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 548
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 549
    monitor-exit p0

    return-void

    .line 547
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindTexture(III)V
    .registers 5
    .param p1, "vpf"    # I
    .param p2, "slot"    # I
    .param p3, "a"    # I

    .prologue
    .line 542
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 543
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 544
    monitor-exit p0

    return-void

    .line 542
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[I)I
    .registers 4
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "params"    # [I

    .prologue
    .line 552
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 553
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(ILjava/lang/String;[I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 552
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramRasterCreate(ZI)I
    .registers 4
    .param p1, "pointSprite"    # Z
    .param p2, "cullMode"    # I

    .prologue
    .line 531
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 532
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(IZI)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 531
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreCreate(ZZZZZZIII)I
    .registers 21
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z
    .param p5, "depthMask"    # Z
    .param p6, "dither"    # Z
    .param p7, "srcMode"    # I
    .param p8, "dstMode"    # I
    .param p9, "depthFunc"    # I

    .prologue
    .line 524
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 525
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(IZZZZZZIII)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    move-result v0

    monitor-exit p0

    return v0

    .line 524
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramVertexCreate(Ljava/lang/String;[I)I
    .registers 4
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "params"    # [I

    .prologue
    .line 557
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 558
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(ILjava/lang/String;[I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 557
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)I
    .registers 15
    .param p1, "magFilter"    # I
    .param p2, "minFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "wrapR"    # I
    .param p6, "aniso"    # F

    .prologue
    .line 514
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 515
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(IIIIIIF)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit p0

    return v0

    .line 514
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(III)V
    .registers 5
    .param p1, "script"    # I
    .param p2, "alloc"    # I
    .param p3, "slot"    # I

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 445
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 446
    monitor-exit p0

    return-void

    .line 444
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    .registers 11
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "script"    # [B
    .param p4, "length"    # I

    .prologue
    .line 506
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 507
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 506
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(IIII[B)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "ain"    # I
    .param p4, "aout"    # I
    .param p5, "params"    # [B

    .prologue
    .line 460
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 461
    if-nez p5, :cond_12

    .line 462
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    .line 466
    :goto_10
    monitor-exit p0

    return-void

    .line 464
    :cond_12
    :try_start_12
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_10

    .line 460
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvoke(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "slot"    # I

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 455
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 456
    monitor-exit p0

    return-void

    .line 454
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeV(II[B)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "params"    # [B

    .prologue
    .line 469
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 470
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(III[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 471
    monitor-exit p0

    return-void

    .line 469
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(I[B)V
    .registers 4
    .param p1, "script"    # I
    .param p2, "timeZone"    # [B

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 450
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(II[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 451
    monitor-exit p0

    return-void

    .line 449
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarD(IID)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # D

    .prologue
    .line 489
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 490
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(IIID)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 491
    monitor-exit p0

    return-void

    .line 489
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(IIF)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # F

    .prologue
    .line 484
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 485
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 486
    monitor-exit p0

    return-void

    .line 484
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarI(III)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # I

    .prologue
    .line 474
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 475
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 476
    monitor-exit p0

    return-void

    .line 474
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(IIJ)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # J

    .prologue
    .line 479
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 480
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(IIIJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 481
    monitor-exit p0

    return-void

    .line 479
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(III)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # I

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 500
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 501
    monitor-exit p0

    return-void

    .line 499
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarV(II[B)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # [B

    .prologue
    .line 494
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 495
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(III[B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 496
    monitor-exit p0

    return-void

    .line 494
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(IIIIZZ)I
    .registers 15
    .param p1, "eid"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "mips"    # Z
    .param p6, "faces"    # Z

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 226
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZ)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit p0

    return v0

    .line 225
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(I[I)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "typeData"    # [I

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 231
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(II[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
.end method

.method native rsnAllocationCreateFromAssetStream(IIII)I
.end method

.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateTyped(IIII)I
.end method

.method native rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationData1D(IIIII[BI)V
.end method

.method native rsnAllocationData1D(IIIII[FI)V
.end method

.method native rsnAllocationData1D(IIIII[II)V
.end method

.method native rsnAllocationData1D(IIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIIIIIIIII)V
.end method

.method native rsnAllocationData2D(IIIIIIII[BI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[FI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[II)V
.end method

.method native rsnAllocationData2D(IIIIIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationElementData1D(IIIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(II)V
.end method

.method native rsnAllocationGetType(II)I
.end method

.method native rsnAllocationRead(II[B)V
.end method

.method native rsnAllocationRead(II[F)V
.end method

.method native rsnAllocationRead(II[I)V
.end method

.method native rsnAllocationRead(II[S)V
.end method

.method native rsnAllocationResize1D(III)V
.end method

.method native rsnAllocationResize2D(IIII)V
.end method

.method native rsnAllocationSyncAll(III)V
.end method

.method native rsnAssignName(II[B)V
.end method

.method native rsnContextBindProgramFragment(II)V
.end method

.method native rsnContextBindProgramRaster(II)V
.end method

.method native rsnContextBindProgramStore(II)V
.end method

.method native rsnContextBindProgramVertex(II)V
.end method

.method native rsnContextBindRootScript(II)V
.end method

.method native rsnContextBindSampler(III)V
.end method

.method native rsnContextCreate(III)I
.end method

.method native rsnContextCreateGL(IIIIIIIIIIIIIFI)I
.end method

.method native rsnContextDestroy(I)V
.end method

.method native rsnContextDump(II)V
.end method

.method native rsnContextFinish(I)V
.end method

.method native rsnContextPause(I)V
.end method

.method native rsnContextResume(I)V
.end method

.method native rsnContextSetPriority(II)V
.end method

.method native rsnContextSetSurface(IIILandroid/view/Surface;)V
.end method

.method native rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
.end method

.method native rsnElementCreate(IIIZI)I
.end method

.method native rsnElementCreate2(I[I[Ljava/lang/String;[I)I
.end method

.method native rsnElementGetNativeData(II[I)V
.end method

.method native rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
.end method

.method native rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method native rsnFileA3DCreateFromAssetStream(II)I
.end method

.method native rsnFileA3DCreateFromFile(ILjava/lang/String;)I
.end method

.method native rsnFileA3DGetEntryByIndex(III)I
.end method

.method native rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
.end method

.method native rsnFileA3DGetNumIndexEntries(II)I
.end method

.method native rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
.end method

.method native rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
.end method

.method native rsnFontCreateFromFile(ILjava/lang/String;FI)I
.end method

.method native rsnGetName(II)Ljava/lang/String;
.end method

.method native rsnMeshCreate(I[I[I[I)I
.end method

.method native rsnMeshGetIndexCount(II)I
.end method

.method native rsnMeshGetIndices(II[I[II)V
.end method

.method native rsnMeshGetVertexBufferCount(II)I
.end method

.method native rsnMeshGetVertices(II[II)V
.end method

.method native rsnObjDestroy(II)V
.end method

.method native rsnProgramBindConstants(IIII)V
.end method

.method native rsnProgramBindSampler(IIII)V
.end method

.method native rsnProgramBindTexture(IIII)V
.end method

.method native rsnProgramFragmentCreate(ILjava/lang/String;[I)I
.end method

.method native rsnProgramRasterCreate(IZI)I
.end method

.method native rsnProgramStoreCreate(IZZZZZZIII)I
.end method

.method native rsnProgramVertexCreate(ILjava/lang/String;[I)I
.end method

.method native rsnSamplerCreate(IIIIIIF)I
.end method

.method native rsnScriptBindAllocation(IIII)V
.end method

.method native rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
.end method

.method native rsnScriptForEach(IIIII)V
.end method

.method native rsnScriptForEach(IIIII[B)V
.end method

.method native rsnScriptInvoke(III)V
.end method

.method native rsnScriptInvokeV(III[B)V
.end method

.method native rsnScriptSetTimeZone(II[B)V
.end method

.method native rsnScriptSetVarD(IIID)V
.end method

.method native rsnScriptSetVarF(IIIF)V
.end method

.method native rsnScriptSetVarI(IIII)V
.end method

.method native rsnScriptSetVarJ(IIIJ)V
.end method

.method native rsnScriptSetVarObj(IIII)V
.end method

.method native rsnScriptSetVarV(III[B)V
.end method

.method native rsnTypeCreate(IIIIIZZ)I
.end method

.method native rsnTypeGetNativeData(II[I)V
.end method

.method safeID(Landroid/renderscript/BaseObj;)I
    .registers 3
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 941
    if-eqz p1, :cond_7

    .line 942
    invoke-virtual {p1}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    .line 944
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .registers 2
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSErrorHandler;

    .prologue
    .line 739
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 740
    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .registers 2
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSMessageHandler;

    .prologue
    .line 710
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 711
    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .registers 3
    .param p1, "p"    # Landroid/renderscript/RenderScript$Priority;

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 775
    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 776
    return-void
.end method

.method validate()V
    .registers 3

    .prologue
    .line 762
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v0, :cond_c

    .line 763
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_c
    return-void
.end method
