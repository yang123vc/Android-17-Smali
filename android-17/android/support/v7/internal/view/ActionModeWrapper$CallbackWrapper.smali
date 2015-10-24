.class public Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "ActionModeWrapper.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/ActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;

.field final mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportCallback"    # Landroid/support/v7/view/ActionMode$Callback;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 136
    return-void
.end method

.method private getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;

    iget-object v0, v0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;

    if-ne v0, p1, :cond_d

    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;

    .line 171
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Landroid/support/v7/internal/view/ActionModeWrapper;

    iget-object v1, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/ActionModeWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    goto :goto_c
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 160
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setLastStartedActionMode(Landroid/support/v7/internal/view/ActionModeWrapper;)V
    .registers 2
    .param p1, "modeWrapper"    # Landroid/support/v7/internal/view/ActionModeWrapper;

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;

    .line 164
    return-void
.end method
