.class public Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Lcom/android/server/wm/InputFilter;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$Explorer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AccessibilityInputFilter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mTouchscreenSourceDeviceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_2b

    move-object v1, p1

    .line 99
    check-cast v1, Landroid/view/MotionEvent;

    .line 100
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    .line 101
    .local v0, "deviceId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchscreenSourceDeviceId:I

    if-eq v2, v0, :cond_1a

    .line 102
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchscreenSourceDeviceId:I

    .line 103
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 105
    :cond_1a
    const/high16 v2, 0x40000000

    and-int/2addr v2, p2

    if-eqz v2, :cond_25

    .line 106
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 113
    .end local v0    # "deviceId":I
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :goto_24
    return-void

    .line 108
    .restart local v0    # "deviceId":I
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_25
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_24

    .line 111
    .end local v0    # "deviceId":I
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_2b
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_24
.end method

.method public onInstalled()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Lcom/android/server/wm/InputFilter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 80
    invoke-super {p0}, Lcom/android/server/wm/InputFilter;->onInstalled()V

    .line 81
    return-void
.end method

.method public onUninstalled()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 89
    invoke-super {p0}, Lcom/android/server/wm/InputFilter;->onUninstalled()V

    .line 90
    return-void
.end method
