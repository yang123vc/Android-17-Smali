.class public Lorg/apache/xalan/transformer/TransformerImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/xml/dtm/DTMWSFilter;
.implements Lorg/apache/xml/serializer/SerializerTrace;
.implements Lorg/apache/xpath/ExtensionsProvider;


# instance fields
.field m_attrSetStack:Ljava/util/Stack;

.field m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

.field m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

.field m_currentMatchTemplates:Ljava/util/Stack;

.field m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

.field m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

.field m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

.field private m_doc:I

.field private m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_exceptionThrown:Ljava/lang/Exception;

.field private m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

.field private m_hasBeenReset:Z

.field private m_hasTransformThreadErrorCatcher:Z

.field private m_incremental:Z

.field m_inputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

.field private m_modes:Ljava/util/Stack;

.field private m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

.field private m_optimizer:Z

.field private m_outputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_outputTarget:Ljavax/xml/transform/Result;

.field private m_quietConflictWarnings:Z

.field private m_reentryGuard:Ljava/lang/Boolean;

.field private m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private m_shouldReset:Z

.field private m_source_location:Z

.field private m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_textformat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_transformThread:Ljava/lang/Thread;

.field private m_urlOfSource:Ljava/lang/String;

.field m_userParams:Ljava/util/Vector;

.field private m_xcontext:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 8
    .param p1, "stylesheet"    # Lorg/apache/xalan/templates/StylesheetRoot;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 337
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    .line 112
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    .line 117
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 123
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    .line 126
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 142
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 155
    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    const-class v2, Lorg/apache/xml/serializer/ToTextStream;

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    .line 163
    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    const-class v2, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    .line 170
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    const-string v2, "text"

    invoke-direct {v1, v2}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    .line 191
    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    .line 204
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    .line 214
    new-instance v1, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v1}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    .line 219
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 225
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    .line 240
    new-instance v1, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v1}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    .line 246
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 251
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 256
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    .line 263
    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/ObjectStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    .line 277
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    .line 285
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    .line 293
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    .line 298
    new-instance v1, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v1, v4}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 306
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 316
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 319
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    .line 324
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    .line 360
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    .line 503
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 338
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    .line 339
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getIncremental()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    .line 340
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getSource_location()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 342
    new-instance v0, Lorg/apache/xpath/XPathContext;

    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;)V

    .line 343
    .local v0, "xPath":Lorg/apache/xpath/XPathContext;
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setIncremental(Z)V

    .line 344
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setIncremental(Z)V

    .line 345
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setSource_location(Z)V

    .line 346
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setSource_location(Z)V

    .line 348
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 349
    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->setSecureProcessing(Z)V

    .line 351
    :cond_c1
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setXPathContext(Lorg/apache/xpath/XPathContext;)V

    .line 352
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 353
    return-void
.end method

.method private fatalError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 684
    instance-of v0, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_1a

    .line 685
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/xml/utils/SAXSourceLocator;

    check-cast p1, Lorg/xml/sax/SAXParseException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    invoke-direct {v3, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 689
    :goto_19
    return-void

    .line 687
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_1a
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_19
.end method

.method private replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .registers 9
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;
    .param p2, "xval"    # Lorg/apache/xpath/objects/XObject;

    .prologue
    const/4 v5, 0x1

    .line 1462
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1464
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2b

    .line 1466
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    .line 1468
    .local v0, "arg":Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1470
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v4, Lorg/apache/xpath/Arg;

    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1477
    .end local v0    # "arg":Lorg/apache/xpath/Arg;
    :goto_27
    return-void

    .line 1464
    .restart local v0    # "arg":Lorg/apache/xpath/Arg;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1476
    .end local v0    # "arg":Lorg/apache/xpath/Arg;
    :cond_2b
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v4, Lorg/apache/xpath/Arg;

    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27
.end method

.method private resetUserParameters()V
    .registers 8

    .prologue
    .line 1538
    :try_start_0
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v6, :cond_5

    .line 1561
    :cond_4
    :goto_4
    return-void

    .line 1541
    :cond_5
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1542
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_4

    .line 1544
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    .line 1545
    .local v0, "arg":Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    .line 1548
    .local v3, "name":Lorg/apache/xml/utils/QName;
    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 1549
    .local v4, "s1":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    .line 1551
    .local v5, "s2":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_2e} :catch_31

    .line 1542
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1556
    .end local v0    # "arg":Lorg/apache/xpath/Arg;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "name":Lorg/apache/xml/utils/QName;
    .end local v4    # "s1":Ljava/lang/String;
    .end local v5    # "s2":Ljava/lang/String;
    :catch_31
    move-exception v6

    goto :goto_4
.end method

.method public static runTransformThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2953
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    .line 2954
    return-void
.end method

.method private transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I
    .registers 11
    .param p1, "templateParent"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "dtmFrag"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1792
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 1794
    .local v6, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    .line 1803
    .local v2, "rtfHandler":Lorg/xml/sax/ContentHandler;
    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1807
    .local v4, "savedRTreeHandler":Lorg/apache/xml/serializer/SerializationHandler;
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    .line 1808
    .local v0, "h":Lorg/apache/xml/serializer/ToSAXHandler;
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1809
    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1812
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1815
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1819
    .local v3, "rth":Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_17
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    .line 1824
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V
    :try_end_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_1d} :catch_33
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3a

    .line 1830
    const/4 v7, 0x1

    :try_start_1e
    invoke-virtual {p0, p1, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 1833
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 1839
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getDocument()I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2e

    move-result v1

    .line 1843
    .local v1, "resultFragment":I
    :try_start_28
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_2b
    .catch Lorg/xml/sax/SAXException; {:try_start_28 .. :try_end_2b} :catch_33
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    .line 1854
    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1857
    return v1

    .line 1843
    .end local v1    # "resultFragment":I
    :catchall_2e
    move-exception v7

    :try_start_2f
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    throw v7
    :try_end_33
    .catch Lorg/xml/sax/SAXException; {:try_start_2f .. :try_end_33} :catch_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_3a

    .line 1846
    :catch_33
    move-exception v5

    .line 1848
    .local v5, "se":Lorg/xml/sax/SAXException;
    :try_start_34
    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3a

    .line 1854
    .end local v5    # "se":Lorg/xml/sax/SAXException;
    :catchall_3a
    move-exception v7

    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v7
.end method


# virtual methods
.method public applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    .registers 26
    .param p1, "xslInstruction"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "template"    # Lorg/apache/xalan/templates/ElemTemplate;
    .param p3, "child"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1963
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v10

    .line 1964
    .local v10, "dtm":Lorg/apache/xml/dtm/DTM;
    move/from16 v0, p3

    invoke-interface {v10, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v20

    .line 1965
    .local v20, "nodeType":S
    const/16 v19, 0x0

    .line 1966
    .local v19, "isDefaultTextRule":Z
    const/16 v18, 0x0

    .line 1968
    .local v18, "isApplyImports":Z
    if-nez p1, :cond_3f

    const/16 v18, 0x0

    .line 1973
    :goto_18
    if-eqz p2, :cond_1c

    if-eqz v18, :cond_90

    .line 1975
    :cond_1c
    const/4 v8, 0x0

    .line 1977
    .local v8, "endImportLevel":I
    if-eqz v18, :cond_4d

    .line 1979
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    .line 1981
    .local v7, "maxImportLevel":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v8

    .line 1995
    :goto_31
    if-eqz v18, :cond_4f

    const/4 v3, -0x1

    if-ne v7, v3, :cond_4f

    .line 1997
    const/16 p2, 0x0

    .line 2028
    :goto_38
    if-nez p2, :cond_90

    .line 2030
    packed-switch v20, :pswitch_data_16c

    .line 2048
    :pswitch_3d
    const/4 v3, 0x0

    .line 2116
    .end local v7    # "maxImportLevel":I
    .end local v8    # "endImportLevel":I
    :goto_3e
    return v3

    .line 1968
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    const/16 v5, 0x48

    if-ne v3, v5, :cond_4a

    const/16 v18, 0x1

    goto :goto_18

    :cond_4a
    const/16 v18, 0x0

    goto :goto_18

    .line 1986
    .restart local v8    # "endImportLevel":I
    :cond_4d
    const/4 v7, -0x1

    .restart local v7    # "maxImportLevel":I
    goto :goto_31

    .line 2004
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2008
    .local v4, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_53
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v6

    .line 2012
    .local v6, "mode":Lorg/apache/xml/utils/QName;
    if-eqz v18, :cond_70

    .line 2013
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v10}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_83

    move-result-object p2

    .line 2022
    :goto_6c
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_38

    .line 2016
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move-object v12, v4

    move/from16 v13, p3

    move-object v14, v6

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_81
    .catchall {:try_start_70 .. :try_end_81} :catchall_83

    move-result-object p2

    goto :goto_6c

    .line 2022
    .end local v6    # "mode":Lorg/apache/xml/utils/QName;
    :catchall_83
    move-exception v3

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v3

    .line 2034
    .end local v4    # "xctxt":Lorg/apache/xpath/XPathContext;
    :pswitch_88
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    .line 2057
    .end local v7    # "maxImportLevel":I
    .end local v8    # "endImportLevel":I
    :cond_90
    :goto_90
    :try_start_90
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 2059
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 2062
    if-nez v18, :cond_c5

    .line 2063
    new-instance v17, Lorg/apache/xpath/NodeSetDTM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-direct {v0, v1, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 2064
    .local v17, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_c5
    .catch Lorg/xml/sax/SAXException; {:try_start_90 .. :try_end_c5} :catch_111
    .catchall {:try_start_90 .. :try_end_c5} :catchall_11a

    .line 2067
    .end local v17    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :cond_c5
    if-eqz v19, :cond_14a

    .line 2069
    packed-switch v20, :pswitch_data_186

    .line 2105
    :goto_ca
    if-nez v19, :cond_d7

    .line 2106
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/VariableStack;->unlink()V

    .line 2107
    :cond_d7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2108
    if-nez v18, :cond_e7

    .line 2109
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 2111
    :cond_e7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 2116
    const/4 v3, 0x1

    goto/16 :goto_3e

    .line 2039
    .restart local v7    # "maxImportLevel":I
    .restart local v8    # "endImportLevel":I
    :pswitch_f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    .line 2040
    const/16 v19, 0x1

    .line 2041
    goto :goto_90

    .line 2043
    :pswitch_fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    .line 2044
    goto :goto_90

    .line 2073
    .end local v7    # "maxImportLevel":I
    .end local v8    # "endImportLevel":I
    :pswitch_104
    :try_start_104
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1, v10, v3, v5}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    :try_end_110
    .catch Lorg/xml/sax/SAXException; {:try_start_104 .. :try_end_110} :catch_111
    .catchall {:try_start_104 .. :try_end_110} :catchall_11a

    goto :goto_ca

    .line 2099
    :catch_111
    move-exception v21

    .line 2101
    .local v21, "se":Lorg/xml/sax/SAXException;
    :try_start_112
    new-instance v3, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_11a

    .line 2105
    .end local v21    # "se":Lorg/xml/sax/SAXException;
    :catchall_11a
    move-exception v3

    if-nez v19, :cond_128

    .line 2106
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/VariableStack;->unlink()V

    .line 2107
    :cond_128
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2108
    if-nez v18, :cond_138

    .line 2109
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 2111
    :cond_138
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v3

    .line 2077
    :pswitch_13f
    :try_start_13f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, p3

    invoke-interface {v10, v0, v3, v5}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto :goto_ca

    .line 2093
    :cond_14a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v3

    move-object/from16 v0, p2

    iget v5, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v3, v5}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 2096
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_16a
    .catch Lorg/xml/sax/SAXException; {:try_start_13f .. :try_end_16a} :catch_111
    .catchall {:try_start_13f .. :try_end_16a} :catchall_11a

    goto/16 :goto_ca

    .line 2030
    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_88
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_fb
        :pswitch_3d
        :pswitch_88
    .end packed-switch

    .line 2069
    :pswitch_data_186
    .packed-switch 0x2
        :pswitch_13f
        :pswitch_104
        :pswitch_104
    .end packed-switch
