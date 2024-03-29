.class public abstract Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V
    .registers 2
    .param p1, "algorithm"    # Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .line 84
    return-void
.end method

.method private doCheck([CII)Z
    .registers 6
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 103
    sget-object v0, Landroid/text/TextDirectionHeuristics$1;->$SwitchMap$android$text$TextDirectionHeuristics$TriState:[I

    iget-object v1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    invoke-interface {v1, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;->checkRtl([CII)Landroid/text/TextDirectionHeuristics$TriState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextDirectionHeuristics$TriState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 109
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_15
    return v0

    .line 105
    :pswitch_16
    const/4 v0, 0x1

    goto :goto_15

    .line 107
    :pswitch_18
    const/4 v0, 0x0

    goto :goto_15

    .line 103
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl([CII)Z
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 93
    if-eqz p1, :cond_a

    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    array-length v0, p1

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_10

    .line 94
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_10
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    if-nez v0, :cond_19

    .line 97
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    .line 99
    :goto_18
    return v0

    :cond_19
    invoke-direct {p0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->doCheck([CII)Z

    move-result v0

    goto :goto_18
.end method
