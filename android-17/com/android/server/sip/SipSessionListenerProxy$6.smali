.class Lcom/android/server/sip/SipSessionListenerProxy$6;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$newSession:Landroid/net/sip/ISipSession;

.field final synthetic val$sessionDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$newSession:Landroid/net/sip/ISipSession;

    iput-object p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$sessionDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    # getter for: Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$newSession:Landroid/net/sip/ISipSession;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$sessionDescription:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/sip/ISipSessionListener;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 123
    :goto_d
    return-void

    .line 120
    :catch_e
    move-exception v0

    .line 121
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string/jumbo v2, "onCallTransferring()"

    # invokes: Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_d
.end method