.end method

.method public clearParameters()V
    .registers 4

    .prologue
    .line 1609
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1611
    :try_start_3
    new-instance v0, Lorg/apache/xpath/VariableStack;

    invoke-direct {v0}, Lorg/apache/xpath/VariableStack;-><init>()V

    .line 1613
    .local v0, "varstack":Lorg/apache/xpath/VariableStack;
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1, v0}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    .line 1615
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    .line 1616
    monitor-exit v2

    .line 1617
    return-void

    .line 1616
    .end local v0    # "varstack":Lorg/apache/xpath/VariableStack;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;
    .registers 4
    .param p1, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 934
    .local v0, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    return-object v0
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;
    .registers 29
    .param p1, "outputTarget"    # Ljavax/xml/transform/Result;
    .param p2, "format"    # Lorg/apache/xalan/templates/OutputProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 959
    const/4 v11, 0x0

    .line 961
    .local v11, "outputNode":Lorg/w3c/dom/Node;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMResult;

    move/from16 v21, v0

    if-eqz v21, :cond_8d

    move-object/from16 v21, p1

    .line 963
    check-cast v21, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object/from16 v21, p1

    .line 964
    check-cast v21, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    .line 969
    .local v10, "nextSibling":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_6c

    .line 971
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    .line 972
    .local v19, "type":S
    const/16 v21, 0x9

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_67

    move-object/from16 v21, v11

    check-cast v21, Lorg/w3c/dom/Document;

    move-object/from16 v2, v21

    .line 986
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    .local v2, "doc":Lorg/w3c/dom/Document;
    :goto_2d
    const/16 v21, 0xb

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_87

    new-instance v5, Lorg/apache/xml/utils/DOMBuilder;

    move-object/from16 v21, v11

    check-cast v21, Lorg/w3c/dom/DocumentFragment;

    move-object/from16 v0, v21

    invoke-direct {v5, v2, v0}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    .line 991
    .local v5, "handler":Lorg/apache/xml/utils/DOMBuilder;
    :goto_40
    if-eqz v10, :cond_45

    .line 992
    invoke-virtual {v5, v10}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 994
    :cond_45
    const-string v21, "encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 995
    .local v3, "encoding":Ljava/lang/String;
    new-instance v20, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v5, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    .line 1102
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v5    # "handler":Lorg/apache/xml/utils/DOMBuilder;
    .end local v10    # "nextSibling":Lorg/w3c/dom/Node;
    .end local v19    # "type":S
    .local v20, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_56
    :goto_56
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v14

    .line 1105
    .local v14, "srcLocator":Ljavax/xml/transform/SourceLocator;
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lorg/apache/xml/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 1108
    return-object v20

    .line 972
    .end local v14    # "srcLocator":Ljavax/xml/transform/SourceLocator;
    .end local v20    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v10    # "nextSibling":Lorg/w3c/dom/Node;
    .restart local v19    # "type":S
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_67
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    goto :goto_2d

    .line 978
    .end local v19    # "type":S
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v7

    .line 979
    .local v7, "isSecureProcessing":Z
    invoke-static {v7}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 980
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    move-object v11, v2

    .line 981
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    .line 983
    .restart local v19    # "type":S
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    goto :goto_2d

    .line 986
    .end local v7    # "isSecureProcessing":Z
    :cond_87
    new-instance v5, Lorg/apache/xml/utils/DOMBuilder;

    invoke-direct {v5, v2, v11}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    goto :goto_40

    .line 997
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "nextSibling":Lorg/w3c/dom/Node;
    .end local v19    # "type":S
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_8d
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXResult;

    move/from16 v21, v0

    if-eqz v21, :cond_119

    .line 999
    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    .line 1001
    .local v5, "handler":Lorg/xml/sax/ContentHandler;
    if-nez v5, :cond_a5

    .line 1002
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "handler can not be null for a SAXResult"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1006
    :cond_a5
    instance-of v0, v5, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v21, v0

    if-eqz v21, :cond_117

    move-object v8, v5

    .line 1007
    check-cast v8, Lorg/xml/sax/ext/LexicalHandler;

    .line 1011
    .local v8, "lexHandler":Lorg/xml/sax/ext/LexicalHandler;
    :goto_ae
    const-string v21, "encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1012
    .restart local v3    # "encoding":Ljava/lang/String;
    const-string v21, "method"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1014
    .local v9, "method":Ljava/lang/String;
    new-instance v18, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v8, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    .line 1015
    .local v18, "toXMLSAXHandler":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setShouldOutputNSAttr(Z)V

    .line 1016
    move-object/from16 v20, v18

    .line 1019
    .restart local v20    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    const-string v21, "doctype-public"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1020
    .local v12, "publicID":Ljava/lang/String;
    const-string v21, "doctype-system"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1021
    .local v17, "systemID":Ljava/lang/String;
    if-eqz v17, :cond_f1

    .line 1022
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    .line 1023
    :cond_f1
    if-eqz v12, :cond_f8

    .line 1024
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 1026
    :cond_f8
    instance-of v0, v5, Lorg/apache/xalan/transformer/TransformerClient;

    move/from16 v21, v0

    if-eqz v21, :cond_56

    .line 1027
    new-instance v16, Lorg/apache/xalan/transformer/XalanTransformState;

    invoke-direct/range {v16 .. v16}, Lorg/apache/xalan/transformer/XalanTransformState;-><init>()V

    .line 1028
    .local v16, "state":Lorg/apache/xalan/transformer/XalanTransformState;
    check-cast v5, Lorg/apache/xalan/transformer/TransformerClient;

    .end local v5    # "handler":Lorg/xml/sax/ContentHandler;
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/apache/xalan/transformer/TransformerClient;->setTransformState(Lorg/apache/xalan/transformer/TransformState;)V

    move-object/from16 v21, v20

    .line 1029
    check-cast v21, Lorg/apache/xml/serializer/ToSAXHandler;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToSAXHandler;->setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V

    goto/16 :goto_56

    .line 1009
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v8    # "lexHandler":Lorg/xml/sax/ext/LexicalHandler;
    .end local v9    # "method":Ljava/lang/String;
    .end local v12    # "publicID":Ljava/lang/String;
    .end local v16    # "state":Lorg/apache/xalan/transformer/XalanTransformState;
    .end local v17    # "systemID":Ljava/lang/String;
    .end local v18    # "toXMLSAXHandler":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    .end local v20    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v5    # "handler":Lorg/xml/sax/ContentHandler;
    :cond_117
    const/4 v8, 0x0

    .restart local v8    # "lexHandler":Lorg/xml/sax/ext/LexicalHandler;
    goto :goto_ae

    .line 1037
    .end local v5    # "handler":Lorg/xml/sax/ContentHandler;
    .end local v8    # "lexHandler":Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_119
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamResult;

    move/from16 v21, v0

    if-eqz v21, :cond_1e5

    move-object/from16 v15, p1

    .line 1039
    check-cast v15, Ljavax/xml/transform/stream/StreamResult;

    .line 1043
    .local v15, "sresult":Ljavax/xml/transform/stream/StreamResult;
    :try_start_125
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/serializer/SerializationHandler;

    .line 1046
    .local v13, "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v21

    if-eqz v21, :cond_142

    .line 1047
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    .line 1082
    :goto_13e
    move-object/from16 v20, v13

    .restart local v20    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    goto/16 :goto_56

    .line 1048
    .end local v20    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_142
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    if-eqz v21, :cond_15b

    .line 1049
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_151} :catch_152

    goto :goto_13e

    .line 1088
    .end local v13    # "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_152
    move-exception v6

    .line 1090
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v21, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 1050
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v13    # "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_15b
    :try_start_15b
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1d7

    .line 1052
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1054
    .local v4, "fileURL":Ljava/lang/String;
    const-string v21, "file:///"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1ab

    .line 1056
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_1a2

    .line 1057
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1069
    :cond_187
    :goto_187
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1073
    move-object/from16 v20, v13

    .line 1074
    .restart local v20    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    goto :goto_13e

    .line 1059
    .end local v20    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_1a2
    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_187

    .line 1061
    :cond_1ab
    const-string v21, "file:/"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_187

    .line 1063
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_1ce

    .line 1064
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_187

    .line 1066
    :cond_1ce
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_187

    .line 1076
    .end local v4    # "fileURL":Ljava/lang/String;
    :cond_1d7
    new-instance v21, Ljavax/xml/transform/TransformerException;

    const-string v22, "ER_NO_OUTPUT_SPECIFIED"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_1e5} :catch_152

    .line 1095
    .end local v13    # "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v15    # "sresult":Ljavax/xml/transform/stream/StreamResult;
    :cond_1e5
    new-instance v21, Ljavax/xml/transform/TransformerException;

    const-string v22, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public currentFuncResultSeen()Z
    .registers 2

    .prologue
    .line 2793
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->empty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public currentTemplateRuleIsNull()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2739
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/BoolStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/QName;Lorg/xml/sax/ContentHandler;)V
    .registers 7
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "context"    # Lorg/w3c/dom/Node;
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2139
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2143
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    if-eqz p3, :cond_7

    .line 2144
    :try_start_4
    invoke-virtual {p0, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    .line 2145
    :cond_7
    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 2146
    invoke-virtual {p0, p1, p4}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1a

    .line 2150
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2154
    if-eqz p3, :cond_19

    .line 2155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 2157
    :cond_19
    return-void

    .line 2150
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2154
    if-eqz p3, :cond_23

    .line 2155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    :cond_23
    throw v1
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    .registers 11
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2258
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    .line 2263
    .local v5, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    move-object v3, v5

    .line 2267
    .local v3, "savedHandler":Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_5
    invoke-interface {v5}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 2270
    const/4 v2, 0x0

    .line 2271
    .local v2, "lex":Lorg/xml/sax/ext/LexicalHandler;
    instance-of v6, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_11

    .line 2272
    move-object v0, p2

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v2, v0

    .line 2274
    :cond_11
    new-instance v6, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v2, v7}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 2275
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 2276
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_25
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_25} :catch_28
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_25} :catch_2e
    .catchall {:try_start_5 .. :try_end_25} :catchall_2a

    .line 2287
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 2289
    return-void

    .line 2278
    .end local v2    # "lex":Lorg/xml/sax/ext/LexicalHandler;
    :catch_28
    move-exception v1

    .line 2280
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2287
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :catchall_2a
    move-exception v6

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v6

    .line 2282
    :catch_2e
    move-exception v4

    .line 2283
    .local v4, "se":Lorg/xml/sax/SAXException;
    :try_start_2f
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2a
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    .registers 13
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "shouldAddAttrs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2175
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    .line 2177
    .local v4, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v4, :cond_7

    .line 2241
    :goto_6
    return-void

    .line 2180
    :cond_7
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v7

    if-eqz v7, :cond_32

    iget-boolean v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v7, :cond_32

    move-object v7, v4

    .line 2182
    check-cast v7, Lorg/apache/xalan/templates/ElemTextLiteral;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    move-result-object v0

    .line 2186
    .local v0, "chars":[C
    :try_start_18
    invoke-virtual {p0, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 2187
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    const/4 v8, 0x0

    array-length v9, v0

    invoke-interface {v7, v0, v8, v9}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_22
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_22} :catch_26
    .catchall {:try_start_18 .. :try_end_22} :catchall_2d

    .line 2195
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    goto :goto_6

    .line 2189
    :catch_26
    move-exception v3

    .line 2191
    .local v3, "se":Lorg/xml/sax/SAXException;
    :try_start_27
    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .line 2195
    .end local v3    # "se":Lorg/xml/sax/SAXException;
    :catchall_2d
    move-exception v7

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v7

    .line 2206
    .end local v0    # "chars":[C
    :cond_32
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2207
    .local v6, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    .line 2208
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v1

    .line 2209
    .local v1, "currentTemplateElementsTop":I
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    :goto_43
    if-eqz v4, :cond_74

    .line 2217
    if-nez p2, :cond_54

    :try_start_47
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_54

    .line 2215
    :goto_4f
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    goto :goto_43

    .line 2221
    :cond_54
    invoke-virtual {v6, v4}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2222
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v7, v4, v1}, Lorg/apache/xml/utils/ObjectStack;->setElementAt(Ljava/lang/Object;I)V

    .line 2223
    invoke-virtual {v4, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_5f} :catch_60
    .catchall {:try_start_47 .. :try_end_5f} :catchall_6a

    goto :goto_4f

    .line 2226
    :catch_60
    move-exception v2

    .line 2228
    .local v2, "re":Ljava/lang/RuntimeException;
    :try_start_61
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 2229
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v5, v4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2230
    throw v5
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6a

    .line 2234
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .end local v5    # "te":Ljavax/xml/transform/TransformerException;
    :catchall_6a
    move-exception v7

    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v8}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2235
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    throw v7

    .line 2234
    :cond_74
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2235
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    goto :goto_6
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "argVec"    # Ljava/util/Vector;
    .param p4, "methodKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .registers 5
    .param p1, "extFunction"    # Lorg/apache/xpath/functions/FuncExtFunction;
    .param p2, "argVec"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fireGenerateEvent(I)V
    .registers 2
    .param p1, "eventType"    # I

    .prologue
    .line 3240
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "eventType"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3233
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 3226
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 3220
    return-void
