.class public final Lgov/nist/javax/sip/message/SIPResponse;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPResponse.java"

# interfaces
.implements Lgov/nist/javax/sip/message/ResponseExt;
.implements Ljavax/sip/message/Response;


# instance fields
.field protected statusLine:Lgov/nist/javax/sip/header/StatusLine;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 380
    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    .line 381
    return-void
.end method

.method public static getReasonPhrase(I)Ljava/lang/String;
    .registers 2
    .param p0, "rc"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "retval":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_b2

    .line 294
    const-string v0, "Unknown Status"

    .line 297
    :goto_6
    return-object v0

    .line 81
    :sswitch_7
    const-string v0, "Trying"

    .line 82
    goto :goto_6

    .line 85
    :sswitch_a
    const-string v0, "Ringing"

    .line 86
    goto :goto_6

    .line 89
    :sswitch_d
    const-string v0, "Call is being forwarded"

    .line 90
    goto :goto_6

    .line 93
    :sswitch_10
    const-string v0, "Queued"

    .line 94
    goto :goto_6

    .line 97
    :sswitch_13
    const-string v0, "Session progress"

    .line 98
    goto :goto_6

    .line 101
    :sswitch_16
    const-string v0, "OK"

    .line 102
    goto :goto_6

    .line 105
    :sswitch_19
    const-string v0, "Accepted"

    .line 106
    goto :goto_6

    .line 109
    :sswitch_1c
    const-string v0, "Multiple choices"

    .line 110
    goto :goto_6

    .line 113
    :sswitch_1f
    const-string v0, "Moved permanently"

    .line 114
    goto :goto_6

    .line 117
    :sswitch_22
    const-string v0, "Moved Temporarily"

    .line 118
    goto :goto_6

    .line 121
    :sswitch_25
    const-string v0, "Use proxy"

    .line 122
    goto :goto_6

    .line 125
    :sswitch_28
    const-string v0, "Alternative service"

    .line 126
    goto :goto_6

    .line 129
    :sswitch_2b
    const-string v0, "Bad request"

    .line 130
    goto :goto_6

    .line 133
    :sswitch_2e
    const-string v0, "Unauthorized"

    .line 134
    goto :goto_6

    .line 137
    :sswitch_31
    const-string v0, "Payment required"

    .line 138
    goto :goto_6

    .line 141
    :sswitch_34
    const-string v0, "Forbidden"

    .line 142
    goto :goto_6

    .line 145
    :sswitch_37
    const-string v0, "Not found"

    .line 146
    goto :goto_6

    .line 149
    :sswitch_3a
    const-string v0, "Method not allowed"

    .line 150
    goto :goto_6

    .line 153
    :sswitch_3d
    const-string v0, "Not acceptable"

    .line 154
    goto :goto_6

    .line 157
    :sswitch_40
    const-string v0, "Proxy Authentication required"

    .line 158
    goto :goto_6

    .line 161
    :sswitch_43
    const-string v0, "Request timeout"

    .line 162
    goto :goto_6

    .line 165
    :sswitch_46
    const-string v0, "Gone"

    .line 166
    goto :goto_6

    .line 169
    :sswitch_49
    const-string v0, "Temporarily Unavailable"

    .line 170
    goto :goto_6

    .line 173
    :sswitch_4c
    const-string v0, "Request entity too large"

    .line 174
    goto :goto_6

    .line 177
    :sswitch_4f
    const-string v0, "Request-URI too large"

    .line 178
    goto :goto_6

    .line 181
    :sswitch_52
    const-string v0, "Unsupported media type"

    .line 182
    goto :goto_6

    .line 185
    :sswitch_55
    const-string v0, "Unsupported URI Scheme"

    .line 186
    goto :goto_6

    .line 189
    :sswitch_58
    const-string v0, "Bad extension"

    .line 190
    goto :goto_6

    .line 193
    :sswitch_5b
    const-string v0, "Etension Required"

    .line 194
    goto :goto_6

    .line 197
    :sswitch_5e
    const-string v0, "Interval too brief"

    .line 198
    goto :goto_6

    .line 201
    :sswitch_61
    const-string v0, "Call leg/Transaction does not exist"

    .line 202
    goto :goto_6

    .line 205
    :sswitch_64
    const-string v0, "Loop detected"

    .line 206
    goto :goto_6

    .line 209
    :sswitch_67
    const-string v0, "Too many hops"

    .line 210
    goto :goto_6

    .line 213
    :sswitch_6a
    const-string v0, "Address incomplete"

    .line 214
    goto :goto_6

    .line 217
    :sswitch_6d
    const-string v0, "Ambiguous"

    .line 218
    goto :goto_6

    .line 221
    :sswitch_70
    const-string v0, "Busy here"

    .line 222
    goto :goto_6

    .line 225
    :sswitch_73
    const-string v0, "Request Terminated"

    .line 226
    goto :goto_6

    .line 230
    :sswitch_76
    const-string v0, "Not Acceptable here"

    .line 231
    goto :goto_6

    .line 234
    :sswitch_79
    const-string v0, "Bad Event"

    .line 235
    goto :goto_6

    .line 238
    :sswitch_7c
    const-string v0, "Request Pending"

    .line 239
    goto :goto_6

    .line 242
    :sswitch_7f
    const-string v0, "Server Internal Error"

    .line 243
    goto :goto_6

    .line 246
    :sswitch_82
    const-string v0, "Undecipherable"

    .line 247
    goto :goto_6

    .line 250
    :sswitch_85
    const-string v0, "Not implemented"

    .line 251
    goto/16 :goto_6

    .line 254
    :sswitch_89
    const-string v0, "Bad gateway"

    .line 255
    goto/16 :goto_6

    .line 258
    :sswitch_8d
    const-string v0, "Service unavailable"

    .line 259
    goto/16 :goto_6

    .line 262
    :sswitch_91
    const-string v0, "Gateway timeout"

    .line 263
    goto/16 :goto_6

    .line 266
    :sswitch_95
    const-string v0, "SIP version not supported"

    .line 267
    goto/16 :goto_6

    .line 270
    :sswitch_99
    const-string v0, "Message Too Large"

    .line 271
    goto/16 :goto_6

    .line 274
    :sswitch_9d
    const-string v0, "Busy everywhere"

    .line 275
    goto/16 :goto_6

    .line 278
    :sswitch_a1
    const-string v0, "Decline"

    .line 279
    goto/16 :goto_6

    .line 282
    :sswitch_a5
    const-string v0, "Does not exist anywhere"

    .line 283
    goto/16 :goto_6

    .line 286
    :sswitch_a9
    const-string v0, "Session Not acceptable"

    .line 287
    goto/16 :goto_6

    .line 290
    :sswitch_ad
    const-string v0, "Conditional request failed"

    .line 291
    goto/16 :goto_6

    .line 78
    nop

    :sswitch_data_b2
    .sparse-switch
        0x64 -> :sswitch_7
        0xb4 -> :sswitch_a
        0xb5 -> :sswitch_d
        0xb6 -> :sswitch_10
        0xb7 -> :sswitch_13
        0xc8 -> :sswitch_16
        0xca -> :sswitch_19
        0x12c -> :sswitch_1c
        0x12d -> :sswitch_1f
        0x12e -> :sswitch_22
        0x131 -> :sswitch_25
        0x17c -> :sswitch_28
        0x190 -> :sswitch_2b
        0x191 -> :sswitch_2e
        0x192 -> :sswitch_31
        0x193 -> :sswitch_34
        0x194 -> :sswitch_37
        0x195 -> :sswitch_3a
        0x196 -> :sswitch_3d
        0x197 -> :sswitch_40
        0x198 -> :sswitch_43
        0x19a -> :sswitch_46
        0x19c -> :sswitch_ad
        0x19d -> :sswitch_4c
        0x19e -> :sswitch_4f
        0x19f -> :sswitch_52
        0x1a0 -> :sswitch_55
        0x1a4 -> :sswitch_58
        0x1a5 -> :sswitch_5b
        0x1a7 -> :sswitch_5e
        0x1e0 -> :sswitch_49
        0x1e1 -> :sswitch_61
        0x1e2 -> :sswitch_64
        0x1e3 -> :sswitch_67
        0x1e4 -> :sswitch_6a
        0x1e5 -> :sswitch_6d
        0x1e6 -> :sswitch_70
        0x1e7 -> :sswitch_73
        0x1e8 -> :sswitch_76
        0x1e9 -> :sswitch_79
        0x1eb -> :sswitch_7c
        0x1ed -> :sswitch_82
        0x1f4 -> :sswitch_7f
        0x1f5 -> :sswitch_85
        0x1f6 -> :sswitch_89
        0x1f7 -> :sswitch_8d
        0x1f8 -> :sswitch_91
        0x1f9 -> :sswitch_95
        0x201 -> :sswitch_99
        0x258 -> :sswitch_9d
        0x25b -> :sswitch_a1
        0x25c -> :sswitch_a5
        0x25e -> :sswitch_a9
    .end sparse-switch
