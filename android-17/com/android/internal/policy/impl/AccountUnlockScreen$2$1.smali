.class Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/AccountUnlockScreen$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$2;)V
    .registers 2

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/AccountUnlockScreen$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/AccountUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # invokes: Lcom/android/internal/policy/impl/AccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$600(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 298
    return-void
.end method
