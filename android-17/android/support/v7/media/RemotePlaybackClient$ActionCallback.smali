.class public abstract Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;
.super Ljava/lang/Object;
.source "RemotePlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 897
    return-void
.end method
