.class Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterViewICS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/AdapterViewICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/AdapterViewICS;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V
    .registers 2

    .prologue
    .line 853
    .local p0, "this":Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;, "Landroid/support/v7/internal/widget/AdapterViewICS<TT;>.SelectionNotifier;"
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/AdapterViewICS$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/internal/widget/AdapterViewICS;
    .param p2, "x1"    # Landroid/support/v7/internal/widget/AdapterViewICS$1;

    .prologue
    .line 853
    .local p0, "this":Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;, "Landroid/support/v7/internal/widget/AdapterViewICS<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 855
    .local p0, "this":Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;, "Landroid/support/v7/internal/widget/AdapterViewICS<TT;>.SelectionNotifier;"
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 859
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 860
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_13
    :goto_13
    return-void

    .line 863
    :cond_14
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    # invokes: Landroid/support/v7/internal/widget/AdapterViewICS;->fireOnSelected()V
    invoke-static {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->access$200(Landroid/support/v7/internal/widget/AdapterViewICS;)V

    goto :goto_13
.end method
