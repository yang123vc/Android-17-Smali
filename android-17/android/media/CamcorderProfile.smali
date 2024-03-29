.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field private static final QUALITY_LIST_END:I = 0x7

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3ef

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 297
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    .line 299
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .registers 13
    .param p1, "duration"    # I
    .param p2, "quality"    # I
    .param p3, "fileFormat"    # I
    .param p4, "videoCodec"    # I
    .param p5, "videoBitRate"    # I
    .param p6, "videoFrameRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "audioCodec"    # I
    .param p10, "audioBitRate"    # I
    .param p11, "audioSampleRate"    # I
    .param p12, "audioChannels"    # I

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    .line 316
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    .line 317
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 318
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 319
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 320
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 321
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 322
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 323
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 324
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 325
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 326
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 327
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .registers 5
    .param p0, "quality"    # I

    .prologue
    .line 208
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 209
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 210
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_1b

    .line 211
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 212
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 213
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 216
    :goto_17
    return-object v3

    .line 210
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 216
    :cond_1b
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .registers 5
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 259
    if-ltz p1, :cond_5

    const/4 v1, 0x7

    if-le p1, v1, :cond_26

    :cond_5
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_d

    const/16 v1, 0x3ef

    if-le p1, v1, :cond_26

    .line 263
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    .end local v0    # "errMessage":Ljava/lang/String;
    :cond_26
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method public static hasProfile(I)Z
    .registers 5
    .param p0, "quality"    # I

    .prologue
    .line 275
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 276
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 277
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_1b

    .line 278
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 279
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 280
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    .line 283
    :goto_17
    return v3

    .line 277
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 283
    :cond_1b
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static hasProfile(II)Z
    .registers 3
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 293
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
