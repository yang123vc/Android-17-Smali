.class public Landroid/opengl/Material;
.super Ljava/lang/Object;
.source "Material.java"


# static fields
.field private static black:[F


# instance fields
.field private d:F

.field private illum:I

.field private ka:[F

.field private kd:[F

.field private ks:[F

.field private map_kd:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ns:F

.field private parent:Landroid/opengl/Object3D;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Landroid/opengl/Material;->black:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/Object3D;)V
    .registers 4
    .param p1, "parent"    # Landroid/opengl/Object3D;

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/opengl/Material;->ka:[F

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/opengl/Material;->kd:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/opengl/Material;->ks:[F

    .line 41
    iput-object p1, p0, Landroid/opengl/Material;->parent:Landroid/opengl/Object3D;

    .line 42
    return-void
.end method


# virtual methods
.method public getMap_Kd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Landroid/opengl/Material;->name:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/io/DataInputStream;)V
    .registers 8
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 77
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/Material;->name:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 80
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Landroid/opengl/Material;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v0}, Landroid/opengl/Object3D;->hasTexcoords()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    .line 83
    iget-object v0, p0, Landroid/opengl/Material;->parent:Landroid/opengl/Object3D;

    iget-object v1, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/opengl/Object3D;->loadTexture(Ljava/lang/String;)V

    .line 86
    :cond_2d
    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v2

    .line 87
    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v3

    .line 88
    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v4

    .line 89
    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v5

    .line 91
    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v2

    .line 92
    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v3

    .line 93
    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v4

    .line 94
    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v5

    .line 96
    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v2

    .line 97
    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v3

    .line 98
    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v4

    .line 99
    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v5

    .line 101
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/opengl/Material;->ns:F

    .line 102
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Landroid/opengl/Material;->illum:I

    .line 103
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/opengl/Material;->d:F

    .line 104
    return-void
.end method

.method public setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x408

    .line 53
    const/16 v0, 0x1200

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 54
    const/16 v0, 0x1201

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 55
    const/16 v0, 0x1202

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 56
    const/16 v0, 0x1601

    iget v1, p0, Landroid/opengl/Material;->ns:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x43000000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {p1, v3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Material[name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ka={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ka:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ka:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ka:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kd={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ks={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/opengl/Material;->ns:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "map_kd=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    if-nez v0, :cond_100

    const-string v0, ""

    :goto_cd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "illum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/opengl/Material;->illum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/opengl/Material;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_100
    iget-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    goto :goto_cd
.end method