.end method

.method public static isFinalResponse(I)Z
    .registers 2
    .param p0, "rc"    # I

    .prologue
    .line 359
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V
    .registers 7
    .param p1, "via"    # Lgov/nist/javax/sip/header/Via;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string v2, "ACK"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 629
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1e

    .line 630
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "branch":Ljava/lang/String;
    :goto_1a
    :try_start_1a
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_1d} :catch_38

    .line 643
    .end local v0    # "branch":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void

    .line 632
    :cond_1e
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "branch":Ljava/lang/String;
    goto :goto_1a

    .line 634
    .end local v0    # "branch":Ljava/lang/String;
    :cond_27
    const-string v2, "CANCEL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 635
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "branch":Ljava/lang/String;
    goto :goto_1a

    .line 640
    :catch_38
    move-exception v1

    .line 641
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1d
.end method


# virtual methods
.method public checkHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 408
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    if-nez v0, :cond_f

    .line 409
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "CSeq Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 411
    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 412
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "To Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 414
    :cond_1d
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 415
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "From Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 417
    :cond_2b
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    if-nez v0, :cond_39

    .line 418
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Via Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 420
    :cond_39
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    if-nez v0, :cond_47

    .line 421
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Call-ID Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 425
    :cond_47
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2bb

    if-le v0, v1, :cond_6c

    .line 426
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 429
    :cond_6c
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 481
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 482
    .local v0, "retval":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_14

    .line 483
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/StatusLine;

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 484
    :cond_14
    return-object v0
