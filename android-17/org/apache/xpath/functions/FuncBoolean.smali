.class public Lorg/apache/xpath/functions/FuncBoolean;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncBoolean.java"


# static fields
.field static final serialVersionUID:J = 0x3c127e06ed2594a0L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncBoolean;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_e
.end method
