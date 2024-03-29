.class public abstract Lcom/android/server/wm/InputFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputFilter$Host;,
        Lcom/android/server/wm/InputFilter$H;
    }
.end annotation


# static fields
.field private static final MSG_INPUT_EVENT:I = 0x3

.field private static final MSG_INSTALL:I = 0x1

.field private static final MSG_UNINSTALL:I = 0x2


# instance fields
.field private final mH:Lcom/android/server/wm/InputFilter$H;

.field private mHost:Lcom/android/server/wm/InputFilter$Host;

.field private final mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const-string v2, "InputFilter#InboundInputEventConsistencyVerifier"

    invoke-direct {v0, p0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :goto_12
    iput-object v0, p0, Lcom/android/server/wm/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 110
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    const-string v0, "InputFilter#OutboundInputEventConsistencyVerifier"

    invoke-direct {v1, p0, v3, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :cond_21
    iput-object v1, p0, Lcom/android/server/wm/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 122
    new-instance v0, Lcom/android/server/wm/InputFilter$H;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/InputFilter$H;-><init>(Lcom/android/server/wm/InputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/InputFilter;->mH:Lcom/android/server/wm/InputFilter$H;

    .line 123
    return-void

    :cond_2b
    move-object v0, v1

    .line 105
    goto :goto_12
.end method

.method static synthetic access$002(Lcom/android/server/wm/InputFilter;Lcom/android/server/wm/InputFilter$Host;)Lcom/android/server/wm/InputFilter$Host;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputFilter;
    .param p1, "x1"    # Lcom/android/server/wm/InputFilter$Host;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/wm/InputFilter;->mHost:Lcom/android/server/wm/InputFilter$Host;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputFilter;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputFilter;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method


# virtual methods
.method final filterInputEvent(Landroid/view/InputEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mH:Lcom/android/server/wm/InputFilter$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/wm/InputFilter$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method

.method final install(Lcom/android/server/wm/InputFilter$Host;)V
    .registers 4
    .param p1, "host"    # Lcom/android/server/wm/InputFilter$Host;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mH:Lcom/android/server/wm/InputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputFilter$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 188
    return-void
.end method

.method public onInstalled()V
    .registers 1

    .prologue
    .line 198
    return-void
.end method

.method public onUninstalled()V
    .registers 1

    .prologue
    .line 208
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 161
    if-nez p1, :cond_a

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mHost:Lcom/android/server/wm/InputFilter$Host;

    if-nez v0, :cond_16

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot send input event because the input filter is not installed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_20

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 171
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mHost:Lcom/android/server/wm/InputFilter$Host;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/InputFilter$Host;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 172
    return-void
.end method

.method final uninstall()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/wm/InputFilter;->mH:Lcom/android/server/wm/InputFilter$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputFilter$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method
