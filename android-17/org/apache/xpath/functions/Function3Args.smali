.class public Lorg/apache/xpath/functions/Function3Args;
.super Lorg/apache/xpath/functions/Function2Args;
.source "Function3Args.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/Function3Args$Arg2Owner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x6dd89585d6425356L


# instance fields
.field m_arg2:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    .line 128
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function2Args;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 156
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_11

    .line 157
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;-><init>(Lorg/apache/xpath/functions/Function3Args;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 158
    :cond_11
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, Lorg/apache/xpath/functions/Function2Args;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    goto :goto_7
.end method

.method public checkNumberArgs(I)V
    .registers 3
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    .line 103
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function3Args;->reportWrongNumberArgs()V

    .line 104
    :cond_6
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 5
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function2Args;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 179
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    :goto_8
    return v0

    .line 168
    .restart local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_9
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_24

    move-object v0, p1

    .line 170
    check-cast v0, Lorg/apache/xpath/functions/Function3Args;

    iget-object v0, v0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_16

    move v0, v1

    .line 171
    goto :goto_8

    .line 173
    :cond_16
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/functions/Function3Args;

    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v2, p1, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    .line 174
    goto :goto_8

    .line 176
    .restart local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_24
    check-cast p1, Lorg/apache/xpath/functions/Function3Args;

    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v0, p1, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_2c

    move v0, v1

    .line 177
    goto :goto_8

    .line 179
    :cond_2c
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 4
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function2Args;->fixupVariables(Ljava/util/Vector;I)V

    .line 64
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_c

    .line 65
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 66
    :cond_c
    return-void
.end method

.method public getArg2()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "three"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .registers 4
    .param p1, "arg"    # Lorg/apache/xpath/Expression;
    .param p2, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 81
    if-ge p2, v0, :cond_7

    .line 82
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function2Args;->setArg(Lorg/apache/xpath/Expression;I)V

    .line 90
    :goto_6
    return-void

    .line 83
    :cond_7
    if-ne v0, p2, :cond_f

    .line 85
    iput-object p1, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    .line 86
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_6

    .line 89
    :cond_f
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function3Args;->reportWrongNumberArgs()V

    goto :goto_6
.end method
