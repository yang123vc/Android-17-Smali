.class Lcom/android/internal/policy/impl/PhoneWindowManager$21;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V
    .registers 4

    .prologue
    .line 3738
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$visibility:I

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$needsMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3740
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_14

    .line 3741
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 3744
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_2c

    .line 3746
    :try_start_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$visibility:I

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(I)V

    .line 3747
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$needsMenu:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2c} :catch_2d

    .line 3753
    :cond_2c
    :goto_2c
    return-void

    .line 3748
    :catch_2d
    move-exception v0

    .line 3750
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_2c
.end method
