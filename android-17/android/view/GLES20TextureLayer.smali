.class Landroid/view/GLES20TextureLayer;
.super Landroid/view/GLES20Layer;
.source "GLES20TextureLayer.java"


# instance fields
.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTexture:I


# direct methods
.method constructor <init>(Z)V
    .registers 5
    .param p1, "isOpaque"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/view/GLES20Layer;-><init>()V

    .line 33
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 34
    .local v0, "layerInfo":[I
    invoke-static {p1, v0}, Landroid/view/GLES20Canvas;->nCreateTextureLayer(Z[I)I

    move-result v1

    iput v1, p0, Landroid/view/GLES20TextureLayer;->mLayer:I

    .line 36
    iget v1, p0, Landroid/view/GLES20TextureLayer;->mLayer:I

    if-eqz v1, :cond_1f

    .line 37
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    .line 38
    new-instance v1, Landroid/view/GLES20Layer$Finalizer;

    iget v2, p0, Landroid/view/GLES20TextureLayer;->mLayer:I

    invoke-direct {v1, v2}, Landroid/view/GLES20Layer$Finalizer;-><init>(I)V

    iput-object v1, p0, Landroid/view/GLES20TextureLayer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    .line 42
    :goto_1e
    return-void

    .line 40
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/GLES20TextureLayer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    goto :goto_1e
.end method


# virtual methods
.method end(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "currentCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 65
    return-void
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_e

    .line 69
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    iput-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 71
    :cond_e
    iget-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Landroid/view/GLES20TextureLayer;->mLayer:I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method resize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 51
    return-void
.end method

.method setTransform(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 82
    iget v0, p0, Landroid/view/GLES20TextureLayer;->mLayer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSetTextureLayerTransform(II)V

    .line 83
    return-void
.end method

.method start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
    .registers 3
    .param p1, "currentCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method update(IIZ)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Layer;->update(IIZ)V

    .line 77
    iget v0, p0, Landroid/view/GLES20TextureLayer;->mLayer:I

    iget-object v1, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p1, p2, p3, v1}, Landroid/view/GLES20Canvas;->nUpdateTextureLayer(IIIZLandroid/graphics/SurfaceTexture;)V

    .line 78
    return-void
.end method
