.class public Landroid/renderscript/ProgramVertex;
.super Landroid/renderscript/Program;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertex$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Program;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 55
    return-void
.end method
