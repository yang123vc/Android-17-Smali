.class Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
.super Ljava/lang/Object;
.source "ActionBarImplICS.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnMenuVisibilityListenerWrapper"
.end annotation


# instance fields
.field final mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 2
    .param p1, "l"    # Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    .line 367
    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .registers 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 372
    return-void
.end method
