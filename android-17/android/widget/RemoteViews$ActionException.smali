.class public Landroid/widget/RemoteViews$ActionException;
.super Ljava/lang/RuntimeException;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    return-void
.end method
