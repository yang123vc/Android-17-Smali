.class final Landroid/app/SuperNotCalledException;
.super Landroid/util/AndroidRuntimeException;
.source "ActivityThread.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method
