.class public Landroid/net/sip/SipAudioCall$Listener;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipAudioCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 143
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 133
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 123
    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 153
    return-void
.end method

.method public onCalling(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 92
    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 175
    return-void
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .registers 4
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 166
    return-void
.end method

.method public onReadyToCall(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 82
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V
    .registers 3
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 103
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 113
    return-void
.end method
