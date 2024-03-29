.class Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardViewHost"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .param p3, "x2"    # Lcom/android/internal/policy/impl/KeyguardViewManager$1;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDoneDrawing()V

    .line 98
    return-void
.end method
