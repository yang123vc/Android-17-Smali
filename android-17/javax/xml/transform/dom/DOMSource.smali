.class public Ljavax/xml/transform/dom/DOMSource;
.super Ljava/lang/Object;
.source "DOMSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMSource/feature"


# instance fields
.field private node:Lorg/w3c/dom/Node;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    .line 91
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMSource;->setSystemId(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 100
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    .line 101
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemID"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    .line 120
    return-void
.end method
