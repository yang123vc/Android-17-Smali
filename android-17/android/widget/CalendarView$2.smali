.class Landroid/widget/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CalendarView;->setUpListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;)V
    .registers 2

    .prologue
    .line 753
    iput-object p1, p0, Landroid/widget/CalendarView$2;->this$0:Landroid/widget/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 761
    iget-object v0, p0, Landroid/widget/CalendarView$2;->this$0:Landroid/widget/CalendarView;

    # invokes: Landroid/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/CalendarView;->access$600(Landroid/widget/CalendarView;Landroid/widget/AbsListView;III)V

    .line 763
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 755
    iget-object v0, p0, Landroid/widget/CalendarView$2;->this$0:Landroid/widget/CalendarView;

    # invokes: Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
    invoke-static {v0, p1, p2}, Landroid/widget/CalendarView;->access$500(Landroid/widget/CalendarView;Landroid/widget/AbsListView;I)V

    .line 756
    return-void
.end method
