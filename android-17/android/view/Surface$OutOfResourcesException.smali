.class public Landroid/view/Surface$OutOfResourcesException;
.super Ljava/lang/Exception;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfResourcesException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method
