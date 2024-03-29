.class public Lorg/apache/xml/utils/DOMHelper;
.super Ljava/lang/Object;
.source "DOMHelper.java"


# static fields
.field protected static final m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;


# instance fields
.field protected m_DOMFactory:Lorg/w3c/dom/Document;

.field m_NSInfos:Ljava/util/Hashtable;

.field protected m_candidateNoAncestorXMLNS:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 582
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 587
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 592
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 597
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 602
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    .line 607
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    .line 1230
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .registers 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Z)Lorg/w3c/dom/Document;
    .registers 8
    .param p0, "isSecureProcessing"    # Z

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 87
    .local v0, "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 106
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 107
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    .line 109
    .local v2, "outNode":Lorg/w3c/dom/Document;
    return-object v2

    .line 111
    .end local v0    # "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "outNode":Lorg/w3c/dom/Document;
    :catch_11
    move-exception v3

    .line 113
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ER_CREATEDOCUMENT_NOT_SUPPORTED"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1276
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 1281
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_4
    invoke-static {p0, v0}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1283
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_18

    move-result-object v1

    .line 1287
    .local v1, "s":Ljava/lang/String;
    :goto_11
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1290
    return-object v1

    .line 1283
    .end local v1    # "s":Ljava/lang/String;
    :cond_15
    :try_start_15
    const-string v1, ""
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    goto :goto_11

    .line 1287
    :catchall_18
    move-exception v2

    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v2
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 4
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "buf"    # Lorg/apache/xml/utils/FastStringBuffer;

    .prologue
    .line 1313
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 1340
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1319
    :pswitch_8
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_c
    if-eqz v0, :cond_7

    .line 1322
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1320
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    .line 1328
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_16
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    .line 1331
    :pswitch_1e
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    .line 1313
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1e
        :pswitch_16
        :pswitch_16
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 10
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 1015
    .local v2, "nodeType":S
    const/4 v6, 0x2

    if-ne v6, v2, :cond_3c

    .line 1017
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1035
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 1036
    .local v1, "impl":Lorg/w3c/dom/DOMImplementation;
    if-eqz v1, :cond_23

    const-string v6, "Core"

    const-string v7, "2.0"

    invoke-interface {v1, v6, v7}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1038
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .local v3, "parent":Lorg/w3c/dom/Node;
    move-object v4, v3

    .line 1067
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "impl":Lorg/w3c/dom/DOMImplementation;
    .end local v3    # "parent":Lorg/w3c/dom/Node;
    .local v4, "parent":Ljava/lang/Object;
    :goto_22
    return-object v4

    .line 1044
    .end local v4    # "parent":Ljava/lang/Object;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v1    # "impl":Lorg/w3c/dom/DOMImplementation;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :cond_23
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 1046
    .local v5, "rootElem":Lorg/w3c/dom/Element;
    if-nez v5, :cond_36

    .line 1048
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1054
    :cond_36
    invoke-static {v5, p0}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "impl":Lorg/w3c/dom/DOMImplementation;
    .end local v5    # "rootElem":Lorg/w3c/dom/Element;
    .restart local v3    # "parent":Lorg/w3c/dom/Node;
    :goto_3a
    move-object v4, v3

    .line 1067
    .restart local v4    # "parent":Ljava/lang/Object;
    goto :goto_22

    .line 1059
    .end local v3    # "parent":Lorg/w3c/dom/Node;
    .end local v4    # "parent":Ljava/lang/Object;
    :cond_3c
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    .restart local v3    # "parent":Lorg/w3c/dom/Node;
    goto :goto_3a
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 15
    .param p0, "node1"    # Lorg/w3c/dom/Node;
    .param p1, "node2"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v11, 0x1

    .line 206
    if-eq p0, p1, :cond_9

    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_9
    move v2, v11

    .line 329
    :cond_a
    :goto_a
    return v2

    .line 210
    :cond_b
    const/4 v2, 0x1

    .line 212
    .local v2, "isNodeAfter":Z
    invoke-static {p0}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 213
    .local v5, "parent1":Lorg/w3c/dom/Node;
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 216
    .local v6, "parent2":Lorg/w3c/dom/Node;
    if-eq v5, v6, :cond_1c

    invoke-static {v5, v6}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 218
    :cond_1c
    if-eqz v5, :cond_a

    .line 219
    invoke-static {v5, p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    goto :goto_a

    .line 245
    :cond_23
    const/4 v3, 0x2

    .local v3, "nParents1":I
    const/4 v4, 0x2

    .line 247
    .local v4, "nParents2":I
    :goto_25
    if-eqz v5, :cond_2e

    .line 249
    add-int/lit8 v3, v3, 0x1

    .line 251
    invoke-static {v5}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_25

    .line 254
    :cond_2e
    :goto_2e
    if-eqz v6, :cond_37

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 258
    invoke-static {v6}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_2e

    .line 263
    :cond_37
    move-object v9, p0

    .local v9, "startNode1":Lorg/w3c/dom/Node;
    move-object v10, p1

    .line 267
    .local v10, "startNode2":Lorg/w3c/dom/Node;
    if-ge v3, v4, :cond_47

    .line 270
    sub-int v0, v4, v3

    .line 272
    .local v0, "adjust":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    if-ge v1, v0, :cond_55

    .line 274
    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 277
    .end local v0    # "adjust":I
    .end local v1    # "i":I
    :cond_47
    if-le v3, v4, :cond_55

    .line 280
    sub-int v0, v3, v4

    .line 282
    .restart local v0    # "adjust":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4c
    if-ge v1, v0, :cond_55

    .line 284
    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 288
    .end local v0    # "adjust":I
    .end local v1    # "i":I
    :cond_55
    const/4 v7, 0x0

    .local v7, "prevChild1":Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    .line 291
    .local v8, "prevChild2":Lorg/w3c/dom/Node;
    :goto_57
    if-eqz v9, :cond_a

    .line 293
    if-eq v9, v10, :cond_61

    invoke-static {v9, v10}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 295
    :cond_61
    if-nez v7, :cond_69

    .line 299
    if-ge v3, v4, :cond_67

    move v2, v11

    .line 301
    :goto_66
    goto :goto_a

    .line 299
    :cond_67
    const/4 v2, 0x0

    goto :goto_66

    .line 306
    :cond_69
    invoke-static {v9, v7, v8}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    .line 309
    goto :goto_a

    .line 314
    :cond_6e
    move-object v7, v9

    .line 315
    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 316
    move-object v8, v10

    .line 317
    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    goto :goto_57
.end method

.method private static isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 13
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .param p1, "child1"    # Lorg/w3c/dom/Node;
    .param p2, "child2"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x2

    .line 365
    const/4 v7, 0x0

    .line 366
    .local v7, "isNodeAfterSibling":Z
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 367
    .local v1, "child1type":S
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 369
    .local v2, "child2type":S
    if-eq v9, v1, :cond_10

    if-ne v9, v2, :cond_10

    .line 374
    const/4 v7, 0x0

    .line 465
    :cond_f
    :goto_f
    return v7

    .line 376
    :cond_10
    if-ne v9, v1, :cond_16

    if-eq v9, v2, :cond_16

    .line 381
    const/4 v7, 0x1

    goto :goto_f

    .line 383
    :cond_16
    if-ne v9, v1, :cond_47

    .line 385
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 386
    .local v3, "children":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    .line 387
    .local v8, "nNodes":I
    const/4 v4, 0x0

    .local v4, "found1":Z
    const/4 v5, 0x0

    .line 390
    .local v5, "found2":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v8, :cond_f

    .line 392
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 394
    .local v0, "child":Lorg/w3c/dom/Node;
    if-eq p1, v0, :cond_31

    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 396
    :cond_31
    if-eqz v5, :cond_35

    .line 398
    const/4 v7, 0x0

    .line 400
    goto :goto_f

    .line 403
    :cond_35
    const/4 v4, 0x1

    .line 390
    :cond_36
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 405
    :cond_39
    if-eq p2, v0, :cond_41

    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 407
    :cond_41
    if-eqz v4, :cond_45

    .line 409
    const/4 v7, 0x1

    .line 411
    goto :goto_f

    .line 414
    :cond_45
    const/4 v5, 0x1

    goto :goto_36

    .line 431
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v3    # "children":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "found1":Z
    .end local v5    # "found2":Z
    .end local v6    # "i":I
    .end local v8    # "nNodes":I
    :cond_47
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 432
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .restart local v4    # "found1":Z
    const/4 v5, 0x0

    .line 434
    .restart local v5    # "found2":Z
    :goto_4d
    if-eqz v0, :cond_f

    .line 438
    if-eq p1, v0, :cond_57

    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 440
    :cond_57
    if-eqz v5, :cond_5b

    .line 442
    const/4 v7, 0x0

    .line 444
    goto :goto_f

    .line 447
    :cond_5b
    const/4 v4, 0x1

    .line 461
    :cond_5c
    :goto_5c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4d

    .line 449
    :cond_61
    if-eq p2, v0, :cond_69

    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 451
    :cond_69
    if-eqz v4, :cond_6d

    .line 453
    const/4 v7, 0x1

    .line 455
    goto :goto_f

    .line 458
    :cond_6d
    const/4 v5, 0x1

    goto :goto_5c
.end method

.method public static isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 3
    .param p0, "node1"    # Lorg/w3c/dom/Node;
    .param p1, "node2"    # Lorg/w3c/dom/Node;

    .prologue
    .line 341
    instance-of v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_11

    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_11

    .line 342
    check-cast p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .end local p0    # "node1":Lorg/w3c/dom/Node;
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .end local p1    # "node2":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    move-result v0

    .line 344
    :goto_10
    return v0

    .restart local p0    # "node1":Lorg/w3c/dom/Node;
    .restart local p1    # "node2":Lorg/w3c/dom/Node;
    :cond_11
    if-ne p0, p1, :cond_15

    const/4 v0, 0x1

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 7
    .param p0, "elem"    # Lorg/w3c/dom/Element;
    .param p1, "attr"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1197
    const/4 v2, 0x0

    .line 1204
    .local v2, "parent":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 1205
    .local v0, "check":Lorg/w3c/dom/Attr;
    if-ne v0, p1, :cond_c

    .line 1206
    move-object v2, p0

    .line 1208
    :cond_c
    if-nez v2, :cond_24

    .line 1210
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "node":Lorg/w3c/dom/Node;
    :goto_12
    if-eqz v1, :cond_24

    .line 1213
    const/4 v3, 0x1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v3, v4, :cond_25

    move-object v3, v1

    .line 1215
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-static {v3, p1}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1217
    if-eqz v2, :cond_25

    .line 1223
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_24
    return-object v2

    .line 1211
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    :cond_25
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_12
.end method


# virtual methods
.method public getDOMFactory()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    if-nez v0, :cond_a

    .line 1256
    invoke-static {}, Lorg/apache/xml/utils/DOMHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    .line 1259
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 1090
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedAttributeName(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .registers 5
    .param p1, "attr"    # Lorg/w3c/dom/Attr;

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "namespace":Ljava/lang/String;
    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    return-object v1

    :cond_22
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public getExpandedElementName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 5
    .param p1, "elem"    # Lorg/w3c/dom/Element;

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "namespace":Ljava/lang/String;
    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    return-object v1

    :cond_22
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public getLevel(Lorg/w3c/dom/Node;)S
    .registers 4
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 483
    const/4 v0, 0x1

    .line 485
    .local v0, "level":S
    :goto_1
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 487
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_1

    .line 490
    :cond_b
    return v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 831
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "qname":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 834
    .local v0, "index":I
    if-gez v0, :cond_d

    .end local v1    # "qname":Ljava/lang/String;
    :goto_c
    return-object v1

    .restart local v1    # "qname":Ljava/lang/String;
    :cond_d
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v7, 0x1

    .line 516
    move-object v3, p2

    .line 517
    .local v3, "parent":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 519
    .local v2, "namespace":Ljava/lang/String;
    const-string v5, "xml"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 521
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    .line 567
    :cond_d
    :goto_d
    return-object v2

    .line 523
    :cond_e
    const-string v5, "xmlns"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 530
    const-string v2, "http://www.w3.org/2000/xmlns/"

    goto :goto_d

    .line 535
    :cond_19
    const-string v5, ""

    if-ne p1, v5, :cond_3c

    const-string v1, "xmlns"

    .line 541
    .local v1, "declname":Ljava/lang/String;
    :goto_1f
    if-eqz v3, :cond_d

    if-nez v2, :cond_d

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    .local v4, "type":I
    if-eq v4, v7, :cond_2c

    const/4 v5, 0x5

    if-ne v4, v5, :cond_d

    .line 544
    :cond_2c
    if-ne v4, v7, :cond_50

    move-object v5, v3

    .line 555
    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 556
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_50

    .line 558
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 559
    goto :goto_d

    .line 535
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    .end local v1    # "declname":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_3c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    .line 563
    .restart local v1    # "declname":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_50
    invoke-static {v3}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1f
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 30
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 627
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    .line 629
    .local v20, "ntype":S
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_33

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 633
    .local v19, "nsObj":Ljava/lang/Object;
    if-nez v19, :cond_29

    const/16 v18, 0x0

    .line 634
    .end local v19    # "nsObj":Ljava/lang/Object;
    .local v18, "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :goto_1e
    if-nez v18, :cond_2e

    const/4 v8, 0x0

    .line 642
    .local v8, "hasProcessedNS":Z
    :goto_21
    if-eqz v8, :cond_37

    .line 644
    move-object/from16 v0, v18

    iget-object v14, v0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    .local v14, "namespaceOfPrefix":Ljava/lang/String;
    :cond_27
    :goto_27
    move-object v15, v14

    .line 816
    .end local v14    # "namespaceOfPrefix":Ljava/lang/String;
    .local v15, "namespaceOfPrefix":Ljava/lang/String;
    :goto_28
    return-object v15

    .line 633
    .end local v8    # "hasProcessedNS":Z
    .end local v15    # "namespaceOfPrefix":Ljava/lang/String;
    .end local v18    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    .restart local v19    # "nsObj":Ljava/lang/Object;
    :cond_29
    check-cast v19, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v18, v19

    goto :goto_1e

    .line 634
    .end local v19    # "nsObj":Ljava/lang/Object;
    .restart local v18    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :cond_2e
    move-object/from16 v0, v18

    iget-boolean v8, v0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    goto :goto_21

    .line 638
    .end local v18    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :cond_33
    const/4 v8, 0x0

    .line 639
    .restart local v8    # "hasProcessedNS":Z
    const/16 v18, 0x0

    .restart local v18    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    goto :goto_21

    .line 648
    :cond_37
    const/4 v14, 0x0

    .line 650
    .restart local v14    # "namespaceOfPrefix":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    .line 651
    .local v17, "nodeName":Ljava/lang/String;
    const/16 v25, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 654
    .local v10, "indexOfNSSep":I
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-ne v0, v1, :cond_88

    .line 656
    if-lez v10, :cond_86

    .line 658
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 674
    .local v24, "prefix":Ljava/lang/String;
    :goto_5a
    const/4 v4, 0x0

    .line 675
    .local v4, "ancestorsHaveXMLNS":Z
    const/4 v13, 0x0

    .line 677
    .local v13, "nHasXMLNS":Z
    const-string v25, "xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_98

    .line 679
    const-string v14, "http://www.w3.org/XML/1998/namespace"

    .line 793
    :cond_66
    :goto_66
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_27

    .line 795
    if-nez v14, :cond_223

    .line 797
    if-eqz v4, :cond_210

    .line 799
    if-eqz v13, :cond_1fd

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .end local v4    # "ancestorsHaveXMLNS":Z
    .end local v13    # "nHasXMLNS":Z
    .end local v24    # "prefix":Ljava/lang/String;
    :cond_86
    move-object v15, v14

    .line 665
    .end local v14    # "namespaceOfPrefix":Ljava/lang/String;
    .restart local v15    # "namespaceOfPrefix":Ljava/lang/String;
    goto :goto_28

    .line 670
    .end local v15    # "namespaceOfPrefix":Ljava/lang/String;
    .restart local v14    # "namespaceOfPrefix":Ljava/lang/String;
    :cond_88
    if-ltz v10, :cond_95

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "prefix":Ljava/lang/String;
    :goto_94
    goto :goto_5a

    .end local v24    # "prefix":Ljava/lang/String;
    :cond_95
    const-string v24, ""

    goto :goto_94

    .line 684
    .restart local v4    # "ancestorsHaveXMLNS":Z
    .restart local v13    # "nHasXMLNS":Z
    .restart local v24    # "prefix":Ljava/lang/String;
    :cond_98
    move-object/from16 v22, p1

    .line 686
    .local v22, "parent":Lorg/w3c/dom/Node;
    :cond_9a
    :goto_9a
    if-eqz v22, :cond_ae

    if-nez v14, :cond_ae

    .line 688
    if-eqz v18, :cond_ed

    move-object/from16 v0, v18

    iget v0, v0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_ed

    .line 765
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v12

    .line 767
    .local v12, "nCandidates":I
    if-lez v12, :cond_66

    .line 769
    if-nez v4, :cond_1f2

    if-nez v22, :cond_1f2

    .line 771
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_bf
    if-ge v9, v12, :cond_1f2

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    add-int/lit8 v26, v9, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 776
    .local v6, "candidateInfo":Ljava/lang/Object;
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    if-ne v6, v0, :cond_1d3

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_ea
    :goto_ea
    add-int/lit8 v9, v9, 0x2

    goto :goto_bf

    .line 695
    .end local v6    # "candidateInfo":Ljava/lang/Object;
    .end local v9    # "i":I
    .end local v12    # "nCandidates":I
    :cond_ed
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    .line 697
    .local v23, "parentType":I
    if-eqz v18, :cond_fb

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    move/from16 v25, v0

    if-eqz v25, :cond_183

    .line 699
    :cond_fb
    const/4 v7, 0x0

    .line 701
    .local v7, "elementHasXMLNS":Z
    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_160

    .line 703
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v16

    .line 705
    .local v16, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_109
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_160

    .line 707
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 708
    .local v5, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "aname":Ljava/lang/String;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x78

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a8

    .line 712
    const-string v25, "xmlns:"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 714
    .local v11, "isPrefix":Z
    const-string v25, "xmlns"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13f

    if-eqz v11, :cond_1a8

    .line 716
    :cond_13f
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_146

    .line 717
    const/4 v13, 0x1

    .line 719
    :cond_146
    const/4 v7, 0x1

    .line 720
    const/4 v4, 0x1

    .line 722
    if-eqz v11, :cond_1a5

    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 724
    .local v21, "p":Ljava/lang/String;
    :goto_152
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a8

    .line 726
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 735
    .end local v3    # "aname":Ljava/lang/String;
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    .end local v9    # "i":I
    .end local v11    # "isPrefix":Z
    .end local v16    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v21    # "p":Ljava/lang/String;
    :cond_160
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_183

    if-nez v18, :cond_183

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_183

    .line 738
    if-eqz v7, :cond_1ac

    sget-object v18, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 741
    :goto_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .end local v7    # "elementHasXMLNS":Z
    :cond_183
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v23

    if-ne v0, v1, :cond_1af

    .line 747
    invoke-static/range {v22 .. v22}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 757
    :goto_18f
    if-eqz v22, :cond_9a

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 761
    .restart local v19    # "nsObj":Ljava/lang/Object;
    if-nez v19, :cond_1ce

    const/16 v18, 0x0

    .line 762
    .end local v19    # "nsObj":Ljava/lang/Object;
    :goto_1a3
    goto/16 :goto_9a

    .line 722
    .restart local v3    # "aname":Ljava/lang/String;
    .restart local v5    # "attr":Lorg/w3c/dom/Node;
    .restart local v7    # "elementHasXMLNS":Z
    .restart local v9    # "i":I
    .restart local v11    # "isPrefix":Z
    .restart local v16    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_1a5
    const-string v21, ""

    goto :goto_152

    .line 705
    .end local v11    # "isPrefix":Z
    :cond_1a8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_109

    .line 738
    .end local v3    # "aname":Ljava/lang/String;
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    .end local v9    # "i":I
    .end local v16    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_1ac
    sget-object v18, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    goto :goto_174

    .line 751
    .end local v7    # "elementHasXMLNS":Z
    :cond_1af
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 754
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v22

    goto :goto_18f

    .line 761
    .restart local v19    # "nsObj":Ljava/lang/Object;
    :cond_1ce
    check-cast v19, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v18, v19

    goto :goto_1a3

    .line 781
    .end local v19    # "nsObj":Ljava/lang/Object;
    .end local v23    # "parentType":I
    .restart local v6    # "candidateInfo":Ljava/lang/Object;
    .restart local v9    # "i":I
    .restart local v12    # "nCandidates":I
    :cond_1d3
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    if-ne v6, v0, :cond_ea

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ea

    .line 789
    .end local v6    # "candidateInfo":Ljava/lang/Object;
    .end local v9    # "i":I
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_66

    .line 802
    .end local v12    # "nCandidates":I
    .end local v22    # "parent":Lorg/w3c/dom/Node;
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 806
    :cond_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 811
    :cond_223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    new-instance v26, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v26

    invoke-direct {v0, v14, v13}, Lorg/apache/xml/utils/NSInfo;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27
.end method

.method public getRoot(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 927
    .local v0, "root":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz p1, :cond_9

    .line 929
    move-object v0, p1

    .line 930
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    .line 933
    :cond_9
    return-object v0
.end method

.method public getRootNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 956
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 957
    .local v0, "nt":I
    const/16 v1, 0x9

    if-eq v1, v0, :cond_c

    const/16 v1, 0xb

    if-ne v1, v0, :cond_d

    .end local p1    # "n":Lorg/w3c/dom/Node;
    :cond_c
    :goto_c
    return-object p1

    .restart local p1    # "n":Lorg/w3c/dom/Node;
    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    goto :goto_c
.end method

.method public getUniqueID(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 1131
    const-string v4, ""

    .line 1132
    .local v4, "url":Ljava/lang/String;
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 1134
    .local v0, "doctype":Lorg/w3c/dom/DocumentType;
    if-eqz v0, :cond_2a

    .line 1136
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1137
    .local v1, "entities":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_10

    move-object v5, v4

    .line 1170
    .end local v1    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "url":Ljava/lang/String;
    .local v5, "url":Ljava/lang/String;
    :goto_f
    return-object v5

    .line 1139
    .end local v5    # "url":Ljava/lang/String;
    .restart local v1    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_10
    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Entity;

    .line 1140
    .local v2, "entity":Lorg/w3c/dom/Entity;
    if-nez v2, :cond_1a

    move-object v5, v4

    .line 1141
    .end local v4    # "url":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_f

    .line 1143
    .end local v5    # "url":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_1a
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, "notationName":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 1156
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1158
    if-nez v4, :cond_2a

    .line 1160
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .end local v1    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "entity":Lorg/w3c/dom/Entity;
    .end local v3    # "notationName":Ljava/lang/String;
    :cond_2a
    move-object v5, v4

    .line 1170
    .end local v4    # "url":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_f
.end method

.method public isIgnorableWhitespace(Lorg/w3c/dom/Text;)Z
    .registers 3
    .param p1, "node"    # Lorg/w3c/dom/Text;

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 911
    .local v0, "isIgnorable":Z
    return v0
.end method

.method public isNamespaceNode(Lorg/w3c/dom/Node;)Z
    .registers 6
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 974
    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 976
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "attrName":Ljava/lang/String;
    const-string v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "xmlns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    .line 981
    .end local v0    # "attrName":Ljava/lang/String;
    :cond_1d
    return v1
.end method

.method public setDOMFactory(Lorg/w3c/dom/Document;)V
    .registers 2
    .param p1, "domFactory"    # Lorg/w3c/dom/Document;

    .prologue
    .line 1242
    iput-object p1, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    .line 1243
    return-void
.end method

.method public shouldStripSourceNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .param p1, "textNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method
