.class public Lorg/apache/xpath/functions/FuncSubstring;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncSubstring.java"


# static fields
.field static final serialVersionUID:J = -0x53387922fd0656eeL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .registers 3
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x2

    if-ge p1, v0, :cond_6

    .line 112
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncSubstring;->reportWrongNumberArgs()V

    .line 113
    :cond_6
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 13
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    .line 50
    .local v4, "s1":Lorg/apache/xml/utils/XMLString;
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v5

    .line 51
    .local v5, "start":D
    invoke-interface {v4}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v3

    .line 54
    .local v3, "lenOfS1":I
    if-gtz v3, :cond_1d

    .line 55
    sget-object v8, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .line 98
    :goto_1c
    return-object v8

    .line 60
    :cond_1d
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 65
    const-wide v5, -0x3ed17b8000000000L

    .line 66
    const/4 v7, 0x0

    .line 74
    .local v7, "startIndex":I
    :goto_29
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v9, :cond_5e

    .line 76
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide v1

    .line 77
    .local v1, "len":D
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    add-double/2addr v9, v5

    double-to-int v9, v9

    add-int/lit8 v0, v9, -0x1

    .line 80
    .local v0, "end":I
    if-gez v0, :cond_5a

    .line 81
    const/4 v0, 0x0

    .line 85
    :cond_3f
    :goto_3f
    if-le v7, v3, :cond_42

    .line 86
    move v7, v3

    .line 88
    :cond_42
    invoke-interface {v4, v7, v0}, Lorg/apache/xml/utils/XMLString;->substring(II)Lorg/apache/xml/utils/XMLString;

    move-result-object v8

    .line 98
    .end local v0    # "end":I
    .end local v1    # "len":D
    .local v8, "substr":Lorg/apache/xml/utils/XMLString;
    :goto_46
    check-cast v8, Lorg/apache/xpath/objects/XString;

    goto :goto_1c

    .line 70
    .end local v7    # "startIndex":I
    .end local v8    # "substr":Lorg/apache/xml/utils/XMLString;
    :cond_49
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v5, v9

    .line 71
    const-wide/16 v9, 0x0

    cmpl-double v9, v5, v9

    if-lez v9, :cond_58

    double-to-int v9, v5

    add-int/lit8 v7, v9, -0x1

    .restart local v7    # "startIndex":I
    :goto_57
    goto :goto_29

    .end local v7    # "startIndex":I
    :cond_58
    const/4 v7, 0x0

    goto :goto_57

    .line 82
    .restart local v0    # "end":I
    .restart local v1    # "len":D
    .restart local v7    # "startIndex":I
    :cond_5a
    if-le v0, v3, :cond_3f

    .line 83
    move v0, v3

    goto :goto_3f

    .line 92
    .end local v0    # "end":I
    .end local v1    # "len":D
    :cond_5e
    if-le v7, v3, :cond_61

    .line 93
    move v7, v3

    .line 94
    :cond_61
    invoke-interface {v4, v7}, Lorg/apache/xml/utils/XMLString;->substring(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v8

    .restart local v8    # "substr":Lorg/apache/xml/utils/XMLString;
    goto :goto_46
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_TWO_OR_THREE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
