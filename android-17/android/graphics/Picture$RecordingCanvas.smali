.class Landroid/graphics/Picture$RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingCanvas"
.end annotation


# instance fields
.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;I)V
    .registers 3
    .param p1, "pict"    # Landroid/graphics/Picture;
    .param p2, "nativeCanvas"    # I

    .prologue
    .line 156
    invoke-direct {p0, p2}, Landroid/graphics/Canvas;-><init>(I)V

    .line 157
    iput-object p1, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    .line 158
    return-void
.end method


# virtual methods
.method public drawPicture(Landroid/graphics/Picture;)V
    .registers 4
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 168
    iget-object v0, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    if-ne v0, p1, :cond_c

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot draw a picture into its recording canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_c
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 173
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot call setBitmap on a picture canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
