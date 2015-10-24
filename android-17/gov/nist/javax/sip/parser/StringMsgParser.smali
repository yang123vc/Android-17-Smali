.class public Lgov/nist/javax/sip/parser/StringMsgParser;
.super Ljava/lang/Object;
.source "StringMsgParser.java"


# static fields
.field private static computeContentLengthFromMessage:Z


# instance fields
.field private parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

.field private rawStringMessage:Ljava/lang/String;

.field protected readBody:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .registers 2
    .param p1, "exhandler"    # Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .prologue
    .line 98
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 99
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .line 100
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 625
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SIP/2.0 200 OK\r\nTo: \"The Little Blister\" <sip:LittleGuy@there.com>;tag=469bc066\r\nFrom: \"The Master Blaster\" <sip:BigGuy@here.com>;tag=11\r\nVia: SIP/2.0/UDP 139.10.134.246:5060;branch=z9hG4bK8b0a86f6_1030c7d18e0_17;received=139.10.134.246\r\nCall-ID: 1030c7d18ae_a97b0b_b@8b0a86f6\r\nCSeq: 1 SUBSCRIBE\r\nContact: <sip:172.16.11.162:5070>\r\nContent-Length: 0\r\n\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SIP/2.0 180 Ringing\r\nVia: SIP/2.0/UDP 172.18.1.29:5060;branch=z9hG4bK43fc10fb4446d55fc5c8f969607991f4\r\nTo: \"0440\" <sip:0440@212.209.220.131>;tag=2600\r\nFrom: \"Andreas\" <sip:andreas@e-horizon.se>;tag=8524\r\nCall-ID: f51a1851c5f570606140f14c8eb64fd3@172.18.1.29\r\nCSeq: 1 INVITE\r\nMax-Forwards: 70\r\nRecord-Route: <sip:212.209.220.131:5060>\r\nContent-Length: 0\r\n\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "REGISTER sip:nist.gov SIP/2.0\r\nVia: SIP/2.0/UDP 129.6.55.182:14826\r\nMax-Forwards: 70\r\nFrom: <sip:mranga@nist.gov>;tag=6fcd5c7ace8b4a45acf0f0cd539b168b;epid=0d4c418ddf\r\nTo: <sip:mranga@nist.gov>\r\nCall-ID: c5679907eb954a8da9f9dceb282d7230@129.6.55.182\r\nCSeq: 1 REGISTER\r\nContact: <sip:129.6.55.182:14826>;methods=\"INVITE, MESSAGE, INFO, SUBSCRIBE, OPTIONS, BYE, CANCEL, NOTIFY, ACK, REFER\"\r\nUser-Agent: RTC/(Microsoft RTC)\r\nEvent:  registration\r\nAllow-Events: presence\r\nContent-Length: 0\r\n\r\nINVITE sip:littleguy@there.com:5060 SIP/2.0\r\nVia: SIP/2.0/UDP 65.243.118.100:5050\r\nFrom: M. Ranganathan  <sip:M.Ranganathan@sipbakeoff.com>;tag=1234\r\nTo: \"littleguy@there.com\" <sip:littleguy@there.com:5060> \r\nCall-ID: Q2AboBsaGn9!?x6@sipbakeoff.com \r\nCSeq: 1 INVITE \r\nContent-Length: 247\r\n\r\nv=0\r\no=4855 13760799956958020 13760799956958020 IN IP4  129.6.55.78\r\ns=mysession session\r\np=+46 8 52018010\r\nc=IN IP4  129.6.55.78\r\nt=0 0\r\nm=audio 6022 RTP/AVP 0 4 18\r\na=rtpmap:0 PCMU/8000\r\na=rtpmap:4 G723/8000\r\na=rtpmap:18 G729A/8000\r\na=ptime:20\r\n"

    aput-object v3, v1, v2

    .line 698
    .local v1, "messages":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    const/16 v2, 0x14

    if-ge v0, v2, :cond_27

    .line 699
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;

    invoke-direct {v3, v1}, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;-><init>([Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 702
    :cond_27
    return-void
.end method

.method private processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .registers 11
    .param p1, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 359
    const-string v1, "SIP/2.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 360
    new-instance v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 362
    .local v3, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_d
    new-instance v1, Lgov/nist/javax/sip/parser/RequestLineParser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v7

    .line 364
    .local v7, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    move-object v0, v3

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    :try_end_30
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_30} :catch_31

    .line 387
    .end local v7    # "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    :goto_30
    return-object v3

    .line 365
    :catch_31
    move-exception v2

    .line 366
    .local v2, "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v1, :cond_41

    .line 367
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const-class v4, Lgov/nist/javax/sip/header/RequestLine;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 370
    :cond_41
    throw v2

    .line 374
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v3    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_42
    new-instance v3, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 376
    .restart local v3    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_47
    new-instance v1, Lgov/nist/javax/sip/parser/StatusLineParser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v8

    .line 377
    .local v8, "sl":Lgov/nist/javax/sip/header/StatusLine;
    move-object v0, v3

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v1, v0

    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    :try_end_6a
    .catch Ljava/text/ParseException; {:try_start_47 .. :try_end_6a} :catch_6b

    goto :goto_30

    .line 378
    .end local v8    # "sl":Lgov/nist/javax/sip/header/StatusLine;
    :catch_6b
    move-exception v2

    .line 379
    .restart local v2    # "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v1, :cond_7b

    .line 380
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const-class v4, Lgov/nist/javax/sip/header/StatusLine;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 383
    :cond_7b
    throw v2
.end method

.method private processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 12
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 391
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 419
    :cond_8
    :goto_8
    return-void

    .line 394
    :cond_9
    const/4 v7, 0x0

    .line 396
    .local v7, "headerParser":Lgov/nist/javax/sip/parser/HeaderParser;
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_20} :catch_45

    move-result-object v7

    .line 404
    :try_start_21
    invoke-virtual {v7}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v8

    .line 405
    .local v8, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v0, 0x0

    invoke-virtual {p2, v8, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_8

    .line 406
    .end local v8    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :catch_2a
    move-exception v1

    .line 407
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v0, :cond_8

    .line 408
    invoke-static {p1}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "headerName":Ljava/lang/String;
    invoke-static {v6}, Lgov/nist/javax/sip/header/NameMap;->getClassFromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 410
    .local v3, "headerClass":Ljava/lang/Class;
    if-nez v3, :cond_3b

    .line 411
    const-class v3, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    .line 414
    :cond_3b
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 397
    .end local v1    # "ex":Ljava/text/ParseException;
    .end local v3    # "headerClass":Ljava/lang/Class;
    .end local v6    # "headerName":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 398
    .restart local v1    # "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const/4 v3, 0x0

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static setComputeContentLengthFromMessage(Z)V
    .registers 1
    .param p0, "computeContentLengthFromMessage"    # Z

    .prologue
    .line 616
    sput-boolean p0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    .line 617
    return-void
.end method

.method private trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 341
    if-nez p1, :cond_3

    .line 354
    .end local p1    # "line":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p1

    .line 344
    .restart local p1    # "line":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 345
    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_16

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_16

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 348
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 351
    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 352
    const-string p1, ""

    goto :goto_2

    .line 354
    :cond_24
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method public parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v1

    return-object v1
.end method

.method public parseHost(Ljava/lang/String;)Lgov/nist/core/Host;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .local v0, "lexer":Lgov/nist/javax/sip/parser/Lexer;
    new-instance v1, Lgov/nist/core/HostNameParser;

    invoke-direct {v1, v0}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    invoke-virtual {v1}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    move-result-object v1

    return-object v1
.end method

.method public parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 15
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    const/16 v10, 0x20

    .line 529
    const/4 v8, 0x0

    .line 530
    .local v8, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 533
    .local v3, "end":I
    :goto_c
    :try_start_c
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v10, :cond_15

    .line 534
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 537
    :cond_15
    :goto_15
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_18
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_18} :catch_1e

    move-result v9

    if-gt v9, v10, :cond_27

    .line 538
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 540
    :catch_1e
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v9, Ljava/text/ParseException;

    const-string v10, "Empty header."

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 545
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_27
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v9, v3, 0x1

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 546
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v6, v8

    .line 547
    .local v6, "i":I
    move v7, v8

    .line 548
    .local v7, "lineStart":I
    const/4 v4, 0x0

    .line 549
    .local v4, "endOfLine":Z
    :goto_31
    if-gt v6, v3, :cond_5b

    .line 550
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 551
    .local v1, "c":C
    const/16 v9, 0xd

    if-eq v1, v9, :cond_3d

    if-ne v1, v12, :cond_4a

    .line 552
    :cond_3d
    if-nez v4, :cond_47

    .line 553
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    const/4 v4, 0x1

    .line 570
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    .line 571
    goto :goto_31

    .line 558
    :cond_4a
    if-eqz v4, :cond_47

    .line 559
    const/4 v4, 0x0

    .line 560
    if-eq v1, v10, :cond_53

    const/16 v9, 0x9

    if-ne v1, v9, :cond_59

    .line 561
    :cond_53
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    add-int/lit8 v7, v6, 0x1

    goto :goto_47

    .line 565
    :cond_59
    move v7, v6

    goto :goto_47

    .line 572
    .end local v1    # "c":C
    :cond_5b
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object v5

    .line 576
    .local v5, "hp":Lgov/nist/javax/sip/parser/HeaderParser;
    if-nez v5, :cond_77

    .line 577
    new-instance v9, Ljava/text/ParseException;

    const-string v10, "could not create parser"

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 578
    :cond_77
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v9

    return-object v9
