.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final mask:I

.field public final name:Ljava/lang/String;

.field public final shift:I

.field public final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "shift"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/String;

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 718
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 719
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 720
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 721
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "mask"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 711
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 712
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 714
    return-void
.end method
