.class Landroid/view/Window$LocalWindowManager;
.super Landroid/view/WindowManagerImpl$CompatModeWrapper;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalWindowManager"
.end annotation


# static fields
.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"


# instance fields
.field private final mHardwareAccelerated:Z

.field final synthetic this$0:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/WindowManager;Z)V
    .registers 6
    .param p2, "wm"    # Landroid/view/WindowManager;
    .param p3, "hardwareAccelerated"    # Z

    .prologue
    const/4 v0, 0x0

    .line 480
    iput-object p1, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    .line 481
    # getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/Window;->getCompatInfo(Landroid/content/Context;)Landroid/view/CompatibilityInfoHolder;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    .line 482
    if-nez p3, :cond_19

    const-string/jumbo v1, "persist.sys.ui.hw"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    iput-boolean v0, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    .line 484
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v6, 0x3e8

    .line 492
    move-object v3, p2

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 493
    .local v3, "wp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 494
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v4, v6, :cond_a5

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v4, v5, :cond_a5

    .line 496
    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v4, :cond_25

    .line 497
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 498
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_25

    .line 499
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 502
    .end local v1    # "decor":Landroid/view/View;
    :cond_25
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5d

    .line 504
    :cond_2d
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_7c

    .line 505
    const-string v2, "Media"

    .line 517
    .local v2, "title":Ljava/lang/String;
    :goto_35
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v4}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5a

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_5a
    invoke-virtual {v3, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 531
    .end local v2    # "title":Ljava/lang/String;
    :cond_5d
    :goto_5d
    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v4, :cond_6d

    .line 532
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 534
    :cond_6d
    iget-boolean v4, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    if-eqz v4, :cond_78

    .line 535
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 537
    :cond_78
    invoke-super {p0, p1, p2}, Landroid/view/WindowManagerImpl$CompatModeWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    return-void

    .line 506
    :cond_7c
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ec

    if-ne v4, v5, :cond_85

    .line 507
    const-string v2, "MediaOvr"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_35

    .line 508
    .end local v2    # "title":Ljava/lang/String;
    :cond_85
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v6, :cond_8c

    .line 509
    const-string v2, "Panel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_35

    .line 510
    .end local v2    # "title":Ljava/lang/String;
    :cond_8c
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_95

    .line 511
    const-string v2, "SubPanel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_35

    .line 512
    .end local v2    # "title":Ljava/lang/String;
    :cond_95
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3eb

    if-ne v4, v5, :cond_9e

    .line 513
    const-string v2, "AtchDlg"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_35

    .line 515
    .end local v2    # "title":Ljava/lang/String;
    :cond_9e
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_35

    .line 523
    .end local v2    # "title":Ljava/lang/String;
    :cond_a5
    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v4, :cond_b9

    .line 524
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v4}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_d3

    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v4

    :goto_b7
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 526
    :cond_b9
    if-eqz v0, :cond_c1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5d

    :cond_c1
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v4}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 528
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v4}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 524
    :cond_d3
    iget-object v4, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    # getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v4}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v4

    # getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v4

    goto :goto_b7
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    return v0
.end method
