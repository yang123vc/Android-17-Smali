.class public final Lorg/apache/xml/serializer/dom3/LSSerializerImpl;
.super Ljava/lang/Object;
.source "LSSerializerImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMConfiguration;
.implements Lorg/w3c/dom/ls/LSSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;
    }
.end annotation


# static fields
.field private static final CANONICAL:I = 0x1

.field private static final CDATA:I = 0x2

.field private static final CHARNORMALIZE:I = 0x4

.field private static final COMMENTS:I = 0x8

.field private static final DEFAULT_END_OF_LINE:Ljava/lang/String;

.field private static final DISCARDDEFAULT:I = 0x8000

.field private static final DTNORMALIZE:I = 0x10

.field private static final ELEM_CONTENT_WHITESPACE:I = 0x20

.field private static final ENTITIES:I = 0x40

.field private static final IGNORE_CHAR_DENORMALIZE:I = 0x20000

.field private static final INFOSET:I = 0x80

.field private static final NAMESPACEDECLS:I = 0x200

.field private static final NAMESPACES:I = 0x100

.field private static final NORMALIZECHARS:I = 0x400

.field private static final PRETTY_PRINT:I = 0x10000

.field private static final SCHEMAVALIDATE:I = 0x2000

.field private static final SPLITCDATA:I = 0x800

.field private static final VALIDATE:I = 0x1000

.field private static final WELLFORMED:I = 0x4000

.field private static final XMLDECL:I = 0x40000


# instance fields
.field private fDOMConfigProperties:Ljava/util/Properties;

.field private fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

.field private fEncoding:Ljava/lang/String;

.field private fEndOfLine:Ljava/lang/String;

.field protected fFeatures:I

