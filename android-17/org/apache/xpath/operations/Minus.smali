.class public Lorg/apache/xpath/operations/Minus;
.super Lorg/apache/xpath/operations/Operation;
.source "Minus.java"


# static fields
.field static final serialVersionUID:J = -0x49851d60c7690503L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public num(Lorg/apache/xpath/XPathContext;)D
    .registers 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xpath/operations/Minus;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/xpath/operations/Minus;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 8
    .param p1, "left"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "right"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    invoke-virtual {p2}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method
