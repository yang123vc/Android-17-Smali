.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .registers 2

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCard$State;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    # invokes: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V

    .line 660
    return-void
.end method
