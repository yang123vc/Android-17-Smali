.class public Lgov/nist/javax/sip/parser/AuthenticationInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AuthenticationInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "authenticationInfo"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2c

    .line 66
    sget-boolean v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    if-eqz v2, :cond_b

    .line 67
    const-string v2, "AuthenticationInfoParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 70
    :cond_b
    const/16 v2, 0x840

    :try_start_d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->headerName(I)V

    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    .line 73
    .local v0, "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    const-string v2, "Authentication-Info"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    invoke-super {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v1

    .line 79
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Lgov/nist/core/NameValue;)V

    .line 80
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    :goto_2b
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v4, :cond_58

    .line 82
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Lgov/nist/core/NameValue;)V

    .line 87
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_4d

    goto :goto_2b

    .line 94
    .end local v0    # "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    .end local v1    # "nv":Lgov/nist/core/NameValue;
    :catchall_4d
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    if-eqz v3, :cond_57

    .line 95
    const-string v3, "AuthenticationInfoParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 94
    :cond_57
    throw v2

    .line 89
    .restart local v0    # "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    .restart local v1    # "nv":Lgov/nist/core/NameValue;
    :cond_58
    :try_start_58
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_4d

    .line 94
    sget-boolean v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    if-eqz v2, :cond_66

    .line 95
    const-string v2, "AuthenticationInfoParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 92
    :cond_66
    return-object v0
.end method
