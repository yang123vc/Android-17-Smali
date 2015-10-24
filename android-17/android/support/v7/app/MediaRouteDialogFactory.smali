.class public Landroid/support/v7/app/MediaRouteDialogFactory;
.super Ljava/lang/Object;
.source "MediaRouteDialogFactory.java"


# static fields
.field private static final sDefault:Landroid/support/v7/app/MediaRouteDialogFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-direct {v0}, Landroid/support/v7/app/MediaRouteDialogFactory;-><init>()V

    sput-object v0, Landroid/support/v7/app/MediaRouteDialogFactory;->sDefault:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Landroid/support/v7/app/MediaRouteDialogFactory;->sDefault:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object v0
.end method


# virtual methods
.method public onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    .registers 2

    .prologue
    .line 55
    new-instance v0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;-><init>()V

    return-object v0
.end method

.method public onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    .registers 2

    .prologue
    .line 67
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;-><init>()V

    return-object v0
.end method