.end method

.method public fireGenerateEvent(I[CII)V
    .registers 5
    .param p1, "eventType"    # I
    .param p2, "ch"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    .prologue
    .line 3210
    return-void
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 1733
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2550
    :try_start_1
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 2552
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-nez v0, :cond_a

    .line 2558
    .end local v0    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :goto_9
    return-object v2

    .line 2552
    .restart local v0    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :cond_a
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v2

    goto :goto_9

    .line 2554
    .end local v0    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :catch_f
    move-exception v1

    .line 2558
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_9
.end method

.method public getCountersTable()Lorg/apache/xalan/transformer/CountersTable;
    .registers 2

    .prologue
    .line 2725
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    if-nez v0, :cond_b

    .line 2726
    new-instance v0, Lorg/apache/xalan/transformer/CountersTable;

    invoke-direct {v0}, Lorg/apache/xalan/transformer/CountersTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 2728
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    return-object v0
.end method

.method public getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 2

    .prologue
    .line 2451
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getCurrentNode()I
    .registers 2

    .prologue
    .line 2463
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    return v0
.end method

.method public getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 4

    .prologue
    .line 2480
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 2483
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_13

    .line 2485
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_4

    .line 2488
    :cond_13
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    .end local v0    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    return-object v0
.end method

.method public getCurrentTemplateElements()Lorg/apache/xml/utils/ObjectStack;
    .registers 2

    .prologue
    .line 2408
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    return-object v0
.end method

.method public getCurrentTemplateElementsCount()I
    .registers 2

    .prologue
    .line 2396
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v0

    return v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 2

    .prologue
    .line 2837
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getExceptionThrown()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 3004
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2876
    const-string v0, "http://xml.org/trax/features/sax/input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2879
    :cond_9
    return v1

    .line 2878
    :cond_a
    const-string v0, "http://xml.org/trax/features/dom/input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2881
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncremental()Z
    .registers 2

    .prologue
    .line 3253
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    return v0
.end method

.method public getInputContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 1311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;
    .registers 4
    .param p1, "doDocFrag"    # Z

    .prologue
    .line 1327
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_d

    .line 1332
    new-instance v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 1336
    :cond_d
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getKeyManager()Lorg/apache/xalan/transformer/KeyManager;
    .registers 2

    .prologue
    .line 2667
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    return-object v0
.end method

.method public getMatchedNode()I
    .registers 2

    .prologue
    .line 2537
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepTail()I

    move-result v0

    return v0
.end method

.method public getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 2525
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 2894
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/QName;

    goto :goto_9
.end method

.method public getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;
    .registers 2

    .prologue
    .line 2805
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    if-nez v0, :cond_b

    .line 2806
    new-instance v0, Lorg/apache/xalan/transformer/MsgMgr;

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/MsgMgr;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    .line 2808
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    return-object v0
.end method

.method public getOptimize()Z
    .registers 2

    .prologue
    .line 3260
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    return v0
.end method

.method public getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;
    .registers 3

    .prologue
    .line 1363
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    .line 1367
    .local v0, "format":Lorg/apache/xalan/templates/OutputProperties;
    :goto_c
    return-object v0

    .line 1363
    .end local v0    # "format":Lorg/apache/xalan/templates/OutputProperties;
    :cond_d
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_c
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 914
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "qnameString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 722
    const/4 v1, 0x0

    .line 723
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    .line 725
    .local v0, "props":Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    if-nez v1, :cond_23

    .line 729
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 730
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_23
    return-object v1
.end method

.method public getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "qnameString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    .line 756
    .local v0, "props":Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 758
    .restart local v1    # "value":Ljava/lang/String;
    if-nez v1, :cond_29

    .line 760
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 761
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 765
    :cond_29
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1499
    :try_start_1
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v4

    .line 1501
    .local v4, "qname":Lorg/apache/xml/utils/QName;
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v6, :cond_a

    .line 1522
    .end local v4    # "qname":Lorg/apache/xml/utils/QName;
    :cond_9
    :goto_9
    return-object v5

    .line 1504
    .restart local v4    # "qname":Lorg/apache/xml/utils/QName;
    :cond_a
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1506
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_9

    .line 1508
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    .line 1510
    .local v0, "arg":Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1512
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_2d} :catch_32

    move-result-object v5

    goto :goto_9

    .line 1506
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 1518
    .end local v0    # "arg":Lorg/apache/xpath/Arg;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "qname":Lorg/apache/xml/utils/QName;
    :catch_32
    move-exception v3

    .line 1522
    .local v3, "nsee":Ljava/util/NoSuchElementException;
    goto :goto_9