.end method

.method public createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 13
    .param p1, "requestURI"    # Lgov/nist/javax/sip/address/SipUri;
    .param p2, "via"    # Lgov/nist/javax/sip/header/Via;
    .param p3, "cseq"    # Lgov/nist/javax/sip/header/CSeq;
    .param p4, "from"    # Lgov/nist/javax/sip/header/From;
    .param p5, "to"    # Lgov/nist/javax/sip/header/To;

    .prologue
    .line 683
    new-instance v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 684
    .local v3, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p3}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 688
    invoke-direct {p0, p2, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 690
    invoke-virtual {v3, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 691
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getHeaders()Ljava/util/Iterator;

    move-result-object v1

    .line 692
    .local v1, "headerIterator":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 693
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 695
    .local v4, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-static {v4}, Lgov/nist/javax/sip/message/SIPMessage;->isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v5

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/ViaList;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/CSeq;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentType;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/RecordRouteList;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/RequireList;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContactList;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v5, :cond_1c

    instance-of v5, v4, Ljavax/sip/header/ServerHeader;

    if-nez v5, :cond_1c

    instance-of v5, v4, Ljavax/sip/header/ReasonHeader;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    if-nez v5, :cond_1c

    instance-of v5, v4, Lgov/nist/javax/sip/header/ReasonList;

    if-nez v5, :cond_1c

    .line 710
    instance-of v5, v4, Lgov/nist/javax/sip/header/To;

    if-eqz v5, :cond_6d

    .line 711
    move-object v4, p5

    .line 715
    :cond_63
    :goto_63
    const/4 v5, 0x0

    :try_start_64
    invoke-virtual {v3, v4, v5}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_67
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_1c

    .line 716
    :catch_68
    move-exception v0

    .line 718
    .local v0, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_1c

    .line 712
    .end local v0    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_6d
    instance-of v5, v4, Lgov/nist/javax/sip/header/From;

    if-eqz v5, :cond_63

    .line 713
    move-object v4, p4

    goto :goto_63

    .line 724
    .end local v4    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_73
    :try_start_73
    new-instance v5, Lgov/nist/javax/sip/header/MaxForwards;

    const/16 v6, 0x46

    invoke-direct {v5, v6}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7e} :catch_8c

    .line 729
    :goto_7e
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v5

    if-eqz v5, :cond_8b

    .line 730
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 732
    :cond_8b
    return-object v3

    .line 725
    :catch_8c
    move-exception v5

    goto :goto_7e
.end method

.method public debugDump()Ljava/lang/String;
    .registers 3

    .prologue
    .line 391
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "superstring":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->stringRepresentation:Ljava/lang/String;

    .line 393
    const-class v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 394
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_23

    .line 396
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->debugDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 398
    :cond_23
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 399
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public encode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 438
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_20

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "retval":Ljava/lang/String;
    :goto_1f
    return-object v0

    .line 441
    .end local v0    # "retval":Ljava/lang/String;
    :cond_20
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_1f
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .registers 9
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 534
    const/4 v2, 0x0

    .line 535
    .local v2, "slbytes":[B
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v4, :cond_12

    .line 537
    :try_start_6
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_11} :catch_25

    move-result-object v2

    .line 542
    :cond_12
    :goto_12
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 543
    .local v3, "superbytes":[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 544
    .local v1, "retval":[B
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    array-length v4, v2

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    return-object v1

    .line 538
    .end local v1    # "retval":[B
    .end local v3    # "superbytes":[B
    :catch_25
    move-exception v0

    .line 539
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method public encodeMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 452
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_20

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "retval":Ljava/lang/String;
    :goto_1f
    return-object v0

    .line 455
    .end local v0    # "retval":Ljava/lang/String;
    :cond_20
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_1f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 496
    :cond_f
    :goto_f
    return v1

    :cond_10
    move-object v0, p1

    .line 495
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 496
    .local v0, "that":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    iget-object v3, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/StatusLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    goto :goto_f
.end method

.method public getDialogId(Z)Ljava/lang/String;
    .registers 7
    .param p1, "isServer"    # Z

    .prologue
    .line 559
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 560
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 561
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/To;

    .line 562
    .local v3, "to":Lgov/nist/javax/sip/header/To;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 563
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-nez p1, :cond_4a

    .line 565
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 566
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    :cond_2f
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 571
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    :cond_41
    :goto_41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 576
    :cond_4a
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 577
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    :cond_5c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 582
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41
.end method

.method public getDialogId(ZLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "isServer"    # Z
    .param p2, "toTag"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 591
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 592
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 593
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-nez p1, :cond_3c

    .line 595
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 596
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_29
    if-eqz p2, :cond_33

    .line 601
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    :cond_33
    :goto_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 606
    :cond_3c
    if-eqz p2, :cond_46

    .line 607
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    :cond_46
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 612
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33
.end method

.method public getFirstLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_6

    .line 654
    const/4 v0, 0x0

    .line 656
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .registers 3

    .prologue
    .line 467
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    move-result-object v0

    .line 469
    .local v0, "retval":Ljava/util/LinkedList;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_11

    .line 470
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 471
    :cond_11
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 349
    :cond_c
    const-string v0, ""

    .line 351
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getSIPVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getSipVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lgov/nist/javax/sip/header/StatusLine;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    return-object v0
.end method

.method public isFinalResponse()Z
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse(I)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "matchObj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 505
    if-nez p1, :cond_5

    .line 520
    :cond_4
    :goto_4
    return v2

    .line 507
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move v2, v3

    .line 508
    goto :goto_4

    .line 509
    :cond_15
    if-eq p1, p0, :cond_4

    move-object v1, p1

    .line 511
    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 513
    .local v1, "that":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v0, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 514
    .local v0, "rline":Lgov/nist/javax/sip/header/StatusLine;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v4, :cond_24

    if-eqz v0, :cond_24

    move v2, v3

    .line 515
    goto :goto_4

    .line 516
    :cond_24
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-ne v4, v0, :cond_2d

    .line 517
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 520
    :cond_2d
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    iget-object v5, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/StatusLine;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3d
    move v2, v3

    goto :goto_4
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 4
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 337
    if-nez p1, :cond_a

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad reason phrase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_15

    .line 340
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 341
    :cond_15
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public setSIPVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "sipVersion"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public setStatusCode(I)V
    .registers 5
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 310
    const/16 v0, 0x64

    if-lt p1, v0, :cond_8

    const/16 v0, 0x2bb

    if-le p1, v0, :cond_11

    .line 311
    :cond_8
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad status code"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 312
    :cond_11
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_1c

    .line 313
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 314
    :cond_1c
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 315
    return-void
.end method

.method public setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    .registers 2
    .param p1, "sl"    # Lgov/nist/javax/sip/header/StatusLine;

    .prologue
    .line 374
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 668
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_7

    const-string v0, ""

    .line 669
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
