.class public final Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
.super Ljava/lang/Object;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SystemRouteRecord"
.end annotation


# instance fields
.field public mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

.field public final mRouteDescriptorId:Ljava/lang/String;

.field public final mRouteObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 668
    iput-object p2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    .line 669
    return-void
.end method
