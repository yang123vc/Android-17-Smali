.class public Lorg/apache/xpath/XPathVisitor;
.super Ljava/lang/Object;
.source "XPathVisitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBinaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Operation;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "op"    # Lorg/apache/xpath/operations/Operation;

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "func"    # Lorg/apache/xpath/functions/Function;

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "path"    # Lorg/apache/xpath/axes/LocPathIterator;

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pattern"    # Lorg/apache/xpath/patterns/StepPattern;

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public visitNumberLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XNumber;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "num"    # Lorg/apache/xpath/objects/XNumber;

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pred"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "step"    # Lorg/apache/xpath/patterns/NodeTest;

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public visitStringLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XString;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "str"    # Lorg/apache/xpath/objects/XString;

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public visitUnaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/UnaryOperation;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "op"    # Lorg/apache/xpath/operations/UnaryOperation;

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public visitUnionPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/UnionPathIterator;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "path"    # Lorg/apache/xpath/axes/UnionPathIterator;

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public visitUnionPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/UnionPattern;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pattern"    # Lorg/apache/xpath/patterns/UnionPattern;

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .registers 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "var"    # Lorg/apache/xpath/operations/Variable;

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method
