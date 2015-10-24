.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
.super Landroid/support/v7/media/MediaRouteProvider$Callback;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .registers 2

    .prologue
    .line 1933
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
    .param p2, "x1"    # Landroid/support/v7/media/MediaRouter$1;

    .prologue
    .line 1933
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .registers 4
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouteProvider;
    .param p2, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    .line 1937
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    # invokes: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderDescriptor(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    invoke-static {v0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$900(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 1938
    return-void
.end method
