.class public Landroid/renderscript/ProgramFragment;
.super Landroid/renderscript/Program;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragment$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Program;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 42
    return-void
.end method
