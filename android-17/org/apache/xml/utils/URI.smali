.class public Lorg/apache/xml/utils/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/utils/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'() "

.field private static final RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,"

.field private static final SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"

.field static final serialVersionUID:J = 0x627b00ac4eb312a9L


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xml/utils/URI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/xml/utils/URI;

    invoke-direct {p0, v0, p1}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_schemeSpecificPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 215
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_27

    .line 217
    :cond_1f
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_27
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3b

    .line 224
    :cond_33
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_3b
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/URI;->setPath(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_userinfo"    # Ljava/lang/String;
    .param p3, "p_host"    # Ljava/lang/String;
    .param p4, "p_port"    # I
    .param p5, "p_path"    # Ljava/lang/String;
    .param p6, "p_queryString"    # Ljava/lang/String;
    .param p7, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 126
    iput v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 288
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2b

    .line 290
    :cond_1f
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_SCHEME_REQUIRED"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2b
    if-nez p3, :cond_49

    .line 295
    if-eqz p2, :cond_3b

    .line 297
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_NO_USERINFO_IF_NO_HOST"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_3b
    if-eq p4, v1, :cond_49

    .line 303
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_NO_PORT_IF_NO_HOST"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_49
    if-eqz p5, :cond_77

    .line 310
    const/16 v0, 0x3f

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_61

    if-eqz p6, :cond_61

    .line 312
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_NO_QUERY_STRING_IN_PATH"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_61
    const/16 v0, 0x23

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_77

    if-eqz p7, :cond_77

    .line 318
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_NO_FRAGMENT_STRING_IN_PATH"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_77
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, p3}, Lorg/apache/xml/utils/URI;->setHost(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p4}, Lorg/apache/xml/utils/URI;->setPort(I)V

    .line 326
    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/URI;->setUserinfo(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p5}, Lorg/apache/xml/utils/URI;->setPath(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p6}, Lorg/apache/xml/utils/URI;->setQueryString(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p7}, Lorg/apache/xml/utils/URI;->setFragment(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_host"    # Ljava/lang/String;
    .param p3, "p_path"    # Ljava/lang/String;
    .param p4, "p_queryString"    # Ljava/lang/String;
    .param p5, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/URI;)V
    .registers 4
    .param p1, "p_other"    # Lorg/apache/xml/utils/URI;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    .registers 5
    .param p1, "p_base"    # Lorg/apache/xml/utils/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private initialize(Lorg/apache/xml/utils/URI;)V
    .registers 3
    .param p1, "p_other"    # Lorg/apache/xml/utils/URI;

    .prologue
    .line 340
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 344
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 347
    return-void
.end method

