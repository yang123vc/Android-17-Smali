.class public Landroid/drm/DrmStore$Playback;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playback"
.end annotation


# static fields
.field public static final PAUSE:I = 0x2

.field public static final RESUME:I = 0x3

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValid(I)Z
    .registers 2
    .param p0, "playbackStatus"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_8

    .line 124
    :goto_4
    return v0

    .line 122
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 117
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
