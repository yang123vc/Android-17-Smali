.class Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .registers 2

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p2, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$1;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 642
    instance-of v0, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_e

    .line 643
    check-cast p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .end local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 645
    :cond_e
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 634
    if-nez p1, :cond_4

    .line 637
    .end local p1    # "subMenu":Lcom/android/internal/view/menu/MenuBuilder;
    :goto_3
    return v2

    .line 636
    .restart local p1    # "subMenu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    check-cast p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .end local p1    # "subMenu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    goto :goto_3
.end method
