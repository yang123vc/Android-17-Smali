.class Lorg/apache/harmony/xml/ExpatParser$EntityParser;
.super Lorg/apache/harmony/xml/ExpatParser;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityParser"
.end annotation


# instance fields
.field private depth:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # I
    .param p4, "publicId"    # Ljava/lang/String;
    .param p5, "systemId"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    .line 771
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V
    .registers 7
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lorg/apache/harmony/xml/ExpatParser$1;

    .prologue
    .line 764
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 789
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    if-lez v0, :cond_b

    .line 790
    invoke-super {p0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_b
    return-void
.end method

.method protected declared-synchronized finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 802
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributePointer"    # I
    .param p5, "attributeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 780
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    if-lez v0, :cond_b

    .line 781
    invoke-super/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 784
    :cond_b
    return-void
.end method
