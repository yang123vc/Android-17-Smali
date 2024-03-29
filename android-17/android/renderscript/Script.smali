.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 77
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .registers 6
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 87
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 88
    if-eqz p1, :cond_15

    .line 89
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getID()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(III)V

    .line 93
    :goto_14
    return-void

    .line 91
    :cond_15
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(III)V

    goto :goto_14
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 55
    if-nez p2, :cond_c

    if-nez p3, :cond_c

    .line 56
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_c
    const/4 v3, 0x0

    .line 60
    .local v3, "in_id":I
    if-eqz p2, :cond_13

    .line 61
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getID()I

    move-result v3

    .line 63
    :cond_13
    const/4 v4, 0x0

    .line 64
    .local v4, "out_id":I
    if-eqz p3, :cond_1a

    .line 65
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getID()I

    move-result v4

    .line 67
    :cond_1a
    const/4 v5, 0x0

    .line 68
    .local v5, "params":[B
    if-eqz p4, :cond_21

    .line 69
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 71
    :cond_21
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptForEach(IIII[B)V

    .line 72
    return-void
.end method

.method protected invoke(I)V
    .registers 4
    .param p1, "slot"    # I

    .prologue
    .line 29
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(II)V

    .line 30
    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .registers 6
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 39
    if-eqz p2, :cond_10

    .line 40
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/renderscript/RenderScript;->nScriptInvokeV(II[B)V

    .line 44
    :goto_f
    return-void

    .line 42
    :cond_10
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(II)V

    goto :goto_f
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 6
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 168
    :try_start_5
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v2

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(I[B)V
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_14} :catch_15

    .line 172
    return-void

    .line 169
    :catch_15
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 112
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nScriptSetVarD(IID)V

    .line 113
    return-void
.end method

.method public setVar(IF)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 102
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(IIF)V

    .line 103
    return-void
.end method

.method public setVar(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(III)V

    .line 123
    return-void
.end method

.method public setVar(IJ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 132
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(IIJ)V

    .line 133
    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 152
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v2

    if-nez p2, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v2, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(III)V

    .line 153
    return-void

    .line 152
    :cond_d
    invoke-virtual {p2}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    goto :goto_9
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 162
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/renderscript/RenderScript;->nScriptSetVarV(II[B)V

    .line 163
    return-void
.end method

.method public setVar(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 142
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Script;->getID()I

    move-result v2

    if-eqz p2, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v2, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarI(III)V

    .line 143
    return-void

    .line 142
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
