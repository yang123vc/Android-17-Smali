.class Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1356
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/internal/widget/ListPopupWindow;
    .param p2, "x1"    # Landroid/support/v7/internal/widget/ListPopupWindow$1;

    .prologue
    .line 1356
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 1360
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1362
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 1364
    :cond_d
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 1368
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V

    .line 1369
    return-void
.end method
