.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$RecordingCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field private final mNativePicture:I

.field private mRecordingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/Picture;-><init>(I)V

    .line 39
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "nativePicture"    # I

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-nez p1, :cond_b

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 137
    :cond_b
    iput p1, p0, Landroid/graphics/Picture;->mNativePicture:I

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/Picture;

    .prologue
    .line 47
    if-eqz p1, :cond_c

    iget v0, p1, Landroid/graphics/Picture;->mNativePicture:I

    :goto_4
    invoke-static {v0}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/Picture;-><init>(I)V

    .line 48
    return-void

    .line 47
    :cond_c
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .registers 3
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 106
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Picture;-><init>(I)V

    return-object v0
.end method

.method private static native nativeBeginRecording(III)I
.end method

.method private static native nativeConstructor(I)I
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeDraw(II)V
.end method

.method private static native nativeEndRecording(I)V
.end method

.method private static native nativeWriteToStream(ILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 58
    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v1, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(III)I

    move-result v0

    .line 59
    .local v0, "ni":I
    new-instance v1, Landroid/graphics/Picture$RecordingCanvas;

    invoke-direct {v1, p0, v0}, Landroid/graphics/Picture$RecordingCanvas;-><init>(Landroid/graphics/Picture;I)V

    iput-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 60
    iget-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 98
    :cond_7
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDraw(II)V

    .line 99
    return-void
.end method

.method public endRecording()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_c

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 72
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeEndRecording(I)V

    .line 74
    :cond_c
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeDestructor(I)V

    .line 127
    return-void
.end method

.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method final ni()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 116
    if-nez p1, :cond_8

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 119
    :cond_8
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {v0, p1, v1}, Landroid/graphics/Picture;->nativeWriteToStream(ILjava/io/OutputStream;[B)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 123
    :cond_1a
    return-void
.end method
