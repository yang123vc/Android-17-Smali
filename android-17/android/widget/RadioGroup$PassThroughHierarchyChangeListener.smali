.class Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/widget/RadioGroup;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/RadioGroup;
    .param p2, "x1"    # Landroid/widget/RadioGroup$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v1, :cond_22

    instance-of v1, p2, Landroid/widget/RadioButton;

    if-eqz v1, :cond_22

    .line 360
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 362
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 363
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 364
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_16
    move-object v1, p2

    .line 366
    check-cast v1, Landroid/widget/RadioButton;

    iget-object v2, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    # getter for: Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v2}, Landroid/widget/RadioGroup;->access$700(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    .end local v0    # "id":I
    :cond_22
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2b

    .line 371
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 373
    :cond_2b
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 379
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_f

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_f

    move-object v0, p2

    .line 380
    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 383
    :cond_f
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_18

    .line 384
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 386
    :cond_18
    return-void
.end method