.end method

.method public getQuietConflictWarnings()Z
    .registers 2

    .prologue
    .line 2612
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    return v0
.end method

.method public getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .registers 2

    .prologue
    .line 2645
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object v0
.end method

.method public getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .registers 2

    .prologue
    .line 2656
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object v0
.end method

.method public getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S
    .registers 8
    .param p1, "elementHandle"    # I
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    const/4 v2, 0x3

    .line 3162
    :try_start_1
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3, v4, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v0

    .line 3165
    .local v0, "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    if-nez v0, :cond_c

    .line 3179
    .end local v0    # "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :goto_b
    return v2

    .line 3173
    .restart local v0    # "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :cond_c
    invoke-virtual {v0}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z
    :try_end_f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_f} :catch_16

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    goto :goto_b

    :cond_14
    const/4 v2, 0x1

    goto :goto_b

    .line 3177
    .end local v0    # "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :catch_16
    move-exception v1

    .line 3179
    .local v1, "se":Ljavax/xml/transform/TransformerException;
    goto :goto_b
.end method

.method public getSource_location()Z
    .registers 2

    .prologue
    .line 3267
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    return v0
.end method

.method public final getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 2

    .prologue
    .line 2599
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method public getTransformThread()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .prologue
    .line 2569
    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 1688
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/SourceTreeManager;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v0

    return-object v0
.end method

.method public final getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 2

    .prologue
    .line 2634
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public hasTraceListeners()Z
    .registers 2

    .prologue
    .line 3246
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransformThreadErrorCatcher()Z
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    return v0
.end method

