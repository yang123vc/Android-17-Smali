.class Landroid/opengl/MaterialIndices;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private material:Landroid/opengl/Material;


# direct methods
.method public constructor <init>(Landroid/opengl/Material;Ljava/nio/ShortBuffer;)V
    .registers 4
    .param p1, "material"    # Landroid/opengl/Material;
    .param p2, "indexBuffer"    # Ljava/nio/ShortBuffer;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Landroid/opengl/MaterialIndices;->material:Landroid/opengl/Material;

    .line 32
    iput-object v0, p0, Landroid/opengl/MaterialIndices;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 35
    iput-object p1, p0, Landroid/opengl/MaterialIndices;->material:Landroid/opengl/Material;

    .line 36
    iput-object p2, p0, Landroid/opengl/MaterialIndices;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method public getIndexBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/opengl/MaterialIndices;->indexBuffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getMaterial()Landroid/opengl/Material;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/MaterialIndices;->material:Landroid/opengl/Material;

    return-object v0
.end method
