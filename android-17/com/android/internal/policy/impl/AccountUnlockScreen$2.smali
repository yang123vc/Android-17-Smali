.class Lcom/android/internal/policy/impl/AccountUnlockScreen$2;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 285
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 286
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 287
    .local v2, "verified":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # invokes: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$500(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_1c
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_41
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_1c} :catch_57
    .catchall {:try_start_0 .. :try_end_1c} :catchall_6d

    .line 295
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 301
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "verified":Z
    :goto_2a
    return-void

    .line 288
    :catch_2b
    move-exception v0

    .line 289
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    :try_start_2c
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$500(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_6d

    .line 295
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 290
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_41
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    :try_start_42
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$500(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_6d

    .line 295
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :catch_57
    move-exception v0

    .line 293
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    :try_start_58
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$500(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_6d

    .line 295
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catchall_6d
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    # getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v3
.end method