.method public init(Lorg/apache/xml/serializer/ToXMLSAXHandler;Ljavax/xml/transform/Transformer;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .param p1, "h"    # Lorg/apache/xml/serializer/ToXMLSAXHandler;
    .param p2, "transformer"    # Ljavax/xml/transform/Transformer;
    .param p3, "realHandler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 3190
    invoke-virtual {p1, p2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 3191
    invoke-virtual {p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 3192
    return-void
.end method

.method public isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z
    .registers 4
    .param p1, "attrSet"    # Lorg/apache/xalan/templates/ElemAttributeSet;

    .prologue
    .line 2680
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    if-nez v1, :cond_b

    .line 2682
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 2685
    :cond_b
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2687
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v0

    .line 2689
    .local v0, "loc":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1e

    .line 2691
    const/4 v1, 0x1

    .line 2695
    .end local v0    # "loc":I
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public popCurrentFuncResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2782
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public popCurrentMatched()V
    .registers 2

    .prologue
    .line 2510
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2511
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->pop()I

    .line 2512
    return-void
.end method

.method public popCurrentTemplateRuleIsNull()V
    .registers 2

    .prologue
    .line 2761
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    .line 2762
    return-void
.end method

.method public popElemAttributeSet()V
    .registers 2

    .prologue
    .line 2714
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2715
    return-void
.end method

.method public popElemTemplateElement()V
    .registers 2

    .prologue
    .line 2427
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2428
    return-void
.end method

.method public popMode()V
    .registers 2

    .prologue
    .line 2918
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2919
    return-void
.end method

.method postExceptionFromThread(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 3060
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 3063
    monitor-enter p0

    .line 3070
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3079
    monitor-exit p0

    .line 3080
    return-void

    .line 3079
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;
    .registers 23
    .param p1, "foreach"    # Lorg/apache/xalan/templates/ElemForEach;
    .param p2, "sourceNodeContext"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2308
    const/4 v15, 0x0

    .line 2309
    .local v15, "keys":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v19, v0

    .line 2310
    .local v19, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v16

    .line 2312
    .local v16, "nElems":I
    if-lez v16, :cond_12

    .line 2313
    new-instance v15, Ljava/util/Vector;

    .end local v15    # "keys":Ljava/util/Vector;
    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 2316
    .restart local v15    # "keys":Ljava/util/Vector;
    :cond_12
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_13
    move/from16 v0, v16

    if-ge v14, v0, :cond_11b

    .line 2318
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v18

    .line 2320
    .local v18, "sort":Lorg/apache/xalan/templates/ElemSort;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    if-eqz v3, :cond_eb

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v8

    .line 2323
    .local v8, "langString":Ljava/lang/String;
    :goto_31
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getDataType()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v13

    .line 2326
    .local v13, "dataTypeString":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_ee

    .line 2327
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "TODO: Need to write the hooks for QNAME sort data type"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2336
    :cond_4e
    :goto_4e
    if-eqz v13, :cond_112

    const-string v3, "number"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    const/4 v6, 0x1

    .line 2339
    .local v6, "treatAsNumbers":Z
    :goto_59
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v17

    .line 2342
    .local v17, "orderString":Ljava/lang/String;
    const-string v3, "ascending"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8d

    const-string v3, "descending"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 2345
    const-string v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "order"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v17, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2349
    :cond_8d
    if-eqz v17, :cond_115

    const-string v3, "descending"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    const/4 v7, 0x1

    .line 2352
    .local v7, "descending":Z
    :goto_9a
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getCaseOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v11

    .line 2355
    .local v11, "caseOrder":Lorg/apache/xalan/templates/AVT;
    if-eqz v11, :cond_119

    .line 2357
    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v11, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v12

    .line 2360
    .local v12, "caseOrderString":Ljava/lang/String;
    const-string v3, "upper-first"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cc

    const-string v3, "lower-first"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 2363
    const-string v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "case-order"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2367
    :cond_cc
    if-eqz v12, :cond_117

    const-string v3, "upper-first"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    const/4 v9, 0x1

    .line 2376
    .end local v12    # "caseOrderString":Ljava/lang/String;
    .local v9, "caseOrderUpper":Z
    :goto_d7
    new-instance v3, Lorg/apache/xalan/transformer/NodeSortKey;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v10}, Lorg/apache/xalan/transformer/NodeSortKey;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v15, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2316
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 2320
    .end local v6    # "treatAsNumbers":Z
    .end local v7    # "descending":Z
    .end local v8    # "langString":Ljava/lang/String;
    .end local v9    # "caseOrderUpper":Z
    .end local v11    # "caseOrder":Lorg/apache/xalan/templates/AVT;
    .end local v13    # "dataTypeString":Ljava/lang/String;
    .end local v17    # "orderString":Ljava/lang/String;
    :cond_eb
    const/4 v8, 0x0

    goto/16 :goto_31

    .line 2329
    .restart local v8    # "langString":Ljava/lang/String;
    .restart local v13    # "dataTypeString":Ljava/lang/String;
    :cond_ee
    const-string v3, "text"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "number"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 2332
    const-string v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "data-type"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4e

    .line 2336
    :cond_112
    const/4 v6, 0x0

    goto/16 :goto_59

    .line 2349
    .restart local v6    # "treatAsNumbers":Z
    .restart local v17    # "orderString":Ljava/lang/String;
    :cond_115
    const/4 v7, 0x0

    goto :goto_9a

    .line 2367
    .restart local v7    # "descending":Z
    .restart local v11    # "caseOrder":Lorg/apache/xalan/templates/AVT;
    .restart local v12    # "caseOrderString":Ljava/lang/String;
    :cond_117
    const/4 v9, 0x0

    goto :goto_d7

    .line 2373
    .end local v12    # "caseOrderString":Ljava/lang/String;
    :cond_119
    const/4 v9, 0x0

    .restart local v9    # "caseOrderUpper":Z
    goto :goto_d7

    .line 2381
    .end local v6    # "treatAsNumbers":Z
    .end local v7    # "descending":Z
    .end local v8    # "langString":Ljava/lang/String;
    .end local v9    # "caseOrderUpper":Z
    .end local v11    # "caseOrder":Lorg/apache/xalan/templates/AVT;
    .end local v13    # "dataTypeString":Ljava/lang/String;
    .end local v17    # "orderString":Ljava/lang/String;
    .end local v18    # "sort":Lorg/apache/xalan/templates/ElemSort;
    :cond_11b
    return-object v15
.end method

.method public pushCurrentFuncResult(Ljava/lang/Object;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 2773
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    return-void
.end method

.method public pushCurrentTemplateRuleIsNull(Z)V
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 2752
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    .line 2753
    return-void
.end method

.method public pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .registers 3
    .param p1, "attrSet"    # Lorg/apache/xalan/templates/ElemAttributeSet;

    .prologue
    .line 2706
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2707
    return-void
.end method

.method public pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 2419
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    return-void
.end method

.method protected pushGlobalVars(I)V
    .registers 14
    .param p1, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1642
    iget-object v11, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 1643
    .local v11, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v11}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v10

    .line 1644
    .local v10, "vs":Lorg/apache/xpath/VariableStack;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v8

    .line 1645
    .local v8, "sr":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v9

    .line 1647
    .local v9, "vars":Ljava/util/Vector;
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v7

    .line 1648
    .local v7, "i":I
    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 1650
    :cond_15
    :goto_15
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_36

    .line 1652
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemVariable;

    .line 1655
    .local v1, "v":Lorg/apache/xalan/templates/ElemVariable;
    new-instance v0, Lorg/apache/xalan/templates/XUnresolvedVariable;

    invoke-virtual {v10}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/XUnresolvedVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V

    .line 1658
    .local v0, "xobj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->elementAt(I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1659
    invoke-virtual {v10, v7, v0}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_15

    .line 1662
    .end local v0    # "xobj":Lorg/apache/xpath/objects/XObject;
    .end local v1    # "v":Lorg/apache/xalan/templates/ElemVariable;
    :cond_36
    return-void
.end method

.method public pushMode(Lorg/apache/xml/utils/QName;)V
    .registers 3
    .param p1, "mode"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 2907
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    return-void
.end method

.method public pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V
    .registers 4
    .param p1, "template"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "child"    # I

    .prologue
    .line 2501
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    .line 2503
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    if-eqz v0, :cond_5d

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 434
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_15

    .line 438
    :try_start_10
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_5e

    .line 443
    :cond_15
    :goto_15
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 447
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 449
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->reset()V

    .line 451
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->reset()V

    .line 452
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->resetUserParameters()V

    .line 455
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    .line 456
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 457
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    .line 459
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 460
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 461
    new-instance v0, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v0}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    .line 462
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 463
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 464
    new-instance v0, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    .line 466
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    .line 468
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    .line 472
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/SourceTreeManager;->reset()V

    .line 476
    :cond_5d
    return-void

    .line 440
    :catch_5e
    move-exception v0

    goto :goto_15
.end method

.method public run()V
    .registers 4

    .prologue
    .line 3088
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 3106
    :try_start_3
    iget v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    invoke-virtual {p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_16
    .catchall {:try_start_3 .. :try_end_8} :catchall_3f

    .line 3123
    :try_start_8
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_15

    .line 3125
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_2c

    .line 3143
    :cond_15
    :goto_15
    return-void

    .line 3109
    :catch_16
    move-exception v0

    .line 3114
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_35

    .line 3115
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_3f

    .line 3123
    :try_start_1e
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_15

    .line 3125
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c

    goto :goto_15

    .line 3134
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2c
    move-exception v0

    .line 3138
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4f

    .line 3139
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V

    goto :goto_15

    .line 3117
    :cond_35
    :try_start_35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3f

    .line 3123
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3f
    move-exception v1

    move-object v2, v1

    :try_start_41
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_4e

    .line 3125
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V

    :cond_4e
    throw v2
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4f} :catch_2c

    .line 3141
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public runTransformThread()V
    .registers 2

    .prologue
    .line 2942
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    .line 2943
    return-void
.end method

.method public runTransformThread(I)V
    .registers 3
    .param p1, "priority"    # I

    .prologue
    .line 2931
    invoke-static {p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object v0

    .line 2932
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V

    .line 2933
    return-void
.end method

.method public setBaseURLOfSource(Ljava/lang/String;)V
    .registers 2
    .param p1, "base"    # Ljava/lang/String;

    .prologue
    .line 700
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    .line 701
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 6
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 1704
    if-nez p1, :cond_f

    .line 1706
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ER_NULL_CONTENT_HANDLER"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1710
    :cond_f
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 1712
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v1, :cond_23

    .line 1714
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    .line 1715
    .local v0, "h":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1716
    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1718
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1723
    .end local v0    # "h":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    :goto_22
    return-void

    .line 1721
    :cond_23
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_22
.end method

.method public setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .param p1, "e"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 2439
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    .line 2440
    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 6
    .param p1, "listener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2821
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    .line 2823
    if-nez p1, :cond_15

    .line 2824
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NULL_ERROR_HANDLER"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2827
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0

    .line 2826
    :cond_15
    :try_start_15
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 2827
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    .line 2828
    return-void
.end method

.method public setExceptionThrown(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 3016
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 3017
    return-void
.end method

.method setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 385
    new-instance v1, Lorg/apache/xalan/extensions/ExtensionsTable;

    invoke-direct {v1, p1}, Lorg/apache/xalan/extensions/ExtensionsTable;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 389
    :cond_d
    :goto_d
    return-void

    .line 387
    :catch_e
    move-exception v0

    .line 388
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setOutputFormat(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 2
    .param p1, "oformat"    # Lorg/apache/xalan/templates/OutputProperties;

    .prologue
    .line 1349
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 1350
    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .registers 6
    .param p1, "oformat"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v2

    .line 874
    if-eqz p1, :cond_37

    .line 878
    :try_start_5
    const-string v1, "method"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 880
    .local v0, "method":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 881
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 885
    :cond_16
    :goto_16
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 889
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 896
    .end local v0    # "method":Ljava/lang/String;
    :goto_26
    monitor-exit v2

    .line 897
    return-void

    .line 882
    .restart local v0    # "method":Ljava/lang/String;
    :cond_28
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v1, :cond_16

    .line 883
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_16

    .line 896
    .end local v0    # "method":Ljava/lang/String;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v1

    .line 894
    :cond_37
    const/4 v1, 0x0

    :try_start_38
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_34

    goto :goto_26
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    .line 836
    :try_start_3
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v0, :cond_17

    .line 838
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 842
    :cond_17
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    .line 846
    :cond_32
    :try_start_32
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_2f

    .line 848
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1417
    if-nez p2, :cond_15

    .line 1418
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ER_INVALID_SET_PARAM_VALUE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1421
    :cond_15
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "{}"

    invoke-direct {v2, p1, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1428
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1431
    .local v1, "s2":Ljava/lang/String;
    :cond_2a
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v3, :cond_35

    .line 1432
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    .line 1434
    :cond_35
    if-nez v1, :cond_4c

    .line 1436
    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    .line 1437
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1450
    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s2":Ljava/lang/String;
    :goto_4b
    return-void

    .line 1441
    .restart local v0    # "s1":Ljava/lang/String;
    .restart local v1    # "s2":Ljava/lang/String;
    :cond_4c
    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    .line 1442
    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_5f} :catch_60

    goto :goto_4b

    .line 1445
    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s2":Ljava/lang/String;
    :catch_60
    move-exception v3

    goto :goto_4b
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1383
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    .line 1384
    .local v5, "varstack":Lorg/apache/xpath/VariableStack;
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p2, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    .local v1, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    invoke-static {p3, v7}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    .line 1387
    .local v6, "xobject":Lorg/apache/xpath/objects/XObject;
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 1388
    .local v2, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v4

    .line 1389
    .local v4, "vars":Ljava/util/Vector;
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1390
    .local v0, "i":I
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3f

    .line 1392
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    .line 1393
    .local v3, "variable":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_1f

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1396
    invoke-virtual {v5, v0, v6}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_1f

    .line 1399
    .end local v3    # "variable":Lorg/apache/xalan/templates/ElemVariable;
    :cond_3f
    return-void
.end method

.method public setParameters(Ljava/util/Properties;)V
    .registers 10
    .param p1, "params"    # Ljava/util/Properties;

    .prologue
    const/4 v6, 0x0

    .line 1573
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->clearParameters()V

    .line 1575
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 1577
    .local v1, "names":Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1579
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, "name":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "{}"

    const/4 v7, 0x0

    invoke-direct {v4, v0, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1587
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_20
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1588
    .local v2, "s1":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1590
    .local v3, "s2":Ljava/lang/String;
    :goto_2e
    if-nez v3, :cond_3d

    .line 1591
    const/4 v5, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 1595
    .end local v2    # "s1":Ljava/lang/String;
    .end local v3    # "s2":Ljava/lang/String;
    :catch_39
    move-exception v5

    goto :goto_8

    .restart local v2    # "s1":Ljava/lang/String;
    :cond_3b
    move-object v3, v6

    .line 1588
    goto :goto_2e

    .line 1593
    .restart local v3    # "s2":Ljava/lang/String;
    :cond_3d
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v2, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_44
    .catch Ljava/util/NoSuchElementException; {:try_start_20 .. :try_end_44} :catch_39

    goto :goto_8

    .line 1601
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "s1":Ljava/lang/String;
    .end local v3    # "s2":Ljava/lang/String;
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_45
    return-void
.end method

.method public setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 2
    .param p1, "xoh"    # Lorg/apache/xml/serializer/SerializationHandler;

    .prologue
    .line 3196
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 3197
    return-void
.end method

.method public setSourceTreeDocForThread(I)V
    .registers 2
    .param p1, "doc"    # I

    .prologue
    .line 3027
    iput p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    .line 3028
    return-void
.end method

.method public setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .param p1, "stylesheetRoot"    # Lorg/apache/xalan/templates/StylesheetRoot;

    .prologue
    .line 2588
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 2589
    return-void
.end method

.method public setTransformThread(Ljava/lang/Thread;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 499
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    .line 500
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 4
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    .prologue
    .line 1673
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1675
    :try_start_3
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/SourceTreeManager;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 1676
    monitor-exit v1

    .line 1677
    return-void

    .line 1676
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setXPathContext(Lorg/apache/xpath/XPathContext;)V
    .registers 2
    .param p1, "xcontext"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 2624
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2625
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;)V
    .registers 3
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    .line 525
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .registers 4
    .param p1, "xmlSource"    # Ljavax/xml/transform/Source;
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V

    .line 1124
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V
    .registers 7
    .param p1, "xmlSource"    # Ljavax/xml/transform/Source;
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .param p3, "shouldRelease"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1140
    :try_start_3
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 1141
    .local v0, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 1143
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 1145
    invoke-virtual {p0, p1, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    .line 1146
    monitor-exit v2

    .line 1147
    return-void

    .line 1146
    .end local v0    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public transform(Ljavax/xml/transform/Source;Z)V
    .registers 24
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "shouldRelease"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 544
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v3

    if-nez v3, :cond_15

    .line 545
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 547
    :cond_15
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v8

    .line 550
    .local v8, "base":Ljava/lang/String;
    if-nez v8, :cond_23

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 556
    :cond_23
    if-nez v8, :cond_67

    .line 558
    const-string v11, ""
    :try_end_27
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_0 .. :try_end_27} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_27} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_27} :catch_155
    .catchall {:try_start_0 .. :try_end_27} :catchall_189

    .line 560
    .local v11, "currentDir":Ljava/lang/String;
    :try_start_27
    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2c} :catch_1c7
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_27 .. :try_end_2c} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_27 .. :try_end_2c} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_27 .. :try_end_2c} :catch_155
    .catchall {:try_start_27 .. :try_end_2c} :catchall_189

    move-result-object v11

    .line 564
    :goto_2d
    :try_start_2d
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 569
    :goto_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 572
    .end local v11    # "currentDir":Ljava/lang/String;
    :cond_67
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->setBaseURLOfSource(Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    .line 582
    .local v2, "mgr":Lorg/apache/xml/dtm/DTMManager;
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v3, :cond_96

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_96

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_96

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_c3

    :cond_96
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v3, :cond_b2

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v3

    if-nez v3, :cond_b2

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    if-eqz v3, :cond_c3

    :cond_b2
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v3, :cond_e5

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;
    :try_end_c0
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_2d .. :try_end_c0} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2d .. :try_end_c0} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_2d .. :try_end_c0} :catch_155
    .catchall {:try_start_2d .. :try_end_c0} :catchall_189

    move-result-object v3

    if-nez v3, :cond_e5

    .line 590
    :cond_c3
    :try_start_c3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 592
    .local v10, "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 593
    .local v9, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v18

    .line 594
    .local v18, "systemID":Ljava/lang/String;
    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_da
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c3 .. :try_end_da} :catch_136
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_c3 .. :try_end_da} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_c3 .. :try_end_da} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_c3 .. :try_end_da} :catch_155
    .catchall {:try_start_c3 .. :try_end_da} :catchall_189

    .line 597
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .local v16, "source":Ljavax/xml/transform/Source;
    if-eqz v18, :cond_e3

    .line 598
    :try_start_dc
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_e3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_dc .. :try_end_e3} :catch_1c2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_dc .. :try_end_e3} :catch_1bd
    .catch Lorg/xml/sax/SAXParseException; {:try_start_dc .. :try_end_e3} :catch_1b9
    .catch Lorg/xml/sax/SAXException; {:try_start_dc .. :try_end_e3} :catch_1b5
    .catchall {:try_start_dc .. :try_end_e3} :catchall_1b1

    :cond_e3
    move-object/from16 p1, v16

    .line 604
    .end local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "source":Ljavax/xml/transform/Source;
    .end local v18    # "systemID":Ljava/lang/String;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_e5
    :goto_e5
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p0

    :try_start_ec
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    .line 605
    .local v12, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v12, v8}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V
    :try_end_f3
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_ec .. :try_end_f3} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_ec .. :try_end_f3} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_ec .. :try_end_f3} :catch_155
    .catchall {:try_start_ec .. :try_end_f3} :catchall_189

    .line 607
    const/4 v14, 0x1

    .line 614
    .local v14, "hardDelete":Z
    :try_start_f4
    invoke-interface {v12}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_fd
    .catchall {:try_start_f4 .. :try_end_fd} :catchall_14e

    .line 618
    if-eqz p2, :cond_102

    .line 619
    :try_start_ff
    invoke-virtual {v2, v12, v14}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    .line 627
    :cond_102
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v13

    .line 629
    .local v13, "e":Ljava/lang/Exception;
    if-eqz v13, :cond_193

    .line 631
    instance-of v3, v13, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_16b

    .line 633
    check-cast v13, Ljavax/xml/transform/TransformerException;

    .end local v13    # "e":Ljava/lang/Exception;
    throw v13
    :try_end_10f
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_ff .. :try_end_10f} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_ff .. :try_end_10f} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_ff .. :try_end_10f} :catch_155
    .catchall {:try_start_ff .. :try_end_10f} :catchall_189

    .line 650
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v14    # "hardDelete":Z
    :catch_10f
    move-exception v20

    .line 652
    .local v20, "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :goto_110
    :try_start_110
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v19

    .line 655
    .local v19, "throwable":Ljava/lang/Throwable;
    :goto_114
    move-object/from16 v0, v19

    instance-of v3, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v3, :cond_1a1

    .line 657
    check-cast v19, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v19    # "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_11f
    .catchall {:try_start_110 .. :try_end_11f} :catchall_189

    move-result-object v19

    .restart local v19    # "throwable":Ljava/lang/Throwable;
    goto :goto_114

    .line 567
    .end local v19    # "throwable":Ljava/lang/Throwable;
    .end local v20    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v11    # "currentDir":Ljava/lang/String;
    :cond_121
    :try_start_121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_48

    .line 600
    .end local v11    # "currentDir":Ljava/lang/String;
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    :catch_136
    move-exception v13

    .line 601
    .local v13, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_137
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_13c
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_121 .. :try_end_13c} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_121 .. :try_end_13c} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_121 .. :try_end_13c} :catch_155
    .catchall {:try_start_121 .. :try_end_13c} :catchall_189

    goto :goto_e5

    .line 665
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v13    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_13d
    move-exception v17

    .line 667
    .local v17, "spe":Lorg/xml/sax/SAXParseException;
    :goto_13e
    :try_start_13e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_189

    .line 675
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    .line 680
    .end local v17    # "spe":Lorg/xml/sax/SAXParseException;
    :goto_14d
    return-void

    .line 618
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v14    # "hardDelete":Z
    :catchall_14e
    move-exception v3

    if-eqz p2, :cond_154

    .line 619
    :try_start_151
    invoke-virtual {v2, v12, v14}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    :cond_154
    throw v3
    :try_end_155
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_151 .. :try_end_155} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_151 .. :try_end_155} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_151 .. :try_end_155} :catch_155
    .catchall {:try_start_151 .. :try_end_155} :catchall_189

    .line 669
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v14    # "hardDelete":Z
    :catch_155
    move-exception v15

    .line 671
    .local v15, "se":Lorg/xml/sax/SAXException;
    :goto_156
    :try_start_156
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_162
    .catchall {:try_start_156 .. :try_end_162} :catchall_189

    .line 675
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_14d

    .line 635
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .local v13, "e":Ljava/lang/Exception;
    .restart local v14    # "hardDelete":Z
    :cond_16b
    :try_start_16b
    instance-of v3, v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v3, :cond_183

    .line 637
    check-cast v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_17a
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_16b .. :try_end_17a} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_16b .. :try_end_17a} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_16b .. :try_end_17a} :catch_155
    .catchall {:try_start_16b .. :try_end_17a} :catchall_189

    .line 675
    :cond_17a
    :goto_17a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_14d

    .line 642
    .restart local v13    # "e":Ljava/lang/Exception;
    :cond_183
    :try_start_183
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v13}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_189
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_183 .. :try_end_189} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_183 .. :try_end_189} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_183 .. :try_end_189} :catch_155
    .catchall {:try_start_183 .. :try_end_189} :catchall_189

    .line 675
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "hardDelete":Z
    :catchall_189
    move-exception v3

    :goto_18a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    throw v3

    .line 645
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "hardDelete":Z
    :cond_193
    :try_start_193
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v3, :cond_17a

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_1a0
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_193 .. :try_end_1a0} :catch_10f
    .catch Lorg/xml/sax/SAXParseException; {:try_start_193 .. :try_end_1a0} :catch_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_193 .. :try_end_1a0} :catch_155
    .catchall {:try_start_193 .. :try_end_1a0} :catchall_189

    goto :goto_17a

    .line 661
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "hardDelete":Z
    .restart local v19    # "throwable":Ljava/lang/Throwable;
    .restart local v20    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_1a1
    :try_start_1a1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_1a8
    .catchall {:try_start_1a1 .. :try_end_1a8} :catchall_189

    .line 675
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_14d

    .line 675
    .end local v19    # "throwable":Ljava/lang/Throwable;
    .end local v20    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "systemID":Ljava/lang/String;
    :catchall_1b1
    move-exception v3

    move-object/from16 p1, v16

    .end local v16    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto :goto_18a

    .line 669
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v16    # "source":Ljavax/xml/transform/Source;
    :catch_1b5
    move-exception v15

    move-object/from16 p1, v16

    .end local v16    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto :goto_156

    .line 665
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v16    # "source":Ljavax/xml/transform/Source;
    :catch_1b9
    move-exception v17

    move-object/from16 p1, v16

    .end local v16    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto :goto_13e

    .line 650
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v16    # "source":Ljavax/xml/transform/Source;
    :catch_1bd
    move-exception v20

    move-object/from16 p1, v16

    .end local v16    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_110

    .line 600
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v16    # "source":Ljavax/xml/transform/Source;
    :catch_1c2
    move-exception v13

    move-object/from16 p1, v16

    .end local v16    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_137

    .line 562
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "systemID":Ljava/lang/String;
    .restart local v11    # "currentDir":Ljava/lang/String;
    :catch_1c7
    move-exception v3

    goto/16 :goto_2d
