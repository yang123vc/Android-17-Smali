.class Lcom/android/commands/pm/Pm$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field result:I

.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .registers 2

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/commands/pm/Pm$PackageInstallObserver;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 657
    monitor-enter p0

    .line 658
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$PackageInstallObserver;->finished:Z

    .line 659
    iput p2, p0, Lcom/android/commands/pm/Pm$PackageInstallObserver;->result:I

    .line 660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 661
    monitor-exit p0

    .line 662
    return-void

    .line 661
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
