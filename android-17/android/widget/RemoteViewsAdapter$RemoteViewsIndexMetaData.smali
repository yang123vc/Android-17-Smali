.class Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsIndexMetaData"
.end annotation


# instance fields
.field isRequested:Z

.field itemId:J

.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field typeId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViews;JZ)V
    .registers 6
    .param p2, "v"    # Landroid/widget/RemoteViews;
    .param p3, "itemId"    # J
    .param p5, "requested"    # Z

    .prologue
    .line 457
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;JZ)V

    .line 459
    return-void
.end method


# virtual methods
.method public set(Landroid/widget/RemoteViews;JZ)V
    .registers 6
    .param p1, "v"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # J
    .param p4, "requested"    # Z

    .prologue
    .line 462
    iput-wide p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    .line 463
    if-eqz p1, :cond_d

    .line 464
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 467
    :goto_a
    iput-boolean p4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->isRequested:Z

    .line 468
    return-void

    .line 466
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    goto :goto_a
.end method
