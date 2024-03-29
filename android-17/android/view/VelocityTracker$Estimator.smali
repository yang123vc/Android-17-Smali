.class public final Landroid/view/VelocityTracker$Estimator;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Estimator"
.end annotation


# static fields
.field private static final MAX_DEGREE:I = 0x2


# instance fields
.field public confidence:F

.field public degree:I

.field public final xCoeff:[F

.field public final yCoeff:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    .line 270
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    return-void
.end method

.method private estimate(F[F)F
    .registers 7
    .param p1, "time"    # F
    .param p2, "c"    # [F

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "a":F
    const/high16 v2, 0x3f800000

    .line 303
    .local v2, "scale":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget v3, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt v1, v3, :cond_10

    .line 304
    aget v3, p2, v1

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 305
    mul-float/2addr v2, p1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 307
    :cond_10
    return v0
.end method


# virtual methods
.method public estimateX(F)F
    .registers 3
    .param p1, "time"    # F

    .prologue
    .line 288
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public estimateY(F)F
    .registers 3
    .param p1, "time"    # F

    .prologue
    .line 297
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method
