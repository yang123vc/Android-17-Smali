.class Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
.super Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionCallReceiverImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 432
    return-void
.end method

.method private processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I
    .registers 10
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "replaces"    # Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .prologue
    const/16 v4, 0x1e1

    .line 436
    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "callId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 438
    .local v3, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-nez v3, :cond_15

    .line 457
    :cond_14
    :goto_14
    return v4

    .line 442
    :cond_15
    iget-object v1, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 443
    .local v1, "dialog":Ljavax/sip/Dialog;
    if-nez v1, :cond_1c

    const/16 v4, 0x25b

    goto :goto_14

    .line 445
    :cond_1c
    invoke-interface {v1}, Ljavax/sip/Dialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v1}, Ljavax/sip/Dialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 451
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    const-string v6, "Referred-By"

    invoke-interface {v5, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 453
    .local v2, "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljavax/sip/Dialog;->getRemoteParty()Ljavax/sip/address/Address;

    move-result-object v5

    invoke-interface {v2}, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 457
    const/16 v4, 0xc8

    goto :goto_14
.end method

.method private processNewInviteRequest(Ljavax/sip/RequestEvent;)V
    .registers 11
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 462
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    const-string v5, "Replaces"

    invoke-interface {v4, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .line 464
    .local v2, "replaces":Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    const/4 v0, 0x0

    .line 465
    .local v0, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v2, :cond_57

    .line 466
    invoke-direct {p0, p1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I

    move-result v3

    .line 471
    .local v3, "response":I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4d

    .line 472
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 475
    .local v1, "replacedSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v5, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v5}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v6

    # invokes: Lcom/android/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    invoke-static {v4, p1, v5, v6, v8}, Lcom/android/server/sip/SipSessionGroup;->access$400(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0

    .line 479
    iget-object v4, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 492
    .end local v1    # "replacedSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v3    # "response":I
    :goto_45
    if-eqz v0, :cond_4c

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # invokes: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v4, v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 493
    :cond_4c
    return-void

    .line 482
    .restart local v3    # "response":I
    :cond_4d
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    goto :goto_45

    .line 486
    .end local v3    # "response":I
    :cond_57
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->generateTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/sip/SipHelper;->sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;

    move-result-object v6

    # invokes: Lcom/android/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    invoke-static {v4, p1, v5, v6, v8}, Lcom/android/server/sip/SipSessionGroup;->access$400(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0

    .line 489
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v6, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    goto :goto_45
.end method


# virtual methods
.method public process(Ljava/util/EventObject;)Z
    .registers 6
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 496
    # invokes: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$600(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ~~~~~   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mState:I

    invoke-static {v3}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/android/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->access$700(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_3d
    const-string v1, "INVITE"

    # invokes: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 500
    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processNewInviteRequest(Ljavax/sip/RequestEvent;)V

    .line 506
    :goto_4a
    return v0

    .line 502
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_4b
    const-string v1, "OPTIONS"

    # invokes: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 503
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1    # "evt":Ljava/util/EventObject;
    const/16 v2, 0xc8

    invoke-virtual {v1, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    goto :goto_4a

    .line 506
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_61
    const/4 v0, 0x0

    goto :goto_4a
.end method
