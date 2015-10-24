.class final Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;
.super Landroid/support/v7/media/MediaRouteProvider$Callback;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProviderService;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .registers 2

    .prologue
    .line 647
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p2, "x1"    # Landroid/support/v7/media/MediaRouteProviderService$1;

    .prologue
    .line 647
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .registers 4
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouteProvider;
    .param p2, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    invoke-static {v0, p2}, Landroid/support/v7/media/MediaRouteProviderService;->access$600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 652
    return-void
.end method