.field private fRecognizedParameters:[Ljava/lang/String;

.field private fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field private fVisitedNode:Lorg/w3c/dom/Node;

.field private fXMLSerializer:Lorg/apache/xml/serializer/Serializer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    new-instance v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;

    invoke-direct {v1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "lineSeparator":Ljava/lang/String;
    if-eqz v0, :cond_20

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .end local v0    # "lineSeparator":Ljava/lang/String;
    :cond_1d
    :goto_1d
    sput-object v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    .line 89
    return-void

    .line 87
    .restart local v0    # "lineSeparator":Ljava/lang/String;
    :cond_20
    const-string v0, "\n"

    goto :goto_1d
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 95
    iput v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 98
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    .line 101
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    .line 104
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 107
    sget-object v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    .line 113
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    .line 182
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "canonical-form"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "cdata-sections"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "check-character-normalization"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "comments"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "datatype-normalization"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "element-content-whitespace"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "entities"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "infoset"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "namespaces"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "namespace-declarations"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "split-cdata-sections"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "validate"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "validate-if-schema"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "well-formed"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "discard-default-content"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "format-pretty-print"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "ignore-unknown-character-denormalizations"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "xml-declaration"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "error-handler"

    aput-object v3, v1, v2

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fRecognizedParameters:[Ljava/lang/String;

    .line 215
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 216
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 217
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 218
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 219
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 220
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 221
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 222
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 223
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 224
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 227
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    .line 230
    invoke-virtual {p0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->initializeSerializerProps()V

    .line 233
    const-string v1, "xml"

    invoke-static {v1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 240
    .local v0, "configProps":Ljava/util/Properties;
    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 243
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    .line 244
    return-void
.end method

.method private static createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;
    .registers 6
    .param p0, "code"    # S
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1499
    new-instance v0, Lorg/w3c/dom/ls/LSException;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-direct {v0, p0, v1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    .line 1500
    .local v0, "lse":Lorg/w3c/dom/ls/LSException;
    if-eqz p1, :cond_20

    # getter for: Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    invoke-static {}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->access$000()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1502
    :try_start_13
    # getter for: Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_23

    .line 1507
    :cond_20
    :goto_20
    return-object v0

    .line 1499
    .end local v0    # "lse":Lorg/w3c/dom/ls/LSException;
    :cond_21
    const/4 v1, 0x0

    goto :goto_8

    .line 1505
    .restart local v0    # "lse":Lorg/w3c/dom/ls/LSException;
    :catch_23
    move-exception v1

    goto :goto_20
.end method

.method private static getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "origPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 1465
    if-eqz p0, :cond_70

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_70

    const/16 v5, 0x25

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_70

    .line 1467
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "%"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1469
    .local v1, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 1470
    .local v2, "size":I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1471
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2f
    if-ge v0, v2, :cond_6c

    .line 1472
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1473
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_66

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->isHexDigit(C)Z

    move-result v5

    if-eqz v5, :cond_66

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->isHexDigit(C)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 1476
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1477
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1479
    :cond_66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1471
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1481
    .end local v3    # "token":Ljava/lang/String;
    :cond_6c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1483
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/StringBuffer;
    .end local v2    # "size":I
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    .end local p0    # "origPath":Ljava/lang/String;
    :cond_70
    return-object p0
.end method

.method private static isHexDigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1490
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 391
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_a8

    .line 392
    const-string v2, "cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "comments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "entities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "infoset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "namespaces"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "namespace-declarations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "split-cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "well-formed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "discard-default-content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "format-pretty-print"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "xml-declaration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 426
    .end local p2    # "value":Ljava/lang/Object;
    :cond_66
    :goto_66
    return v0

    .line 407
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_67
    const-string v2, "canonical-form"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "datatype-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 415
    :cond_8f
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_66

    move v0, v1

    goto :goto_66

    .line 417
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_99
    const-string v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 419
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_66

    .line 422
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a8
    const-string v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    if-eqz p2, :cond_66

    :cond_b2
    instance-of v2, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_66

    :cond_b6
    move v0, v1

    .line 426
    goto :goto_66
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 1

    .prologue
    .line 822
    return-object p0
.end method

.method public getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object v0
.end method

.method public getFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-object v0
.end method

.method protected getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 6
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1431
    const/4 v0, 0x0

    .line 1434
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz p1, :cond_28

    .line 1435
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_23

    move-object v0, p1

    .line 1437
    check-cast v0, Lorg/w3c/dom/Document;

    .line 1444
    :goto_e
    if-eqz v0, :cond_28

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    const-string v2, "Core"

    const-string v3, "3.0"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1445
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getInputEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1449
    :goto_22
    return-object v1

    .line 1440
    :cond_23
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_e

    .line 1449
    :cond_28
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getNewLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x10000

    .line 438
    const-string v1, "comments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 439
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_13

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 487
    :goto_12
    return-object v1

    .line 439
    :cond_13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 440
    :cond_16
    const-string v1, "cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 441
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_27

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_27
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 442
    :cond_2a
    const-string v1, "entities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 443
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3b

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_3b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 444
    :cond_3e
    const-string v1, "namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 445
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_4f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 446
    :cond_52
    const-string v1, "namespace-declarations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 447
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_63

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_63
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 448
    :cond_66
    const-string v1, "split-cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 449
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_77

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_77
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 450
    :cond_7a
    const-string v1, "well-formed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 451
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_8b

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_8b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 452
    :cond_8e
    const-string v1, "discard-default-content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 453
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_12

    :cond_a2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 454
    :cond_a6
    const-string v1, "format-pretty-print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 455
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_12

    :cond_b7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 456
    :cond_bb
    const-string v1, "xml-declaration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 457
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_ce

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_12

    :cond_ce
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 458
    :cond_d2
    const-string v1, "element-content-whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 459
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_e4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_12

    :cond_e4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 460
    :cond_e8
    const-string v1, "format-pretty-print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 461
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_f9

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_12

    :cond_f9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 462
    :cond_fd
    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 463
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 464
    :cond_109
    const-string v1, "canonical-form"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_131

    const-string v1, "check-character-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_131

    const-string v1, "datatype-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_131

    const-string v1, "validate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_131

    const-string v1, "validate-if-schema"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 470
    :cond_131
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 471
    :cond_135
    const-string v1, "infoset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 472
    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_16b

    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_16b

    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_16b

    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_16b

    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_16b

    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_16b

    iget v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_16b

    .line 479
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 481
    :cond_16b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 482
    :cond_16f
    const-string v1, "error-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 483
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    goto/16 :goto_12

    .line 484
    :cond_17b
    const-string v1, "schema-location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18b

    const-string v1, "schema-type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 487
    :cond_18b
    const/4 v1, 0x0

    goto/16 :goto_12

    .line 490
    :cond_18e
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "FEATURE_NOT_FOUND"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .registers 3

    .prologue
    .line 507
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fRecognizedParameters:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method protected getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 6
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1402
    const/4 v0, 0x0

    .line 1405
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz p1, :cond_28

    .line 1406
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_23

    move-object v0, p1

    .line 1408
    check-cast v0, Lorg/w3c/dom/Document;

    .line 1415
    :goto_e
    if-eqz v0, :cond_28

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    const-string v2, "Core"

    const-string v3, "3.0"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1416
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1420
    :goto_22
    return-object v1

    .line 1411
    :cond_23
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_e

    .line 1420
    :cond_28
    const-string v1, "UTF-8"

    goto :goto_22
.end method

.method protected getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 6
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1370
    const/4 v0, 0x0

    .line 1373
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz p1, :cond_28

    .line 1374
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_23

    move-object v0, p1

    .line 1376
    check-cast v0, Lorg/w3c/dom/Document;

    .line 1383
    :goto_e
    if-eqz v0, :cond_28

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    const-string v2, "Core"

    const-string v3, "3.0"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1384
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getXmlVersion()Ljava/lang/String;

    move-result-object v1

    .line 1390
    :goto_22
    return-object v1

    .line 1379
    :cond_23
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_e

    .line 1390
    :cond_28
    const-string v1, "1.0"

    goto :goto_22
.end method

.method public initializeSerializerProps()V
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}canonical-form"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}check-character-normalization"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://xml.apache.org/xerces-2j}entities"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    iget v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a8

    .line 298
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://xml.apache.org/xerces-2j}entities"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    :cond_a8
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    const-string v2, "default:no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "indent"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://xml.apache.org/xalan}indent-amount"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    const-string v2, "default:yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v1, "omit-xml-declaration"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method public setFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .registers 2
    .param p1, "filter"    # Lorg/w3c/dom/ls/LSSerializerFilter;

    .prologue
    .line 859
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    .line 860
    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .registers 2
    .param p1, "newLine"    # Ljava/lang/String;

    .prologue
    .line 873
    if-eqz p1, :cond_5

    .end local p1    # "newLine":Ljava/lang/String;
    :goto_2
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    .line 874
    return-void

    .line 873
    .restart local p1    # "newLine":Ljava/lang/String;
    :cond_5
    sget-object p1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->DEFAULT_END_OF_LINE:Ljava/lang/String;

    goto :goto_2
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/16 v7, 0x9

    const/16 v6, 0x11

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 520
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3b1

    .line 521
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 523
    .local v1, "state":Z
    const-string v2, "comments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 524
    if-eqz v1, :cond_2e

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v2, v2, 0x8

    :goto_20
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 527
    if-eqz v1, :cond_33

    .line 528
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 806
    .end local v1    # "state":Z
    :cond_2d
    :goto_2d
    return-void

    .line 524
    .restart local v1    # "state":Z
    :cond_2e
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_20

    .line 531
    :cond_33
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    .line 534
    :cond_3d
    const-string v2, "cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 535
    if-eqz v1, :cond_59

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v2, v2, 0x2

    :goto_4b
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 538
    if-eqz v1, :cond_5e

    .line 539
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    .line 535
    :cond_59
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_4b

    .line 542
    :cond_5e
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    .line 545
    :cond_68
    const-string v2, "entities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 546
    if-eqz v1, :cond_8d

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v2, v2, 0x40

    :goto_76
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 549
    if-eqz v1, :cond_92

    .line 550
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://xml.apache.org/xerces-2j}entities"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    .line 546
    :cond_8d
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v2, v2, -0x41

    goto :goto_76

    .line 556
    :cond_92
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 558
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://xml.apache.org/xerces-2j}entities"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    .line 562
    :cond_a5
    const-string v2, "namespaces"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 563
    if-eqz v1, :cond_c2

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v2, v2, 0x100

    :goto_b3
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 566
    if-eqz v1, :cond_c7

    .line 567
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 563
    :cond_c2
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v2, v2, -0x101

    goto :goto_b3

    .line 570
    :cond_c7
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 573
    :cond_d2
    const-string v2, "namespace-declarations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 575
    if-eqz v1, :cond_ef

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v2, v2, 0x200

    :goto_e0
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 578
    if-eqz v1, :cond_f4

    .line 579
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 575
    :cond_ef
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v2, v2, -0x201

    goto :goto_e0

    .line 582
    :cond_f4
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 585
    :cond_ff
    const-string v2, "split-cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 586
    if-eqz v1, :cond_11c

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v2, v2, 0x800

    :goto_10d
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 589
    if-eqz v1, :cond_121

    .line 590
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 586
    :cond_11c
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v2, v2, -0x801

    goto :goto_10d

    .line 593
    :cond_121
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 596
    :cond_12c
    const-string v2, "well-formed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_159

    .line 597
    if-eqz v1, :cond_149

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v2, v2, 0x4000

    :goto_13a
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 600
    if-eqz v1, :cond_14e

    .line 601
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 597
    :cond_149
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v2, v2, -0x4001

    goto :goto_13a

    .line 604
    :cond_14e
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 607
    :cond_159
    const-string v2, "discard-default-content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 609
    if-eqz v1, :cond_178

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v3, 0x8000

    or-int/2addr v2, v3

    :goto_169
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 612
    if-eqz v1, :cond_17f

    .line 613
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 609
    :cond_178
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v3, -0x8001

    and-int/2addr v2, v3

    goto :goto_169

    .line 616
    :cond_17f
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 619
    :cond_18a
    const-string v2, "format-pretty-print"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 620
    if-eqz v1, :cond_1a8

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    :goto_199
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 623
    if-eqz v1, :cond_1af

    .line 624
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 620
    :cond_1a8
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v3, -0x10001

    and-int/2addr v2, v3

    goto :goto_199

    .line 628
    :cond_1af
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 631
    :cond_1ba
    const-string v2, "xml-declaration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    .line 632
    if-eqz v1, :cond_1d8

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    :goto_1c9
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 634
    if-eqz v1, :cond_1df

    .line 635
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "omit-xml-declaration"

    const-string v4, "no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 632
    :cond_1d8
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const v3, -0x40001

    and-int/2addr v2, v3

    goto :goto_1c9

    .line 637
    :cond_1df
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 639
    :cond_1ea
    const-string v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    .line 640
    if-eqz v1, :cond_207

    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v2, v2, 0x20

    :goto_1f8
    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 643
    if-eqz v1, :cond_20c

    .line 644
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 640
    :cond_207
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v2, v2, -0x21

    goto :goto_1f8

    .line 647
    :cond_20c
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 650
    :cond_217
    const-string v2, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23e

    .line 652
    if-nez v1, :cond_233

    .line 654
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v7, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 659
    .end local v0    # "msg":Ljava/lang/String;
    :cond_233
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}ignore-unknown-character-denormalizations"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 662
    :cond_23e
    const-string v2, "canonical-form"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_266

    const-string v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_266

    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_266

    const-string v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_266

    const-string v2, "datatype-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d9

    .line 670
    :cond_266
    if-eqz v1, :cond_27a

    .line 671
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v7, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 676
    .end local v0    # "msg":Ljava/lang/String;
    :cond_27a
    const-string v2, "canonical-form"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28d

    .line 677
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}canonical-form"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 679
    :cond_28d
    const-string v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a0

    .line 680
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 682
    :cond_2a0
    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b3

    .line 683
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}validate"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 685
    :cond_2b3
    const-string v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c6

    .line 686
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "check-character-normalizationcheck-character-normalization"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 688
    :cond_2c6
    const-string v2, "datatype-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 689
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 696
    :cond_2d9
    const-string v2, "infoset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_375

    .line 698
    if-eqz v1, :cond_2d

    .line 699
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 700
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 701
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 702
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 703
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 704
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 705
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 706
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 707
    iget v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    .line 709
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 711
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 713
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 715
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 717
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    const-string v4, "explicit:yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 720
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 722
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://xml.apache.org/xerces-2j}entities"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 725
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 727
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}validate-if-schema"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 729
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v3, "{http://www.w3.org/TR/DOM-Level-3-LS}datatype-normalization"

    const-string v4, "explicit:no"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 734
    :cond_375
    const-string v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38d

    const-string v2, "schema-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38d

    const-string v2, "schema-type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39f

    .line 737
    :cond_38d
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "TYPE_MISMATCH_ERR"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 744
    .end local v0    # "msg":Ljava/lang/String;
    :cond_39f
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "FEATURE_NOT_FOUND"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v8, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 750
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3b1
    const-string v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d7

    .line 751
    if-eqz p2, :cond_3bf

    instance-of v2, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_3c5

    .line 752
    :cond_3bf
    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    goto/16 :goto_2d

    .line 754
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3c5
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "TYPE_MISMATCH_ERR"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 759
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3d7
    const-string v2, "schema-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e7

    const-string v2, "schema-type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_411

    .line 762
    :cond_3e7
    if-eqz p2, :cond_2d

    .line 763
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_3ff

    .line 764
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "TYPE_MISMATCH_ERR"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 769
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3ff
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v7, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 776
    .end local v0    # "msg":Ljava/lang/String;
    :cond_411
    const-string v2, "comments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "entities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "namespaces"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "namespace-declarations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "split-cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "well-formed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "discard-default-content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "format-pretty-print"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "xml-declaration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "canonical-form"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "datatype-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string v2, "infoset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b3

    .line 794
    :cond_4a1
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "TYPE_MISMATCH_ERR"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 801
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4b3
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "FEATURE_NOT_FOUND"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/w3c/dom/DOMException;

    invoke-direct {v2, v8, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
    .registers 28
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;
    .param p2, "destination"    # Lorg/w3c/dom/ls/LSOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    .line 889
    if-nez p2, :cond_38

    .line 890
    sget-object v20, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v21, "no-output-specified"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 894
    .local v9, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2c

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v22, 0x3

    const-string v23, "no-output-specified"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 899
    :cond_2c
    new-instance v20, Lorg/w3c/dom/ls/LSException;

    const/16 v21, 0x52

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v20

    .line 903
    .end local v9    # "msg":Ljava/lang/String;
    :cond_38
    if-nez p1, :cond_3d

    .line 904
    const/16 v20, 0x0

    .line 1096
    :goto_3c
    return v20

    .line 909
    :cond_3d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 910
    .local v12, "serializer":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_148

    .line 915
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v19

    .line 918
    .local v19, "xmlVersion":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_84

    .line 920
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_7e
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    .line 926
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/xml/serializer/Encodings;->isRecognizedEncoding(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_d4

    .line 927
    sget-object v20, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v21, "unsupported-encoding"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 931
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_ba

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v22, 0x3

    const-string v23, "unsupported-encoding"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 936
    :cond_ba
    new-instance v20, Lorg/w3c/dom/ls/LSException;

    const/16 v21, 0x52

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v20

    .line 921
    .end local v9    # "msg":Ljava/lang/String;
    :cond_c6
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_cf

    const-string v20, "UTF-8"

    goto :goto_7e

    :cond_cf
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    goto :goto_7e

    .line 939
    :cond_d4
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object v20

    const-string v21, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "{http://xml.apache.org/xerces-2j}xml-version"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "encoding"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 949
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_129

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_129

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_142

    :cond_129
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    move/from16 v20, v0

    const/high16 v21, 0x40000

    and-int v20, v20, v21

    if-eqz v20, :cond_142

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "omit-xml-declaration"

    const-string v22, "default:no"

    invoke-virtual/range {v20 .. v22}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 958
    :cond_142
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 962
    .end local v19    # "xmlVersion":Ljava/lang/String;
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    .line 973
    :try_start_157
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    move-result-object v18

    .line 974
    .local v18, "writer":Ljava/io/Writer;
    if-nez v18, :cond_2cd

    .line 977
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 978
    .local v10, "outputStream":Ljava/io/OutputStream;
    if-nez v10, :cond_2c6

    .line 981
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    move-result-object v14

    .line 982
    .local v14, "uri":Ljava/lang/String;
    if-nez v14, :cond_1d9

    .line 983
    sget-object v20, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v21, "no-output-specified"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 987
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_193

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v22, 0x3

    const-string v23, "no-output-specified"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 992
    :cond_193
    new-instance v20, Lorg/w3c/dom/ls/LSException;

    const/16 v21, 0x52

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v20
    :try_end_19f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_157 .. :try_end_19f} :catch_19f
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_157 .. :try_end_19f} :catch_2cb
    .catch Ljava/lang/RuntimeException; {:try_start_157 .. :try_end_19f} :catch_2d4
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_19f} :catch_2e4

    .line 1071
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "uri":Ljava/lang/String;
    .end local v18    # "writer":Ljava/io/Writer;
    :catch_19f
    move-exception v13

    .line 1073
    .local v13, "ue":Ljava/io/UnsupportedEncodingException;
    sget-object v20, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v21, "unsupported-encoding"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1077
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1ca

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v22, 0x3

    const-string v23, "unsupported-encoding"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v2, v13}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1082
    :cond_1ca
    const/16 v20, 0x52

    move/from16 v0, v20

    invoke-static {v0, v13}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/ls/LSException;

    throw v20

    .line 996
    .end local v9    # "msg":Ljava/lang/String;
    .end local v13    # "ue":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "uri":Ljava/lang/String;
    .restart local v18    # "writer":Ljava/io/Writer;
    :cond_1d9
    :try_start_1d9
    invoke-static {v14}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, "absoluteURI":Ljava/lang/String;
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 999
    .local v15, "url":Ljava/net/URL;
    const/16 v17, 0x0

    .line 1000
    .local v17, "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual {v15}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    .line 1001
    .local v11, "protocol":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 1011
    .local v6, "host":Ljava/lang/String;
    const-string v20, "file"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_284

    if-eqz v6, :cond_208

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_208

    const-string v20, "localhost"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_284

    .line 1014
    :cond_208
    new-instance v17, Ljava/io/FileOutputStream;

    .end local v17    # "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual {v15}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1034
    .restart local v17    # "urlOutStream":Ljava/io/OutputStream;
    :goto_219
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1050
    .end local v4    # "absoluteURI":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "protocol":Ljava/lang/String;
    .end local v14    # "uri":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    .end local v17    # "urlOutStream":Ljava/io/OutputStream;
    :goto_21e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v20, v0

    if-nez v20, :cond_232

    .line 1051
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    .line 1055
    :cond_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_249

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    .line 1060
    :cond_249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_260

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    .line 1065
    :cond_260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V

    .line 1096
    const/16 v20, 0x1

    goto/16 :goto_3c

    .line 1020
    .restart local v4    # "absoluteURI":Ljava/lang/String;
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "protocol":Ljava/lang/String;
    .restart local v14    # "uri":Ljava/lang/String;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v17    # "urlOutStream":Ljava/io/OutputStream;
    :cond_284
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    .line 1021
    .local v16, "urlCon":Ljava/net/URLConnection;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 1022
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 1023
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1024
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 1027
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v20, v0

    if-eqz v20, :cond_2c0

    .line 1028
    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 1029
    .local v7, "httpCon":Ljava/net/HttpURLConnection;
    const-string v20, "PUT"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1031
    .end local v7    # "httpCon":Ljava/net/HttpURLConnection;
    :cond_2c0
    invoke-virtual/range {v16 .. v16}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    goto/16 :goto_219

    .line 1038
    .end local v4    # "absoluteURI":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v11    # "protocol":Ljava/lang/String;
    .end local v14    # "uri":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlCon":Ljava/net/URLConnection;
    .end local v17    # "urlOutStream":Ljava/io/OutputStream;
    :cond_2c6
    invoke-interface {v12, v10}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_2c9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d9 .. :try_end_2c9} :catch_19f
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_1d9 .. :try_end_2c9} :catch_2cb
    .catch Ljava/lang/RuntimeException; {:try_start_1d9 .. :try_end_2c9} :catch_2d4
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_2c9} :catch_2e4

    goto/16 :goto_21e

    .line 1083
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v18    # "writer":Ljava/io/Writer;
    :catch_2cb
    move-exception v8

    .line 1085
    .local v8, "lse":Lorg/w3c/dom/ls/LSException;
    throw v8

    .line 1042
    .end local v8    # "lse":Lorg/w3c/dom/ls/LSException;
    .restart local v18    # "writer":Ljava/io/Writer;
    :cond_2cd
    :try_start_2cd
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V
    :try_end_2d2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2cd .. :try_end_2d2} :catch_19f
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_2cd .. :try_end_2d2} :catch_2cb
    .catch Ljava/lang/RuntimeException; {:try_start_2cd .. :try_end_2d2} :catch_2d4
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_2d2} :catch_2e4

    goto/16 :goto_21e

    .line 1086
    .end local v18    # "writer":Ljava/io/Writer;
    :catch_2d4
    move-exception v5

    .line 1087
    .local v5, "e":Ljava/lang/RuntimeException;
    const/16 v20, 0x52

    move/from16 v0, v20

    invoke-static {v0, v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/ls/LSException;

    throw v20

    .line 1088
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_2e4
    move-exception v5

    .line 1089
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_30b

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v22, 0x3

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1094
    :cond_30b
    const/16 v20, 0x52

    move/from16 v0, v20

    invoke-static {v0, v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/ls/LSException;

    throw v20
.end method

.method public writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 13
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x52

    .line 1112
    if-nez p1, :cond_7

    move-object v5, v6

    .line 1194
    :goto_6
    return-object v5

    .line 1118
    :cond_7
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 1119
    .local v3, "serializer":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v3}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 1121
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    if-eq p1, v5, :cond_55

    .line 1123
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 1125
    .local v4, "xmlVersion":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object v5

    const-string v7, "version"

    invoke-virtual {v5, v7, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1128
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v7, "{http://xml.apache.org/xerces-2j}xml-version"

    invoke-virtual {v5, v7, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1129
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v7, "encoding"

    const-string v8, "UTF-16"

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1135
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_43

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_43

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_53

    :cond_43
    iget v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    const/high16 v7, 0x40000

    and-int/2addr v5, v7

    if-eqz v5, :cond_53

    .line 1139
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    const-string v7, "omit-xml-declaration"

    const-string v8, "default:no"

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1144
    :cond_53
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 1147
    .end local v4    # "xmlVersion":Ljava/lang/String;
    :cond_55
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-interface {v5, v7}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    .line 1150
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1156
    .local v2, "output":Ljava/io/StringWriter;
    :try_start_61
    invoke-interface {v3, v2}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    .line 1160
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    if-nez v5, :cond_70

    .line 1161
    invoke-interface {v3}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/serializer/DOM3Serializer;

    iput-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    .line 1165
    :cond_70
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_7b

    .line 1166
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {v5, v7}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    .line 1170
    :cond_7b
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v5, :cond_86

    .line 1171
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v5, v7}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    .line 1175
    :cond_86
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    .line 1178
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    invoke-interface {v5, p1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V
    :try_end_96
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_61 .. :try_end_96} :catch_9c
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_96} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_96} :catch_aa

    .line 1194
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1179
    :catch_9c
    move-exception v1

    .line 1181
    .local v1, "lse":Lorg/w3c/dom/ls/LSException;
    throw v1

    .line 1182
    .end local v1    # "lse":Lorg/w3c/dom/ls/LSException;
    :catch_9e
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v10, v0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v5

    invoke-virtual {v5}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/ls/LSException;

    throw v5

    .line 1184
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_aa
    move-exception v0

    .line 1185
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_be

    .line 1186
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v7, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v8, 0x3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v6, v0}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v5, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1190
    :cond_be
    invoke-static {v10, v0}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v5

    invoke-virtual {v5}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/ls/LSException;

    throw v5
