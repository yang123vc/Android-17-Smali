.class Lcom/android/server/wm/WindowManagerService$3;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "finishedCallback"    # Landroid/view/InputQueue$FinishedCallback;

    .prologue
    .line 577
    const/4 v2, 0x0

    .line 579
    .local v2, "handled":Z
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v5, :cond_2f

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "endDrag":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 583
    .local v3, "newX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 585
    .local v4, "newY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_6a

    .line 613
    :goto_1f
    :pswitch_1f
    if-eqz v1, :cond_2e

    .line 616
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_44
    .catchall {:try_start_1 .. :try_end_26} :catchall_4d

    .line 617
    :try_start_26
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 618
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_66

    .line 621
    :cond_2e
    const/4 v2, 0x1

    .line 626
    .end local v1    # "endDrag":Z
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_2f
    :goto_2f
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 628
    return-void

    .line 593
    .restart local v1    # "endDrag":Z
    .restart local v3    # "newX":F
    .restart local v4    # "newY":F
    :pswitch_33
    :try_start_33
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_44
    .catchall {:try_start_33 .. :try_end_38} :catchall_4d

    .line 595
    :try_start_38
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    .line 596
    monitor-exit v6

    goto :goto_1f

    :catchall_41
    move-exception v5

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    :try_start_43
    throw v5
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_4d

    .line 623
    .end local v1    # "endDrag":Z
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :catch_44
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v5, "WindowManager"

    const-string v6, "Exception caught by drag handleMotion"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4d

    goto :goto_2f

    .line 626
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v5

    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v5

    .line 602
    .restart local v1    # "endDrag":Z
    .restart local v3    # "newX":F
    .restart local v4    # "newY":F
    :pswitch_52
    :try_start_52
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_57} :catch_44
    .catchall {:try_start_52 .. :try_end_57} :catchall_4d

    .line 603
    :try_start_57
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v1

    .line 604
    monitor-exit v6

    goto :goto_1f

    :catchall_61
    move-exception v5

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_61

    :try_start_63
    throw v5
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_64} :catch_44
    .catchall {:try_start_63 .. :try_end_64} :catchall_4d

    .line 609
    :pswitch_64
    const/4 v1, 0x1

    goto :goto_1f

    .line 618
    :catchall_66
    move-exception v5

    :try_start_67
    monitor-exit v6
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw v5
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_44
    .catchall {:try_start_68 .. :try_end_69} :catchall_4d

    .line 585
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_52
        :pswitch_33
        :pswitch_64
    .end packed-switch
.end method
