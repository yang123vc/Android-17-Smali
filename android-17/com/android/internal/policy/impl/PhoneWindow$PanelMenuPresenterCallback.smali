.class Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 2

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindow$1;

    .prologue
    .line 1703
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 9
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1706
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    .line 1707
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_22

    move v0, v3

    .line 1708
    .local v0, "isSubMenu":Z
    :goto_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    if-eqz v0, :cond_d

    move-object p1, v2

    .end local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_d
    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1709
    .local v1, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_21

    .line 1710
    if-eqz v0, :cond_24

    .line 1711
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v5, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    invoke-static {v4, v5, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 1712
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1719
    :cond_21
    :goto_21
    return-void

    .line 1707
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .restart local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_22
    const/4 v0, 0x0

    goto :goto_8

    .line 1716
    .end local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_24
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v3, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_21
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/16 v2, 0x8

    .line 1723
    if-nez p1, :cond_1f

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1724
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1725
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1726
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1730
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1f
    const/4 v1, 0x1

    return v1
.end method