.end method

.method public writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .registers 24
    .param p1, "nodeArg"    # Lorg/w3c/dom/Node;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    .line 1210
    if-nez p1, :cond_5

    .line 1211
    const/16 v16, 0x0

    .line 1351
    :goto_4
    return v16

    .line 1215
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    .line 1216
    .local v11, "serializer":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v11}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_b2

    .line 1220
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    .line 1224
    .local v15, "xmlVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_42

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_3c
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    .line 1229
    :cond_42
    invoke-interface {v11}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object v16

    const-string v17, "version"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "{http://xml.apache.org/xerces-2j}xml-version"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "encoding"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEncoding:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1239
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v16

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_93

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_93

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v16

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_ac

    :cond_93
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fFeatures:I

    move/from16 v16, v0

    const/high16 v17, 0x40000

    and-int v16, v16, v17

    if-eqz v16, :cond_ac

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "omit-xml-declaration"

    const-string v18, "default:no"

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1248
    :cond_ac
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fVisitedNode:Lorg/w3c/dom/Node;

    .line 1252
    .end local v15    # "xmlVersion":Ljava/lang/String;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fXMLSerializer:Lorg/apache/xml/serializer/Serializer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMConfigProperties:Ljava/util/Properties;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    .line 1258
    if-nez p2, :cond_10b

    .line 1259
    :try_start_c3
    sget-object v16, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v17, "no-output-specified"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1261
    .local v9, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_ed

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v16, v0

    new-instance v17, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v18, 0x3

    const-string v19, "no-output-specified"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1266
    :cond_ed
    new-instance v16, Lorg/w3c/dom/ls/LSException;

    const/16 v17, 0x52

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v16
    :try_end_f9
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_c3 .. :try_end_f9} :catch_f9
    .catch Ljava/lang/RuntimeException; {:try_start_c3 .. :try_end_f9} :catch_1e8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_f9} :catch_1f8

    .line 1337
    .end local v9    # "msg":Ljava/lang/String;
    :catch_f9
    move-exception v8

    .line 1339
    .local v8, "lse":Lorg/w3c/dom/ls/LSException;
    throw v8

    .line 1226
    .end local v8    # "lse":Lorg/w3c/dom/ls/LSException;
    .restart local v15    # "xmlVersion":Ljava/lang/String;
    :cond_fb
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_105

    const-string v16, "UTF-8"

    goto/16 :goto_3c

    :cond_105
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getXMLEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3c

    .line 1270
    .end local v15    # "xmlVersion":Ljava/lang/String;
    :cond_10b
    :try_start_10b
    invoke-static/range {p2 .. p2}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1272
    .local v4, "absoluteURI":Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v12, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .line 1274
    .local v14, "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    .line 1275
    .local v10, "protocol":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 1286
    .local v6, "host":Ljava/lang/String;
    const-string v16, "file"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b1

    if-eqz v6, :cond_139

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_139

    const-string v16, "localhost"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b1

    .line 1290
    :cond_139
    new-instance v14, Ljava/io/FileOutputStream;

    .end local v14    # "urlOutStream":Ljava/io/OutputStream;
    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1310
    .restart local v14    # "urlOutStream":Ljava/io/OutputStream;
    :goto_148
    invoke-interface {v11, v14}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v16, v0

    if-nez v16, :cond_15f

    .line 1316
    invoke-interface {v11}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    .line 1320
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_176

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lorg/apache/xml/serializer/DOM3Serializer;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    .line 1325
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object/from16 v16, v0

    if-eqz v16, :cond_18d

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lorg/apache/xml/serializer/DOM3Serializer;->setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V

    .line 1330
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fEndOfLine:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/xml/serializer/DOM3Serializer;->setNewLine([C)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMSerializer:Lorg/apache/xml/serializer/DOM3Serializer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/DOM3Serializer;->serializeDOM3(Lorg/w3c/dom/Node;)V

    .line 1351
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 1296
    :cond_1b1
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    .line 1297
    .local v13, "urlCon":Ljava/net/URLConnection;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 1298
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 1299
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1300
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 1303
    instance-of v0, v13, Ljava/net/HttpURLConnection;

    move/from16 v16, v0

    if-eqz v16, :cond_1e2

    .line 1304
    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 1305
    .local v7, "httpCon":Ljava/net/HttpURLConnection;
    const-string v16, "PUT"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1307
    .end local v7    # "httpCon":Ljava/net/HttpURLConnection;
    :cond_1e2
    invoke-virtual {v13}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1e5
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_10b .. :try_end_1e5} :catch_f9
    .catch Ljava/lang/RuntimeException; {:try_start_10b .. :try_end_1e5} :catch_1e8
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_1e5} :catch_1f8

    move-result-object v14

    goto/16 :goto_148

    .line 1340
    .end local v4    # "absoluteURI":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v10    # "protocol":Ljava/lang/String;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "urlCon":Ljava/net/URLConnection;
    .end local v14    # "urlOutStream":Ljava/io/OutputStream;
    :catch_1e8
    move-exception v5

    .line 1341
    .local v5, "e":Ljava/lang/RuntimeException;
    const/16 v16, 0x52

    move/from16 v0, v16

    invoke-static {v0, v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/ls/LSException;

    throw v16

    .line 1342
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_1f8
    move-exception v5

    .line 1343
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_21f

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v16, v0

    new-instance v17, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v18, 0x3

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1348
    :cond_21f
    const/16 v16, 0x52

    move/from16 v0, v16

    invoke-static {v0, v5}, Lorg/apache/xml/serializer/dom3/LSSerializerImpl;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/ls/LSException;

    throw v16
.end method
