.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 4580
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 4581
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    .line 4582
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .registers 15
    .param p1, "accessibilityId"    # I
    .param p2, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p4, "interrogatingPid"    # I
    .param p5, "interrogatingTid"    # J

    .prologue
    .line 4587
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    .line 4588
    .local v7, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v7, :cond_16

    .line 4589
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4593
    :cond_16
    return-void
.end method

.method public findAccessibilityNodeInfoByViewId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p4, "interrogatingPid"    # I
    .param p5, "interrogatingTid"    # J

    .prologue
    .line 4609
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    .line 4610
    .local v7, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v7, :cond_16

    .line 4611
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4615
    :cond_16
    return-void
.end method

.method public findAccessibilityNodeInfosByViewText(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .registers 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "accessibilityId"    # I
    .param p3, "interactionId"    # I
    .param p4, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p5, "interrogatingPid"    # I
    .param p6, "interrogatingTid"    # J

    .prologue
    .line 4620
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewRootImpl;

    .line 4621
    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_17

    .line 4622
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfosByViewTextClientThread(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4626
    :cond_17
    return-void
.end method

.method public performAccessibilityAction(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .registers 17
    .param p1, "accessibilityId"    # I
    .param p2, "action"    # I
    .param p3, "interactionId"    # I
    .param p4, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p5, "interogatingPid"    # I
    .param p6, "interrogatingTid"    # J

    .prologue
    .line 4598
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewRootImpl;

    .line 4599
    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_17

    .line 4600
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performAccessibilityActionClientThread(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4604
    :cond_17
    return-void
.end method