.end method

.method public parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .registers 16
    .param p1, "msgString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 241
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_a

    .line 242
    :cond_8
    const/4 v10, 0x0

    .line 337
    :cond_9
    :goto_9
    return-object v10

    .line 244
    :cond_a
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    .line 246
    const/4 v7, 0x0

    .line 250
    .local v7, "i":I
    :goto_d
    :try_start_d
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_10} :catch_18
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_d .. :try_end_10} :catch_1b

    move-result v11

    const/16 v12, 0x20

    if-ge v11, v12, :cond_1e

    .line 251
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 253
    :catch_18
    move-exception v4

    .line 255
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v10, 0x0

    goto :goto_9

    .line 256
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1b
    move-exception v5

    .line 257
    .local v5, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v10, 0x0

    goto :goto_9

    .line 261
    .end local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1e
    const/4 v3, 0x0

    .line 262
    .local v3, "currentLine":Ljava/lang/String;
    const/4 v2, 0x0

    .line 263
    .local v2, "currentHeader":Ljava/lang/String;
    const/4 v8, 0x1

    .line 264
    .local v8, "isFirstLine":Z
    const/4 v10, 0x0

    .line 267
    .local v10, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_22
    move v9, v7

    .line 271
    .local v9, "lineStart":I
    :try_start_23
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 272
    .local v1, "c":C
    :goto_27
    const/16 v11, 0xd

    if-eq v1, v11, :cond_64

    const/16 v11, 0xa

    if-eq v1, v11, :cond_64

    .line 273
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_34
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_23 .. :try_end_34} :catch_36
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_23 .. :try_end_34} :catch_62

    move-result v1

    goto :goto_27

    .line 275
    .end local v1    # "c":C
    :catch_36
    move-exception v4

    .line 322
    :goto_37
    invoke-virtual {v10, v7}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    .line 325
    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 326
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-eqz v11, :cond_da

    .line 327
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "body":Ljava/lang/String;
    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    sget-boolean v12, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v13

    invoke-virtual {v10, v0, v11, v12, v13}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent(Ljava/lang/String;ZZI)V

    goto :goto_9

    .line 278
    .end local v0    # "body":Ljava/lang/String;
    :catch_62
    move-exception v5

    .line 279
    .restart local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_37

    .line 283
    .end local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v1    # "c":C
    :cond_64
    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_9d

    .line 288
    if-eqz v2, :cond_77

    .line 289
    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 313
    :cond_77
    :goto_77
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_93

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v12, v7, 0x1

    if-le v11, v12, :cond_93

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_93

    .line 314
    add-int/lit8 v7, v7, 0x1

    .line 316
    :cond_93
    add-int/lit8 v7, v7, 0x1

    .line 318
    const/4 v8, 0x0

    .line 320
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_22

    goto :goto_37

    .line 293
    :cond_9d
    if-eqz v8, :cond_a4

    .line 294
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v10

    goto :goto_77

    .line 296
    :cond_a4
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 297
    .local v6, "firstChar":C
    const/16 v11, 0x9

    if-eq v6, v11, :cond_b1

    const/16 v11, 0x20

    if-ne v6, v11, :cond_d3

    .line 298
    :cond_b1
    if-nez v2, :cond_bc

    .line 299
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad header continuation."

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 302
    :cond_bc
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    .line 305
    :cond_d3
    if-eqz v2, :cond_d8

    .line 306
    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 308
    :cond_d8
    move-object v2, v3

    goto :goto_77

    .line 329
    .end local v1    # "c":C
    .end local v6    # "firstChar":C
    :cond_da
    sget-boolean v11, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    if-nez v11, :cond_9

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "\r\n\r\n"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 330
    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    if-eqz v11, :cond_9

    .line 331
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Extraneous characters at the end of the message "

    invoke-direct {v11, v12, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11
.end method

.method public parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;
    .registers 16
    .param p1, "msgBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 130
    if-eqz p1, :cond_5

    array-length v11, p1

    if-nez v11, :cond_7

    .line 131
    :cond_5
    const/4 v10, 0x0

    .line 223
    :cond_6
    :goto_6
    return-object v10

    .line 133
    :cond_7
    const/4 v6, 0x0

    .line 137
    .local v6, "i":I
    :goto_8
    :try_start_8
    aget-byte v11, p1, v6
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_a} :catch_11

    const/16 v12, 0x20

    if-ge v11, v12, :cond_14

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 140
    :catch_11
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v10, 0x0

    goto :goto_6

    .line 146
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_14
    const/4 v3, 0x0

    .line 147
    .local v3, "currentLine":Ljava/lang/String;
    const/4 v2, 0x0

    .line 148
    .local v2, "currentHeader":Ljava/lang/String;
    const/4 v7, 0x1

    .line 149
    .local v7, "isFirstLine":Z
    const/4 v10, 0x0

    .line 152
    .local v10, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_18
    move v9, v6

    .line 156
    .local v9, "lineStart":I
    :goto_19
    :try_start_19
    aget-byte v11, p1, v6

    const/16 v12, 0xd

    if-eq v11, v12, :cond_34

    aget-byte v11, p1, v6
    :try_end_21
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_21} :catch_28

    const/16 v12, 0xa

    if-eq v11, v12, :cond_34

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 159
    :catch_28
    move-exception v4

    .line 210
    :goto_29
    if-nez v10, :cond_b6

    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad message"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 163
    :cond_34
    sub-int v8, v6, v9

    .line 167
    .local v8, "lineLength":I
    :try_start_36
    new-instance v3, Ljava/lang/String;

    .end local v3    # "currentLine":Ljava/lang/String;
    const-string v11, "UTF-8"

    invoke-direct {v3, p1, v9, v8, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_3d} :catch_6d

    .line 172
    .restart local v3    # "currentLine":Ljava/lang/String;
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_77

    .line 176
    if-eqz v2, :cond_4e

    if-eqz v10, :cond_4e

    .line 177
    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 202
    :cond_4e
    :goto_4e
    aget-byte v11, p1, v6

    const/16 v12, 0xd

    if-ne v11, v12, :cond_63

    array-length v11, p1

    add-int/lit8 v12, v6, 0x1

    if-le v11, v12, :cond_63

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_63

    .line 203
    add-int/lit8 v6, v6, 0x1

    .line 205
    :cond_63
    add-int/lit8 v6, v6, 0x1

    .line 207
    const/4 v7, 0x0

    .line 208
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_18

    goto :goto_29

    .line 168
    .end local v3    # "currentLine":Ljava/lang/String;
    :catch_6d
    move-exception v4

    .line 169
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad message encoding!"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 182
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "currentLine":Ljava/lang/String;
    :cond_77
    if-eqz v7, :cond_7e

    .line 183
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v10

    goto :goto_4e

    .line 185
    :cond_7e
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 186
    .local v5, "firstChar":C
    const/16 v11, 0x9

    if-eq v5, v11, :cond_8b

    const/16 v11, 0x20

    if-ne v5, v11, :cond_ad

    .line 187
    :cond_8b
    if-nez v2, :cond_96

    .line 188
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad header continuation."

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 191
    :cond_96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    .line 194
    :cond_ad
    if-eqz v2, :cond_b4

    if-eqz v10, :cond_b4

    .line 195
    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 197
    :cond_b4
    move-object v2, v3

    goto :goto_4e

    .line 211
    .end local v5    # "firstChar":C
    .end local v8    # "lineLength":I
    :cond_b6
    invoke-virtual {v10, v6}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    .line 213
    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-eqz v11, :cond_6

    .line 216
    array-length v11, p1

    sub-int v1, v11, v6

    .line 218
    .local v1, "bodyLength":I
    new-array v0, v1, [B

    .line 219
    .local v0, "body":[B
    const/4 v11, 0x0

    invoke-static {p1, v6, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    sget-boolean v11, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v12

    invoke-virtual {v10, v0, v11, v12}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([BZI)V

    goto/16 :goto_6
.end method

.method public parseSIPRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/RequestLine;
    .registers 4
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 594
    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    return-object v0
.end method

.method public parseSIPStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/StatusLine;
    .registers 4
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 611
    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method public parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 500
    :catch_b
    move-exception v0

    .line 501
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Not a SIP URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public parseTelephoneNumber(Ljava/lang/String;)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 4
    .param p1, "telephone_number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .registers 2
    .param p1, "pexhandler"    # Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .prologue
    .line 110
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .line 111
    return-void
.end method

.method public setStrict(Z)V
    .registers 2
    .param p1, "strict"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    .line 707
    return-void
.end method
