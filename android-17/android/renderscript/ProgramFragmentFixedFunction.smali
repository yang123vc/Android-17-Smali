.class public Landroid/renderscript/ProgramFragmentFixedFunction;
.super Landroid/renderscript/ProgramFragment;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$1;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder;,
        Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ProgramFragment;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 34
    return-void
.end method