.end method

.method public transformNode(I)V
    .registers 27
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1188
    const/16 v19, 0x0

    :try_start_14
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v18

    .line 1191
    .local v18, "xctxt":Lorg/apache/xpath/XPathContext;
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_e9

    move-result-object v5

    .line 1195
    .local v5, "dtm":Lorg/apache/xml/dtm/DTM;
    :try_start_26
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushGlobalVars(I)V

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v16

    .line 1201
    .local v16, "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v13

    .line 1203
    .local v13, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_32
    if-ge v8, v13, :cond_60

    .line 1205
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    .line 1206
    .local v9, "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v11

    .line 1208
    .local v11, "includedCount":I
    const/4 v12, -0x1

    .local v12, "j":I
    :goto_3f
    if-ge v12, v11, :cond_5d

    .line 1210
    invoke-virtual {v9, v12}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v10

    .line 1212
    .local v10, "included":Lorg/apache/xalan/templates/Stylesheet;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lorg/apache/xalan/templates/Stylesheet;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1214
    invoke-virtual {v10}, Lorg/apache/xalan/templates/Stylesheet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    .line 1215
    .local v4, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_4e
    if-eqz v4, :cond_5a

    .line 1217
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1215
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    goto :goto_4e

    .line 1208
    :cond_5a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 1203
    .end local v4    # "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v10    # "included":Lorg/apache/xalan/templates/Stylesheet;
    :cond_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 1223
    .end local v9    # "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    .end local v11    # "includedCount":I
    .end local v12    # "j":I
    :cond_60
    new-instance v6, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v6}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>()V

    .line 1224
    .local v6, "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    move/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 1225
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_71} :catch_9e
    .catchall {:try_start_26 .. :try_end_71} :catchall_143

    .line 1228
    const/16 v19, 0x0

    const/16 v21, 0x0

    :try_start_75
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_99

    .line 1232
    :try_start_80
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_94

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_94} :catch_9e
    .catchall {:try_start_80 .. :try_end_94} :catchall_143

    .line 1297
    :cond_94
    :try_start_94
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    .line 1299
    .end local v6    # "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    .end local v8    # "i":I
    .end local v13    # "n":I
    .end local v16    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    :goto_97
    monitor-exit v20
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_e9

    .line 1300
    return-void

    .line 1232
    .restart local v6    # "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    .restart local v8    # "i":I
    .restart local v13    # "n":I
    .restart local v16    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    :catchall_99
    move-exception v19

    :try_start_9a
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    throw v19
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9e} :catch_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_143

    .line 1242
    .end local v6    # "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    .end local v8    # "i":I
    .end local v13    # "n":I
    .end local v16    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    :catch_9e
    move-exception v14

    .line 1252
    .local v14, "se":Ljava/lang/Exception;
    :cond_9f
    :goto_9f
    :try_start_9f
    instance-of v0, v14, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v19, v0

    if-eqz v19, :cond_b2

    .line 1254
    move-object v0, v14

    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v7

    .line 1255
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_9f

    .line 1256
    move-object v14, v7

    goto :goto_9f

    .line 1259
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0
    :try_end_b8
    .catchall {:try_start_9f .. :try_end_b8} :catchall_143

    if-eqz v19, :cond_d2

    .line 1263
    :try_start_ba
    instance-of v0, v14, Lorg/xml/sax/SAXParseException;

    move/from16 v19, v0

    if-eqz v19, :cond_ec

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v21, v0

    move-object v0, v14

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d2} :catch_11f
    .catchall {:try_start_ba .. :try_end_d2} :catchall_143

    .line 1279
    :cond_d2
    :goto_d2
    :try_start_d2
    instance-of v0, v14, Ljavax/xml/transform/TransformerException;

    move/from16 v19, v0

    if-eqz v19, :cond_148

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v19, v0

    check-cast v14, Ljavax/xml/transform/TransformerException;

    .end local v14    # "se":Ljava/lang/Exception;
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_e5
    .catchall {:try_start_d2 .. :try_end_e5} :catchall_143

    .line 1297
    :goto_e5
    :try_start_e5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_97

    .line 1299
    .end local v5    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v18    # "xctxt":Lorg/apache/xpath/XPathContext;
    :catchall_e9
    move-exception v19

    monitor-exit v20
    :try_end_eb
    .catchall {:try_start_e5 .. :try_end_eb} :catchall_e9

    throw v19

    .line 1265
    .restart local v5    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v14    # "se":Ljava/lang/Exception;
    .restart local v18    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_ec
    :try_start_ec
    instance-of v0, v14, Ljavax/xml/transform/TransformerException;

    move/from16 v19, v0

    if-eqz v19, :cond_121

    .line 1267
    move-object v0, v14

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object/from16 v17, v0

    .line 1268
    .local v17, "te":Ljavax/xml/transform/TransformerException;
    new-instance v15, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Ljavax/xml/transform/SourceLocator;)V

    .line 1269
    .local v15, "sl":Lorg/apache/xml/utils/SAXSourceLocator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    new-instance v21, Lorg/xml/sax/SAXParseException;

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_d2

    .line 1276
    .end local v15    # "sl":Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v17    # "te":Ljavax/xml/transform/TransformerException;
    :catch_11f
    move-exception v19

    goto :goto_d2

    .line 1273
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    new-instance v21, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct/range {v23 .. v23}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v14}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_142} :catch_11f
    .catchall {:try_start_ec .. :try_end_142} :catchall_143

    goto :goto_d2

    .line 1297
    .end local v14    # "se":Ljava/lang/Exception;
    :catchall_143
    move-exception v19

    :try_start_144
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    throw v19
    :try_end_148
    .catchall {:try_start_144 .. :try_end_148} :catchall_e9

    .line 1283
    .restart local v14    # "se":Ljava/lang/Exception;
    :cond_148
    :try_start_148
    instance-of v0, v14, Lorg/xml/sax/SAXParseException;

    move/from16 v19, v0

    if-eqz v19, :cond_176

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v21, v0

    new-instance v22, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v0, v14

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object/from16 v19, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v14}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface/range {v21 .. v22}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto/16 :goto_e5

    .line 1291
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v19, v0

    new-instance v21, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_18a
    .catchall {:try_start_148 .. :try_end_18a} :catchall_143

    goto/16 :goto_e5
