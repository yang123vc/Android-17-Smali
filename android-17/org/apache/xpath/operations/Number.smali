.class public Lorg/apache/xpath/operations/Number;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Number.java"


# static fields
.field static final serialVersionUID:J = 0x63e0b7f89837d0b5L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public num(Lorg/apache/xpath/XPathContext;)D
    .registers 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/xpath/operations/Number;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide v0

    return-wide v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .param p1, "right"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 50
    .end local p1    # "right":Lorg/apache/xpath/objects/XObject;
    :goto_7
    return-object p1

    .restart local p1    # "right":Lorg/apache/xpath/objects/XObject;
    :cond_8
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    move-object p1, v0

    goto :goto_7
.end method
