.class final Landroid/support/v7/widget/GridLayout$MutableInt;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableInt"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1994
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$MutableInt;->reset()V

    .line 1995
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 1997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1998
    iput p1, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1999
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 2002
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 2003
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2007
    iget v0, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