.end method

.method public transformNode(ILjavax/xml/transform/Result;)V
    .registers 4
    .param p1, "node"    # I
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1164
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 1165
    .local v0, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 1167
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 1169
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V

    .line 1170
    return-void
.end method

.method public transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 4
    .param p1, "templateParent"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1774
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 1775
    .local v0, "dtmFrag":Lorg/apache/xml/dtm/DTM;
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    return v1
.end method

.method public transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 4
    .param p1, "templateParent"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1751
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 1752
    .local v0, "dtmFrag":Lorg/apache/xml/dtm/DTM;
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    return v1
.end method

.method public transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;
    .registers 11
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1875
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 1876
    .local v0, "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v0, :cond_a

    .line 1877
    const-string v1, ""

    .line 1944
    .end local v0    # "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_9
    return-object v1

    .line 1878
    .restart local v0    # "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_a
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-boolean v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v6, :cond_1b

    .line 1880
    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    .end local v0    # "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 1884
    .restart local v0    # "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1b
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1888
    .local v2, "savedRTreeHandler":Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/StringWriter;

    .line 1890
    .local v5, "sw":Ljava/io/StringWriter;
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/serializer/ToTextStream;

    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1893
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v6, :cond_41

    .line 1898
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v6}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v4

    .line 1900
    .local v4, "serializer":Lorg/apache/xml/serializer/Serializer;
    check-cast v4, Lorg/apache/xml/serializer/SerializationHandler;

    .end local v4    # "serializer":Lorg/apache/xml/serializer/Serializer;
    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1903
    :cond_41
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1904
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    .line 1917
    const/4 v6, 0x1

    :try_start_4c
    invoke-virtual {p0, p1, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 1918
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    .line 1920
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_57
    .catch Lorg/xml/sax/SAXException; {:try_start_4c .. :try_end_57} :catch_76
    .catchall {:try_start_4c .. :try_end_57} :catchall_7d

    move-result-object v1

    .line 1928
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1932
    :try_start_5f
    invoke-virtual {v5}, Ljava/io/StringWriter;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_9c

    .line 1936
    :goto_62
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6, v5}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1937
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    .line 1938
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1941
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    goto :goto_9

    .line 1922
    .end local v1    # "result":Ljava/lang/String;
    :catch_76
    move-exception v3

    .line 1924
    .local v3, "se":Lorg/xml/sax/SAXException;
    :try_start_77
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7d

    .line 1928
    .end local v3    # "se":Lorg/xml/sax/SAXException;
    :catchall_7d
    move-exception v6

    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1932
    :try_start_85
    invoke-virtual {v5}, Ljava/io/StringWriter;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_9e

    .line 1936
    :goto_88
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1937
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    .line 1938
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1941
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v6

    .line 1934
    .restart local v1    # "result":Ljava/lang/String;
    :catch_9c
    move-exception v6

    goto :goto_62

    .end local v1    # "result":Ljava/lang/String;
    :catch_9e
    move-exception v7

    goto :goto_88
.end method

.method public waitTransformThread()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2970
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getTransformThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2972
    .local v1, "transformThread":Ljava/lang/Thread;
    if-eqz v1, :cond_1f

    .line 2976
    :try_start_6
    invoke-static {v1, p0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 2978
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->hasTransformThreadErrorCatcher()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2980
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    .line 2982
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_20

    .line 2984
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2985
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 2991
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v2

    .line 2993
    :cond_1f
    :goto_1f
    return-void

    .line 2989
    :cond_20
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_24} :catch_1e

    goto :goto_1f
.end method
