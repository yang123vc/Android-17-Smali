.class Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
.super Landroid/support/v7/app/ActionBar$Tab;
.source "ActionBarImplICS.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabWrapper"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

.field private mTag:Ljava/lang/Object;

.field final mWrappedTab:Landroid/app/ActionBar$Tab;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarImplICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarImplICS;Landroid/app/ActionBar$Tab;)V
    .registers 3
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 382
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar$Tab;-><init>()V

    .line 383
    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    .line 384
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 498
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplICS;->getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    :goto_a
    invoke-interface {v1, p0, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 499
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplICS;->commitActiveTransaction()V

    .line 500
    return-void

    .line 498
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 485
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplICS;->getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    :goto_a
    invoke-interface {v1, p0, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 486
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplICS;->commitActiveTransaction()V

    .line 487
    return-void

    .line 485
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 492
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    if-eqz p2, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplICS;->getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    :goto_a
    invoke-interface {v1, p0, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 493
    return-void

    .line 492
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public select()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 463
    return-void
.end method

.method public setContentDescription(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarImplICS;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mContentDescription:Ljava/lang/CharSequence;

    .line 468
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 473
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mContentDescription:Ljava/lang/CharSequence;

    .line 474
    return-object p0
.end method

.method public setCustomView(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(I)Landroid/app/ActionBar$Tab;

    .line 434
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 428
    return-object p0
.end method

.method public setIcon(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 410
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    .line 404
    return-object p0
.end method

.method public setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 4
    .param p1, "listener"    # Landroid/support/v7/app/ActionBar$TabListener;

    .prologue
    .line 455
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    .line 456
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    if-eqz p1, :cond_b

    move-object v0, p0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 457
    return-object p0

    .line 456
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 444
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTag:Ljava/lang/Object;

    .line 445
    return-object p0
.end method

.method public setText(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 422
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 416
    return-object p0
.end method