.method private initialize(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    .registers 20
    .param p1, "p_base"    # Lorg/apache/xml/utils/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 369
    if-nez p1, :cond_1b

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1b

    .line 372
    :cond_e
    new-instance v13, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v14, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 377
    :cond_1b
    if-eqz p2, :cond_27

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2b

    .line 379
    :cond_27
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;)V

    .line 590
    :cond_2a
    :goto_2a
    return-void

    .line 384
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 385
    .local v11, "uriSpec":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 386
    .local v12, "uriSpecLen":I
    const/4 v3, 0x0

    .line 389
    .local v3, "index":I
    const/16 v13, 0x3a

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 390
    .local v2, "colonIndex":I
    if-gez v2, :cond_51

    .line 392
    if-nez p1, :cond_8c

    .line 394
    new-instance v13, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v14, "ER_NO_SCHEME_IN_URI"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v14, v15}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 399
    :cond_51
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/xml/utils/URI;->initializeScheme(Ljava/lang/String;)V

    .line 400
    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v13, :cond_88

    if-eqz p1, :cond_88

    .line 418
    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_86

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_86

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_88

    .line 420
    :cond_86
    const/16 p1, 0x0

    .line 424
    :cond_88
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 428
    :cond_8c
    const-string v13, "//"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b5

    .line 430
    add-int/lit8 v3, v3, 0x2

    .line 432
    move v8, v3

    .line 435
    .local v8, "startPos":I
    const/4 v10, 0x0

    .line 437
    .local v10, "testChar":C
    :goto_98
    if-ge v3, v12, :cond_aa

    .line 439
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 441
    const/16 v13, 0x2f

    if-eq v10, v13, :cond_aa

    const/16 v13, 0x3f

    if-eq v10, v13, :cond_aa

    const/16 v13, 0x23

    if-ne v10, v13, :cond_10e

    .line 451
    :cond_aa
    if-le v3, v8, :cond_111

    .line 453
    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/xml/utils/URI;->initializeAuthority(Ljava/lang/String;)V

    .line 461
    .end local v8    # "startPos":I
    .end local v10    # "testChar":C
    :cond_b5
    :goto_b5
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/xml/utils/URI;->initializePath(Ljava/lang/String;)V

    .line 468
    if-eqz p1, :cond_2a

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_118

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v13, :cond_118

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v13, :cond_118

    .line 480
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 481
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 482
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 483
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPort()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 484
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 486
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez v13, :cond_2a

    .line 488
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    goto/16 :goto_2a

    .line 446
    .restart local v8    # "startPos":I
    .restart local v10    # "testChar":C
    :cond_10e
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 457
    :cond_111
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    goto :goto_b5

    .line 496
    .end local v8    # "startPos":I
    .end local v10    # "testChar":C
    :cond_118
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v13, :cond_126

    .line 498
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 503
    :cond_126
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v13, :cond_2a

    .line 505
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 506
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 507
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPort()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_15a

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2a

    .line 522
    :cond_15a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 523
    .local v5, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "basePath":Ljava/lang/String;
    if-eqz v1, :cond_175

    .line 528
    const/16 v13, 0x2f

    invoke-virtual {v1, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 530
    .local v4, "lastSlash":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_175

    .line 532
    const/4 v13, 0x0

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 537
    .end local v4    # "lastSlash":I
    :cond_175
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 540
    const/4 v3, -0x1

    .line 542
    :goto_17e
    const-string v13, "/./"

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_199

    .line 544
    const/4 v13, 0x0

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v3, 0x3

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_17e

    .line 548
    :cond_199
    const-string v13, "/."

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1ac

    .line 550
    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 555
    :cond_1ac
    const/4 v3, -0x1

    .line 557
    const/4 v6, -0x1

    .line 558
    .local v6, "segIndex":I
    const/4 v9, 0x0

    .line 560
    .local v9, "tempString":Ljava/lang/String;
    :cond_1af
    :goto_1af
    const-string v13, "/../"

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1ea

    .line 562
    const/4 v13, 0x0

    const-string v14, "/../"

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 563
    const/16 v13, 0x2f

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 565
    const/4 v13, -0x1

    if-eq v6, v13, :cond_1af

    .line 567
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "segIndex":I
    .local v7, "segIndex":I
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_213

    .line 569
    const/4 v13, 0x0

    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v3, 0x4

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v6, v7

    .end local v7    # "segIndex":I
    .restart local v6    # "segIndex":I
    goto :goto_1af

    .line 577
    :cond_1ea
    const-string v13, "/.."

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20d

    .line 579
    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 580
    const/16 v13, 0x2f

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 582
    const/4 v13, -0x1

    if-eq v6, v13, :cond_20d

    .line 584
    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 588
    :cond_20d
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_2a

    .end local v6    # "segIndex":I
    .restart local v7    # "segIndex":I
    :cond_213
    move v6, v7

    .end local v7    # "segIndex":I
    .restart local v6    # "segIndex":I
    goto :goto_1af
.end method

.method private initializeAuthority(Ljava/lang/String;)V
    .registers 15
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x40

    const/16 v11, 0x3a

    .line 645
    const/4 v3, 0x0

    .line 646
    .local v3, "index":I
    const/4 v6, 0x0

    .line 647
    .local v6, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 648
    .local v0, "end":I
    const/4 v7, 0x0

    .line 649
    .local v7, "testChar":C
    const/4 v8, 0x0

    .line 652
    .local v8, "userinfo":Ljava/lang/String;
    invoke-virtual {p1, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_21

    .line 654
    :goto_13
    if-ge v3, v0, :cond_1b

    .line 656
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 658
    if-ne v7, v12, :cond_40

    .line 666
    :cond_1b
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 668
    add-int/lit8 v3, v3, 0x1

    .line 672
    :cond_21
    const/4 v1, 0x0

    .line 674
    .local v1, "host":Ljava/lang/String;
    move v6, v3

    .line 676
    :goto_23
    if-ge v3, v0, :cond_2b

    .line 678
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 680
    if-ne v7, v11, :cond_43

    .line 688
    :cond_2b
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 690
    const/4 v4, -0x1

    .line 692
    .local v4, "port":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_81

    .line 696
    if-ne v7, v11, :cond_81

    .line 698
    add-int/lit8 v3, v3, 0x1

    .line 700
    move v6, v3

    .line 702
    :goto_3b
    if-ge v3, v0, :cond_46

    .line 704
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 663
    .end local v1    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 685
    .restart local v1    # "host":Ljava/lang/String;
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 707
    .restart local v4    # "port":I
    :cond_46
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, "portStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_81

    .line 711
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_7d

    .line 713
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_7a

    .line 715
    new-instance v9, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is invalid. Port should only contain digits!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 711
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 722
    :cond_7d
    :try_start_7d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_80} :catch_8b

    move-result v4

    .line 733
    .end local v2    # "i":I
    .end local v5    # "portStr":Ljava/lang/String;
    :cond_81
    :goto_81
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/URI;->setHost(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0, v4}, Lorg/apache/xml/utils/URI;->setPort(I)V

    .line 735
    invoke-virtual {p0, v8}, Lorg/apache/xml/utils/URI;->setUserinfo(Ljava/lang/String;)V

    .line 736
    return-void

    .line 724
    .restart local v2    # "i":I
    .restart local v5    # "portStr":Ljava/lang/String;
    :catch_8b
    move-exception v9

    goto :goto_81
.end method

.method private initializePath(Ljava/lang/String;)V
    .registers 11
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0x25

    const/16 v5, 0x23

    .line 748
    if-nez p1, :cond_10

    .line 750
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v5, "Cannot initialize path from null string!"

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 754
    :cond_10
    const/4 v1, 0x0

    .line 755
    .local v1, "index":I
    const/4 v2, 0x0

    .line 756
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 757
    .local v0, "end":I
    const/4 v3, 0x0

    .line 760
    .local v3, "testChar":C
    :goto_17
    if-ge v1, v0, :cond_21

    .line 762
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 764
    if-eq v3, v7, :cond_21

    if-ne v3, v5, :cond_6b

    .line 790
    :cond_21
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 793
    if-ne v3, v7, :cond_3a

    .line 795
    add-int/lit8 v1, v1, 0x1

    .line 797
    move v2, v1

    .line 799
    :goto_2c
    if-ge v1, v0, :cond_34

    .line 801
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 803
    if-ne v3, v5, :cond_c0

    .line 827
    :cond_34
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 831
    :cond_3a
    if-ne v3, v5, :cond_13e

    .line 833
    add-int/lit8 v1, v1, 0x1

    .line 835
    move v2, v1

    .line 837
    :goto_3f
    if-ge v1, v0, :cond_138

    .line 839
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 841
    if-ne v3, v6, :cond_10f

    .line 843
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_63

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_63

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_134

    .line 846
    :cond_63
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v5, "Fragment contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 770
    :cond_6b
    if-ne v3, v6, :cond_96

    .line 772
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_89

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_89

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_bc

    .line 775
    :cond_89
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v5, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 779
    :cond_96
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_bc

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_bc

    .line 782
    const/16 v4, 0x5c

    if-eq v4, v3, :cond_bc

    .line 783
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v5, "ER_PATH_INVALID_CHAR"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 787
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 808
    :cond_c0
    if-ne v3, v6, :cond_e6

    .line 810
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_de

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_de

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_10b

    .line 813
    :cond_de
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v5, "Query string contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 817
    :cond_e6
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_10b

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_10b

    .line 820
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query string contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 824
    :cond_10b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c

    .line 850
    :cond_10f
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_134

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_134

    .line 853
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 857
    :cond_134
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3f

    .line 860
    :cond_138
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 862
    :cond_13e
    return-void
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .registers 9
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 604
    .local v3, "uriSpecLen":I
    const/4 v0, 0x0

    .line 605
    .local v0, "index":I
    const/4 v1, 0x0

    .line 606
    .local v1, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    .line 608
    .local v2, "testChar":C
    :goto_7
    if-ge v0, v3, :cond_1d

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 612
    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1d

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_1d

    const/16 v4, 0x3f

    if-eq v2, v4, :cond_1d

    const/16 v4, 0x23

    if-ne v2, v4, :cond_35

    .line 621
    :cond_1d
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_38

    .line 625
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v5, "ER_NO_SCHEME_INURI"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 618
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 629
    :cond_38
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method private static isAlpha(C)Z
    .registers 2
    .param p0, "p_char"    # C

    .prologue
    .line 1581
    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isAlphanum(C)Z
    .registers 2
    .param p0, "p_char"    # C

    .prologue
    .line 1594
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .registers 6
    .param p0, "p_scheme"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1411
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 1433
    :cond_d
    :goto_d
    return v2

    .line 1416
    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1423
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_35

    .line 1425
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1427
    .local v1, "testChar":C
    invoke-static {v1}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "+-."

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 1423
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1433
    .end local v1    # "testChar":C
    :cond_35
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private static isDigit(C)Z
    .registers 2
    .param p0, "p_char"    # C

    .prologue
    .line 1555
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isHex(C)Z
    .registers 2
    .param p0, "p_char"    # C

    .prologue
    .line 1568
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x66

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static isReservedCharacter(C)Z
    .registers 3
    .param p0, "p_char"    # C

    .prologue
    .line 1607
    const-string v0, ";/?:@&=+$,"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .registers 6
    .param p0, "p_uric"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1634
    if-nez p0, :cond_4

    .line 1671
    :cond_3
    :goto_3
    return v3

    .line 1639
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1640
    .local v0, "end":I
    const/4 v2, 0x0

    .line 1642
    .local v2, "testChar":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_42

    .line 1644
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1646
    const/16 v4, 0x25

    if-ne v2, v4, :cond_35

    .line 1648
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1655
    add-int/lit8 v1, v1, 0x2

    .line 1642
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1661
    :cond_35
    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_32

    .line 1671
    :cond_42
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private static isUnreservedCharacter(C)Z
    .registers 3
    .param p0, "p_char"    # C

    .prologue
    .line 1619
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "-_.!~*\'() "

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .registers 10
    .param p0, "p_address"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2e

    const/4 v6, 0x0

    .line 1452
    if-nez p0, :cond_6

    .line 1543
    :cond_5
    :goto_5
    return v6

    .line 1457
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1460
    .local v0, "addrLength":I
    if-eqz v0, :cond_5

    const/16 v7, 0xff

    if-gt v0, v7, :cond_5

    .line 1465
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1473
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1475
    .local v3, "index":I
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1477
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1480
    :cond_38
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v0, :cond_7f

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1483
    const/4 v4, 0x0

    .line 1488
    .local v4, "numDots":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v0, :cond_7a

    .line 1490
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1492
    .local v5, "testChar":C
    if-ne v5, v8, :cond_73

    .line 1494
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_6e

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1500
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    .line 1488
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1502
    :cond_73
    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_70

    goto :goto_5

    .line 1508
    .end local v5    # "testChar":C
    :cond_7a
    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    .line 1543
    .end local v4    # "numDots":I
    :cond_7d
    const/4 v6, 0x1

    goto :goto_5

    .line 1520
    .end local v2    # "i":I
    :cond_7f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_80
    if-ge v2, v0, :cond_7d

    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1524
    .restart local v5    # "testChar":C
    if-ne v5, v8, :cond_a7

    .line 1526
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1531
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_a4

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1520
    :cond_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 1536
    :cond_a7
    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v7

    if-nez v7, :cond_a4

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_a4

    goto/16 :goto_5
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "p_addToPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1210
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 1253
    :cond_d
    :goto_d
    return-void

    .line 1215
    :cond_e
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1217
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_PATH_INVALID_CHAR"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :cond_25
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_56

    .line 1222
    :cond_35
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1224
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1228
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1231
    :cond_56
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1233
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1235
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1239
    :cond_75
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1244
    :cond_7e
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1246
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_d

    .line 1250
    :cond_90
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "p_test"    # Ljava/lang/Object;

    .prologue
    .line 1344
    instance-of v1, p1, Lorg/apache/xml/utils/URI;

    if-eqz v1, :cond_ab

    move-object v0, p1

    .line 1346
    check-cast v0, Lorg/apache/xml/utils/URI;

    .line 1348
    .local v0, "testURI":Lorg/apache/xml/utils/URI;
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_21

    :cond_f
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    :cond_21
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_29

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_3b

    :cond_29
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    :cond_3b
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_43

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_55

    :cond_43
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    :cond_55
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    iget v2, v0, Lorg/apache/xml/utils/URI;->m_port:I

    if-ne v1, v2, :cond_ab

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-nez v1, :cond_63

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_75

    :cond_63
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    :cond_75
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez v1, :cond_7d

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_8f

    :cond_7d
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    :cond_8f
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-nez v1, :cond_97

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_a9

    :cond_97
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1356
    :cond_a9
    const/4 v1, 0x1

    .line 1360
    .end local v0    # "testURI":Lorg/apache/xml/utils/URI;
    :goto_aa
    return v1

    :cond_ab
    const/4 v1, 0x0

    goto :goto_aa
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .registers 5
    .param p1, "p_includeQueryString"    # Z
    .param p2, "p_includeFragment"    # Z

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, "pathString":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_17

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 979
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 980
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    :cond_17
    if-eqz p2, :cond_27

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 985
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 986
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 954
    iget v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 883
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 885
    .local v0, "schemespec":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_12

    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    if-eq v1, v2, :cond_17

    .line 887
    :cond_12
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    :cond_17
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 892
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 896
    :cond_25
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 898
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    :cond_2e
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    if-eq v1, v2, :cond_3c

    .line 903
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 904
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 907
    :cond_3c
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 909
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    :cond_45
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_53

    .line 914
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 915
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    :cond_53
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 920
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 921
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserinfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    return-object v0
.end method

.method public isGenericURI()Z
    .registers 2

    .prologue
    .line 1396
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setFragment(Ljava/lang/String;)V
    .registers 5
    .param p1, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1309
    if-nez p1, :cond_6

    .line 1311
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 1331
    :goto_5
    return-void

    .line 1313
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1315
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_FRAG_FOR_GENERIC_URI"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1318
    :cond_18
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1320
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_FRAG_WHEN_PATH_NULL"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_2a
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1325
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_FRAG_INVALID_CHAR"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :cond_3c
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    goto :goto_5
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 5
    .param p1, "p_host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1121
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 1123
    :cond_d
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 1124
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 1125
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 1132
    :cond_14
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 1133
    return-void

    .line 1127
    :cond_17
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1129
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "p_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1182
    if-nez p1, :cond_a

    .line 1184
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 1185
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 1186
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 1192
    :goto_9
    return-void

    .line 1190
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI;->initializePath(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setPort(I)V
    .registers 5
    .param p1, "p_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1149
    if-ltz p1, :cond_18

    const v0, 0xffff

    if-gt p1, v0, :cond_18

    .line 1151
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 1153
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_PORT_WHEN_HOST_NULL"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_18
    const/4 v0, -0x1

    if-eq p1, v0, :cond_27

    .line 1159
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_INVALID_PORT"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_27
    iput p1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 1163
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .registers 4
    .param p1, "p_queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1270
    if-nez p1, :cond_6

    .line 1272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 1293
    :goto_5
    return-void

    .line 1274
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1276
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "Query string can only be set for a generic URI!"

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_14
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    .line 1281
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "Query string cannot be set when path is null!"

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_22
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1286
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "Query string contains invalid character!"

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1291
    :cond_30
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    goto :goto_5
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 5
    .param p1, "p_scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1039
    if-nez p1, :cond_f

    .line 1041
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_SCHEME_FROM_NULL_STRING"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_f
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1046
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v1, "ER_SCHEME_NOT_CONFORMANT"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 1050
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .registers 8
    .param p1, "p_userinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1064
    if-nez p1, :cond_8

    .line 1066
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 1106
    :cond_5
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 1107
    return-void

    .line 1070
    :cond_8
    iget-object v3, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 1072
    new-instance v3, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v4, "Userinfo cannot be set when host is null!"

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1078
    :cond_14
    const/4 v1, 0x0

    .line 1079
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1080
    .local v0, "end":I
    const/4 v2, 0x0

    .line 1082
    .local v2, "testChar":C
    :goto_1a
    if-ge v1, v0, :cond_5

    .line 1084
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1086
    const/16 v3, 0x25

    if-ne v2, v3, :cond_48

    .line 1088
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_40

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_40

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v3

    if-nez v3, :cond_70

    .line 1091
    :cond_40
    new-instance v3, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v4, "Userinfo contains invalid escape sequence!"

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1095
    :cond_48
    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, ";:&=+$,"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_70

    .line 1098
    new-instance v3, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Userinfo contains invalid character:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1102
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1373
    .local v0, "uriSpecString":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1375
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1376
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1379
    :cond_13
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
