.class final Landroid/app/RemoteServiceException;
.super Landroid/util/AndroidRuntimeException;
.source "ActivityThread.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 112
    return-void
.end method
