.class public Lgov/nist/javax/sip/header/ims/PServedUser;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "PServedUser.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PServedUserHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    const-string v0, "P-Served-User"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .registers 3
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    .prologue
    .line 47
    const-string v0, "P-Served-User"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    .line 161
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PServedUser;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .registers 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "regstate"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 133
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "regstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getRegistrationState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_31
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "sescase"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 137
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "sescase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getSessionCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 150
    instance-of v1, p1, Lgov/nist/javax/sip/header/ims/PServedUser;

    if-eqz v1, :cond_16

    move-object v0, p1

    .line 152
    check-cast v0, Lgov/nist/javax/sip/header/ims/PServedUserHeader;

    .line 153
    .local v0, "psu":Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    check-cast p1, Lgov/nist/javax/sip/header/ims/PServedUser;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 155
    .end local v0    # "psu":Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    :goto_15
    return v1

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getRegistrationState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "regstate"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string v0, "sescase"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRegistrationState(Ljava/lang/String;)V
    .registers 5
    .param p1, "registrationState"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_2a

    .line 70
    const-string v1, "reg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "unreg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 73
    :cond_12
    :try_start_12
    const-string v1, "regstate"

    invoke-virtual {p0, v1, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_17} :catch_18

    .line 94
    :goto_17
    return-void

    .line 74
    :catch_18
    move-exception v0

    .line 75
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_17

    .line 82
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_1d
    :try_start_1d
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "Value can be either reg or unreg"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1d .. :try_end_25} :catch_25

    .line 83
    :catch_25
    move-exception v0

    .line 84
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    goto :goto_17

    .line 91
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_2a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "regstate Parameter value is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSessionCase(Ljava/lang/String;)V
    .registers 5
    .param p1, "sessionCase"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p1, :cond_2a

    .line 100
    const-string v1, "orig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "term"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 103
    :cond_12
    :try_start_12
    const-string v1, "sescase"

    invoke-virtual {p0, v1, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_17} :catch_18

    .line 123
    :goto_17
    return-void

    .line 104
    :catch_18
    move-exception v0

    .line 105
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_17

    .line 111
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_1d
    :try_start_1d
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "Value can be either orig or term"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1d .. :try_end_25} :catch_25

    .line 112
    :catch_25
    move-exception v0

    .line 113
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    goto :goto_17

    .line 120
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_2a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "sess-case Parameter value is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
