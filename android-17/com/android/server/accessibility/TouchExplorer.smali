.class public Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityInputFilter$Explorer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$1;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    }
.end annotation


# static fields
.field private static final ACTIVATION_TIME_SLOP:J = 0x7d0L

.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DELAY_SEND_HOVER_ENTER:J = 0xc8L

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG_INJECTED:Ljava/lang/String; = "TouchExplorer-INJECTED"

.field private static final LOG_TAG_RECEIVED:Ljava/lang/String; = "TouchExplorer-RECEIVED"

.field private static final LOG_TAG_STATE:Ljava/lang/String; = "TouchExplorer-STATE"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCurrentState:I

.field private mDraggingPointerId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInputFilter:Lcom/android/server/wm/InputFilter;

.field private mLastTouchExploreEvent:Landroid/view/MotionEvent;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private final mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

.field private final mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

.field private final mTempPointerIds:[I

.field private final mTouchExplorationTapSlop:I

.field private mTouchExploreGestureInProgress:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputFilter;Landroid/content/Context;)V
    .registers 6
    .param p1, "inputFilter"    # Lcom/android/server/wm/InputFilter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 142
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 143
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchExplorationTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    .line 145
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    .line 148
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    .line 149
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 150
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/accessibility/TouchExplorer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private computeInjectionAction(II)I
    .registers 6
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 730
    sparse-switch p1, :sswitch_data_24

    .line 753
    .end local p1    # "actionMasked":I
    :goto_4
    return p1

    .line 733
    .restart local p1    # "actionMasked":I
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 735
    .local v0, "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_f

    .line 736
    const/4 p1, 0x0

    goto :goto_4

    .line 738
    :cond_f
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_4

    .line 743
    .end local v0    # "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    :sswitch_14
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 745
    .restart local v0    # "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move p1, v1

    .line 746
    goto :goto_4

    .line 748
    :cond_1e
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_4

    .line 730
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method private ensureHoverExitSent(Landroid/view/MotionEvent;II)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "pointerIdBits"    # I
    .param p3, "policyFlags"    # I

    .prologue
    const/16 v2, 0xa

    .line 593
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v0

    .line 594
    .local v0, "lastAction":I
    if-eq v0, v2, :cond_d

    .line 595
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 598
    :cond_d
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 849
    packed-switch p0, :pswitch_data_26

    .line 857
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :pswitch_1c
    const-string v0, "STATE_TOUCH_EXPLORING"

    .line 855
    :goto_1e
    return-object v0

    .line 853
    :pswitch_1f
    const-string v0, "STATE_DRAGGING"

    goto :goto_1e

    .line 855
    :pswitch_22
    const-string v0, "STATE_DELEGATING"

    goto :goto_1e

    .line 849
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_3
        :pswitch_22
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_36

    .line 545
    :cond_8
    :goto_8
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V

    .line 546
    return-void

    .line 519
    :pswitch_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :pswitch_14
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_8

    .line 528
    :pswitch_17
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getNotInjectedActivePointerCount()I

    move-result v0

    .line 529
    .local v0, "notInjectedCount":I
    if-lez v0, :cond_8

    .line 530
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 531
    .local v1, "prototype":Landroid/view/MotionEvent;
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_8

    .line 536
    .end local v0    # "notInjectedCount":I
    .end local v1    # "prototype":Landroid/view/MotionEvent;
    :pswitch_27
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 537
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_8

    .line 541
    :pswitch_32
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto :goto_8

    .line 517
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
        :pswitch_17
        :pswitch_32
        :pswitch_8
        :pswitch_8
        :pswitch_27
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 444
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v1, v3, v2

    .line 445
    .local v1, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_5c

    .line 508
    :goto_d
    :pswitch_d
    return-void

    .line 447
    :pswitch_e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Dragging state can be reached only if two pointers are already down"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :pswitch_16
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 454
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_d

    .line 458
    :pswitch_1f
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v0

    .line 459
    .local v0, "activePointerCount":I
    packed-switch v0, :pswitch_data_6e

    .line 480
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 482
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_d

    .line 464
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 466
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_d

    .line 471
    :cond_3c
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 473
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_d

    .line 490
    .end local v0    # "activePointerCount":I
    :pswitch_45
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v0

    .line 491
    .restart local v0    # "activePointerCount":I
    packed-switch v0, :pswitch_data_76

    .line 497
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_d

    .line 494
    :pswitch_51
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_d

    .line 502
    .end local v0    # "activePointerCount":I
    :pswitch_55
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_d

    .line 505
    :pswitch_58
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto :goto_d

    .line 445
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_55
        :pswitch_1f
        :pswitch_58
        :pswitch_d
        :pswitch_16
        :pswitch_45
    .end packed-switch

    .line 459
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_31
    .end packed-switch

    .line 491
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_51
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;I)V
    .registers 35
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    move-object/from16 v31, v0

    .line 194
    .local v31, "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v10

    .line 196
    .local v10, "activePointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_37c

    .line 435
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 199
    :pswitch_12
    packed-switch v10, :pswitch_data_38e

    goto :goto_11

    .line 201
    :pswitch_16
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The must always be one active pointer intouch exploring state!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 208
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    .line 209
    .local v29, "pointerId":I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 210
    .local v6, "pointerIdBits":I
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v22

    .line 214
    .local v22, "lastAction":I
    const/16 v3, 0xa

    move/from16 v0, v22

    if-ne v0, v3, :cond_66

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    const/16 v5, 0x9

    const-wide/16 v8, 0xc8

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->post(Landroid/view/MotionEvent;IIIJ)V

    .line 222
    :goto_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_11

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v3, v4, :cond_71

    .line 229
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto :goto_11

    .line 218
    :cond_66
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_4c

    .line 234
    :cond_71
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v27

    .line 236
    .local v27, "pointerDownTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v23

    .line 237
    .local v23, "lastExploreTime":J
    sub-long v14, v27, v23

    .line 238
    .local v14, "deltaTimeExplore":J
    const-wide/16 v3, 0x7d0

    cmp-long v3, v14, v3

    if-gtz v3, :cond_11

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;IJ)V

    goto/16 :goto_11

    .line 250
    .end local v6    # "pointerIdBits":I
    .end local v14    # "deltaTimeExplore":J
    .end local v22    # "lastAction":I
    .end local v23    # "lastExploreTime":J
    .end local v27    # "pointerDownTime":J
    .end local v29    # "pointerId":I
    :pswitch_9b
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    .line 251
    .restart local v29    # "pointerId":I
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v30

    .line 252
    .local v30, "pointerIndex":I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 253
    .restart local v6    # "pointerIdBits":I
    packed-switch v10, :pswitch_data_396

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 345
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_e2

    .line 348
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 349
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 351
    :cond_e2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 352
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_11

    .line 260
    :pswitch_ec
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-nez v3, :cond_1c8

    .line 261
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    .line 263
    .local v16, "deltaX":F
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    .line 265
    .local v17, "deltaY":F
    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v25

    .line 267
    .local v25, "moveDelta":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-double v3, v3

    cmpl-double v3, v25, v3

    if-lez v3, :cond_166

    .line 268
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 269
    const/16 v3, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v22

    .line 276
    .restart local v22    # "lastAction":I
    const/16 v3, 0xa

    move/from16 v0, v22

    if-ne v0, v3, :cond_15c

    .line 277
    const/16 v3, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 280
    :cond_15c
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 290
    .end local v16    # "deltaX":F
    .end local v17    # "deltaY":F
    .end local v22    # "lastAction":I
    .end local v25    # "moveDelta":D
    :cond_166
    :goto_166
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPenidng()Z
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    .line 296
    .restart local v16    # "deltaX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    .line 298
    .restart local v17    # "deltaY":F
    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v25, v0

    .line 299
    .local v25, "moveDelta":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-float v3, v3

    cmpl-float v3, v25, v3

    if-lez v3, :cond_11

    .line 300
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    goto/16 :goto_11

    .line 285
    .end local v16    # "deltaX":F
    .end local v17    # "deltaY":F
    .end local v25    # "moveDelta":F
    :cond_1c8
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_166

    .line 307
    :pswitch_1d3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 313
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_21e

    .line 316
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 317
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_207

    .line 318
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 319
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 321
    :cond_207
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 322
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 323
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_11

    .line 327
    :cond_21e
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 329
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_23c

    .line 330
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 331
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 333
    :cond_23c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 334
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_11

    .line 358
    .end local v6    # "pointerIdBits":I
    .end local v29    # "pointerId":I
    .end local v30    # "pointerIndex":I
    :pswitch_246
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastReceivedUpPointerId()I

    move-result v29

    .line 359
    .restart local v29    # "pointerId":I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 360
    .restart local v6    # "pointerIdBits":I
    packed-switch v10, :pswitch_data_3a0

    goto/16 :goto_11

    .line 363
    :pswitch_252
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_28b

    .line 372
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 375
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 376
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_11

    .line 381
    :cond_28b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_33f

    .line 383
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastReceivedUpPointerDownTime()J

    move-result-wide v18

    .line 385
    .local v18, "eventTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 386
    .local v20, "exploreTime":J
    sub-long v12, v18, v20

    .line 387
    .local v12, "deltaTime":J
    const-wide/16 v3, 0x7d0

    cmp-long v3, v12, v3

    if-lez v3, :cond_2bf

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 390
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_11

    .line 395
    :cond_2bf
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v30

    .line 396
    .restart local v30    # "pointerIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    .line 398
    .restart local v16    # "deltaX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    .line 400
    .restart local v17    # "deltaY":F
    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v11, v3

    .line 401
    .local v11, "deltaMove":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_31d

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 404
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_11

    .line 412
    :cond_31d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;I)V

    .line 417
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_11

    .line 419
    .end local v11    # "deltaMove":F
    .end local v12    # "deltaTime":J
    .end local v16    # "deltaX":F
    .end local v17    # "deltaY":F
    .end local v18    # "eventTime":J
    .end local v20    # "exploreTime":J
    .end local v30    # "pointerIndex":I
    :cond_33f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 421
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_11

    .line 427
    .end local v6    # "pointerIdBits":I
    .end local v29    # "pointerId":I
    :pswitch_359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 429
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    .line 430
    .restart local v29    # "pointerId":I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 431
    .restart local v6    # "pointerIdBits":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto/16 :goto_11

    .line 196
    :pswitch_data_37c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_246
        :pswitch_9b
        :pswitch_359
        :pswitch_11
        :pswitch_12
        :pswitch_246
    .end packed-switch

    .line 199
    :pswitch_data_38e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1e
    .end packed-switch

    .line 253
    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_11
        :pswitch_ec
        :pswitch_1d3
    .end packed-switch

    .line 360
    :pswitch_data_3a0
    .packed-switch 0x0
        :pswitch_252
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 764
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 765
    .local v12, "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    .line 766
    .local v11, "pointerIds":[I
    invoke-virtual {v12, v11}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->populateActivePointerIds([I)V

    .line 768
    const/16 v21, 0x0

    aget v21, v11, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 769
    .local v6, "firstPtrIndex":I
    const/16 v21, 0x1

    aget v21, v11, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 771
    .local v16, "secondPtrIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 772
    .local v7, "firstPtrX":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 773
    .local v8, "firstPtrY":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 774
    .local v17, "secondPtrX":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 777
    .local v18, "secondPtrY":F
    invoke-virtual {v12, v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v21

    sub-float v3, v7, v21

    .line 779
    .local v3, "firstDeltaX":F
    invoke-virtual {v12, v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v21

    sub-float v4, v8, v21

    .line 782
    .local v4, "firstDeltaY":F
    const/16 v21, 0x0

    cmpl-float v21, v3, v21

    if-nez v21, :cond_5a

    const/16 v21, 0x0

    cmpl-float v21, v4, v21

    if-nez v21, :cond_5a

    .line 783
    const/16 v21, 0x1

    .line 816
    :goto_59
    return v21

    .line 786
    :cond_5a
    mul-float v21, v3, v3

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v5, v0

    .line 788
    .local v5, "firstMagnitude":F
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-lez v21, :cond_9b

    div-float v9, v3, v5

    .line 790
    .local v9, "firstXNormalized":F
    :goto_74
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-lez v21, :cond_9d

    div-float v10, v4, v5

    .line 793
    .local v10, "firstYNormalized":F
    :goto_7c
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v21

    sub-float v13, v17, v21

    .line 795
    .local v13, "secondDeltaX":F
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v21

    sub-float v14, v18, v21

    .line 798
    .local v14, "secondDeltaY":F
    const/16 v21, 0x0

    cmpl-float v21, v13, v21

    if-nez v21, :cond_9f

    const/16 v21, 0x0

    cmpl-float v21, v14, v21

    if-nez v21, :cond_9f

    .line 799
    const/16 v21, 0x1

    goto :goto_59

    .end local v9    # "firstXNormalized":F
    .end local v10    # "firstYNormalized":F
    .end local v13    # "secondDeltaX":F
    .end local v14    # "secondDeltaY":F
    :cond_9b
    move v9, v3

    .line 788
    goto :goto_74

    .restart local v9    # "firstXNormalized":F
    :cond_9d
    move v10, v4

    .line 790
    goto :goto_7c

    .line 802
    .restart local v10    # "firstYNormalized":F
    .restart local v13    # "secondDeltaX":F
    .restart local v14    # "secondDeltaY":F
    :cond_9f
    mul-float v21, v13, v13

    mul-float v22, v14, v14

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v15, v0

    .line 804
    .local v15, "secondMagnitude":F
    const/16 v21, 0x0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_d1

    div-float v19, v13, v15

    .line 806
    .local v19, "secondXNormalized":F
    :goto_b9
    const/16 v21, 0x0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_d4

    div-float v20, v14, v15

    .line 809
    .local v20, "secondYNormalized":F
    :goto_c1
    mul-float v21, v9, v19

    mul-float v22, v10, v20

    add-float v2, v21, v22

    .line 812
    .local v2, "angleCos":F
    const v21, 0x3f067b80

    cmpg-float v21, v2, v21

    if-gez v21, :cond_d7

    .line 813
    const/16 v21, 0x0

    goto :goto_59

    .end local v2    # "angleCos":F
    .end local v19    # "secondXNormalized":F
    .end local v20    # "secondYNormalized":F
    :cond_d1
    move/from16 v19, v13

    .line 804
    goto :goto_b9

    .restart local v19    # "secondXNormalized":F
    :cond_d4
    move/from16 v20, v14

    .line 806
    goto :goto_c1

    .line 816
    .restart local v2    # "angleCos":F
    .restart local v20    # "secondYNormalized":F
    :cond_d7
    const/16 v21, 0x1

    goto :goto_59
.end method

.method private sendAccessibilityEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .prologue
    .line 825
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 826
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 827
    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 677
    .local v0, "pointerId":I
    shl-int v1, v3, v0

    .line 678
    .local v1, "pointerIdBits":I
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 679
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 680
    return-void
.end method

.method private sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x1

    .line 556
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 557
    .local v5, "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    const/4 v4, 0x0

    .line 558
    .local v4, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 561
    .local v2, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1b

    .line 562
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 563
    .local v3, "pointerId":I
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 564
    shl-int v6, v7, v3

    or-int/2addr v4, v6

    .line 561
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 569
    .end local v3    # "pointerId":I
    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v2, :cond_3d

    .line 570
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 572
    .restart local v3    # "pointerId":I
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 569
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 576
    :cond_2b
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_28

    .line 579
    shl-int v6, v7, v3

    or-int/2addr v4, v6

    .line 580
    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 581
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_28

    .line 583
    .end local v0    # "action":I
    .end local v3    # "pointerId":I
    :cond_3d
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .registers 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    .line 692
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_24

    .line 696
    move-object v0, p1

    .line 700
    :goto_8
    if-nez p2, :cond_29

    .line 701
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 712
    :goto_11
    const/high16 v1, 0x40000000

    or-int/2addr p4, v1

    .line 713
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    .line 714
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInputFilter:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/wm/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 716
    if-eq v0, p1, :cond_23

    .line 717
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 719
    :cond_23
    return-void

    .line 698
    :cond_24
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_8

    .line 703
    :cond_29
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_11
.end method

.method private sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V
    .registers 12
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 630
    iget-object v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 633
    .local v6, "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v8

    if-ne v7, v8, :cond_15

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {p0, p1, v7, v8, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 666
    :cond_14
    :goto_14
    return-void

    .line 640
    :cond_15
    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v7

    if-nez v7, :cond_21

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 647
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 648
    .local v0, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 649
    .local v1, "actionPointerId":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_36

    .line 650
    # invokes: Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z
    invoke-static {v6, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 657
    :cond_36
    const/4 v4, 0x0

    .line 658
    .local v4, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 659
    .local v2, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "pointerIndex":I
    :goto_3c
    if-ge v5, v2, :cond_4e

    .line 660
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 661
    .local v3, "pointerId":I
    # invokes: Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z
    invoke-static {v6, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 662
    const/4 v7, 0x1

    shl-int/2addr v7, v3

    or-int/2addr v4, v7

    .line 659
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 665
    .end local v3    # "pointerId":I
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-direct {p0, p1, v7, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_14
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x1

    .line 608
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 609
    .local v5, "pointerTracker":Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    const/4 v4, 0x0

    .line 610
    .local v4, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 611
    .local v2, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_23

    .line 612
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 614
    .local v3, "pointerId":I
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 611
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 617
    :cond_18
    shl-int v6, v7, v3

    or-int/2addr v4, v6

    .line 618
    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 619
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_15

    .line 621
    .end local v0    # "action":I
    .end local v3    # "pointerId":I
    :cond_23
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 834
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 835
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->clear()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 837
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 839
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 840
    return-void
.end method

.method public clear(Landroid/view/MotionEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 155
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->onReceivedMotionEvent(Landroid/view/MotionEvent;)V

    .line 170
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_32

    .line 181
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_25
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;I)V

    .line 184
    :goto_28
    return-void

    .line 175
    :pswitch_29
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 178
    :pswitch_2d
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 170
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_a
        :pswitch_2d
    .end packed-switch
.end method
