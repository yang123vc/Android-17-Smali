.class final Landroid/view/WindowLeaked;
.super Landroid/util/AndroidRuntimeException;
.source "WindowManagerImpl.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
