.class public Lorg/apache/xpath/axes/WalkerFactory;
.super Ljava/lang/Object;
.source "WalkerFactory.java"


# static fields
.field public static final BITMASK_TRAVERSES_OUTSIDE_SUBTREE:I = 0xdf86000

.field public static final BITS_COUNT:I = 0xff

.field public static final BITS_RESERVED:I = 0xf00

.field public static final BIT_ANCESTOR:I = 0x2000

.field public static final BIT_ANCESTOR_OR_SELF:I = 0x4000

.field public static final BIT_ANY_DESCENDANT_FROM_ROOT:I = 0x20000000

.field public static final BIT_ATTRIBUTE:I = 0x8000

.field public static final BIT_BACKWARDS_SELF:I = 0x10000000

.field public static final BIT_CHILD:I = 0x10000

.field public static final BIT_DESCENDANT:I = 0x20000

.field public static final BIT_DESCENDANT_OR_SELF:I = 0x40000

.field public static final BIT_FILTER:I = 0x4000000

.field public static final BIT_FOLLOWING:I = 0x80000

.field public static final BIT_FOLLOWING_SIBLING:I = 0x100000

.field public static final BIT_MATCH_PATTERN:I = -0x80000000

.field public static final BIT_NAMESPACE:I = 0x200000

.field public static final BIT_NODETEST_ANY:I = 0x40000000

.field public static final BIT_PARENT:I = 0x400000

.field public static final BIT_PRECEDING:I = 0x800000

.field public static final BIT_PRECEDING_SIBLING:I = 0x1000000

.field public static final BIT_PREDICATE:I = 0x1000

.field public static final BIT_ROOT:I = 0x8000000

.field public static final BIT_SELF:I = 0x2000000

.field static final DEBUG_ITERATOR_CREATION:Z

.field static final DEBUG_PATTERN_CREATION:Z

.field static final DEBUG_WALKER_CREATION:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static analyze(Lorg/apache/xpath/compiler/Compiler;II)I
    .registers 12
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x8000000

    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, "stepCount":I
    const/4 v0, 0x0

    .line 673
    .local v0, "analysisResult":I
    :cond_4
    const/4 v4, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .local v3, "stepType":I
    if-eq v4, v3, :cond_44

    .line 675
    add-int/lit8 v2, v2, 0x1

    .line 682
    invoke-static {p0, p1, v3}, Lorg/apache/xpath/axes/WalkerFactory;->analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v1

    .line 685
    .local v1, "predAnalysis":Z
    if-eqz v1, :cond_15

    .line 686
    or-int/lit16 v0, v0, 0x1000

    .line 688
    :cond_15
    packed-switch v3, :pswitch_data_94

    .line 755
    :pswitch_18
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ER_NULL_ERROR_HANDLER"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 694
    :pswitch_2e
    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    .line 759
    :goto_31
    const/16 v4, 0x409

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    if-ne v4, v5, :cond_3e

    .line 761
    const/high16 v4, 0x40000000

    or-int/2addr v0, v4

    .line 764
    :cond_3e
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p1

    .line 766
    if-gez p1, :cond_4

    .line 770
    .end local v1    # "predAnalysis":Z
    :cond_44
    and-int/lit16 v4, v2, 0xff

    or-int/2addr v0, v4

    .line 772
    return v0

    .line 697
    .restart local v1    # "predAnalysis":Z
    :pswitch_48
    or-int/2addr v0, v6

    .line 698
    goto :goto_31

    .line 700
    :pswitch_4a
    or-int/lit16 v0, v0, 0x2000

    .line 701
    goto :goto_31

    .line 703
    :pswitch_4d
    or-int/lit16 v0, v0, 0x4000

    .line 704
    goto :goto_31

    .line 706
    :pswitch_50
    const v4, 0x8000

    or-int/2addr v0, v4

    .line 707
    goto :goto_31

    .line 709
    :pswitch_55
    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    .line 710
    goto :goto_31

    .line 712
    :pswitch_59
    const/high16 v4, 0x10000

    or-int/2addr v0, v4

    .line 713
    goto :goto_31

    .line 715
    :pswitch_5d
    const/high16 v4, 0x20000

    or-int/2addr v0, v4

    .line 716
    goto :goto_31

    .line 720
    :pswitch_61
    const/4 v4, 0x2

    if-ne v4, v2, :cond_69

    if-ne v6, v0, :cond_69

    .line 722
    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    .line 725
    :cond_69
    const/high16 v4, 0x40000

    or-int/2addr v0, v4

    .line 726
    goto :goto_31

    .line 728
    :pswitch_6d
    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    .line 729
    goto :goto_31

    .line 731
    :pswitch_71
    const/high16 v4, 0x100000

    or-int/2addr v0, v4

    .line 732
    goto :goto_31

    .line 734
    :pswitch_75
    const/high16 v4, 0x800000

    or-int/2addr v0, v4

    .line 735
    goto :goto_31

    .line 737
    :pswitch_79
    const/high16 v4, 0x1000000

    or-int/2addr v0, v4

    .line 738
    goto :goto_31

    .line 740
    :pswitch_7d
    const/high16 v4, 0x400000

    or-int/2addr v0, v4

    .line 741
    goto :goto_31

    .line 743
    :pswitch_81
    const/high16 v4, 0x2000000

    or-int/2addr v0, v4

    .line 744
    goto :goto_31

    .line 746
    :pswitch_85
    const v4, -0x7fff8000

    or-int/2addr v0, v4

    .line 747
    goto :goto_31

    .line 749
    :pswitch_8a
    const v4, -0x7fffe000

    or-int/2addr v0, v4

    .line 750
    goto :goto_31

    .line 752
    :pswitch_8f
    const/high16 v4, -0x7fc00000

    or-int/2addr v0, v4

    .line 753
    goto :goto_31

    .line 688
    nop

    :pswitch_data_94
    .packed-switch 0x16
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_59
        :pswitch_5d
        :pswitch_61
        :pswitch_6d
        :pswitch_71
        :pswitch_7d
        :pswitch_75
        :pswitch_79
        :pswitch_81
        :pswitch_55
        :pswitch_48
        :pswitch_85
        :pswitch_8a
        :pswitch_8f
    .end packed-switch
.end method

.method static analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .registers 7
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1133
    packed-switch p2, :pswitch_data_1a

    .line 1142
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v0

    .line 1145
    .local v0, "argLen":I
    :goto_7
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v2

    .line 1146
    .local v2, "pos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v1

    .line 1148
    .local v1, "nPredicates":I
    if-lez v1, :cond_18

    const/4 v3, 0x1

    :goto_12
    return v3

    .line 1139
    .end local v0    # "argLen":I
    .end local v1    # "nPredicates":I
    .end local v2    # "pos":I
    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    move-result v0

    .line 1140
    .restart local v0    # "argLen":I
    goto :goto_7

    .line 1148
    .restart local v1    # "nPredicates":I
    .restart local v2    # "pos":I
    :cond_18
    const/4 v3, 0x0

    goto :goto_12

    .line 1133
    :pswitch_data_1a
    .packed-switch 0x16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public static canCrissCross(I)Z
    .registers 3
    .param p0, "analysis"    # I

    .prologue
    const/4 v0, 0x0

    .line 1566
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1584
    :cond_7
    :goto_7
    return v0

    .line 1568
    :cond_8
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDownOnly(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1570
    :cond_14
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenAndExtraAndSelfOnly(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1572
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendantsAndExtraAndSelfOnly(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1574
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUpOnly(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1576
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1578
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1582
    :cond_44
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static canSkipSubtrees(I)Z
    .registers 3
    .param p0, "analysis"    # I

    .prologue
    .line 1560
    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .registers 20
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "mpi"    # Lorg/apache/xpath/axes/MatchPatternIterator;
    .param p3, "analysis"    # I
    .param p4, "tail"    # Lorg/apache/xpath/patterns/StepPattern;
    .param p5, "head"    # Lorg/apache/xpath/patterns/StepPattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v10

    .line 985
    .local v10, "stepType":I
    const/4 v9, 0x0

    .line 986
    .local v9, "simpleInit":Z
    const/4 v8, 0x1

    .line 988
    .local v8, "prevIsOneStepDown":Z
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    .line 989
    .local v1, "whatToShow":I
    const/4 v0, 0x0

    .line 992
    .local v0, "ai":Lorg/apache/xpath/patterns/StepPattern;
    packed-switch v10, :pswitch_data_a0

    .line 1086
    :pswitch_e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NULL_ERROR_HANDLER"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v3, v11}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 998
    :pswitch_24
    const/4 v8, 0x0

    .line 1002
    packed-switch v10, :pswitch_data_de

    .line 1011
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v7

    .line 1014
    .local v7, "expr":Lorg/apache/xpath/Expression;
    :goto_2e
    const/16 v4, 0x14

    .line 1015
    .local v4, "axis":I
    const/16 v5, 0x14

    .line 1016
    .local v5, "predicateAxis":I
    new-instance v0, Lorg/apache/xpath/patterns/FunctionPattern;

    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    invoke-direct {v0, v7, v4, v5}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    .line 1017
    .restart local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v9, 0x1

    .line 1089
    .end local v7    # "expr":Lorg/apache/xpath/Expression;
    :goto_38
    if-nez v0, :cond_4b

    .line 1091
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    .line 1092
    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 1107
    .restart local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    :cond_4b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v6

    .line 1109
    .local v6, "argLen":I
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 1111
    return-object v0

    .line 1008
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    .end local v6    # "argLen":I
    :pswitch_57
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v7

    .line 1009
    .restart local v7    # "expr":Lorg/apache/xpath/Expression;
    goto :goto_2e

    .line 1020
    .end local v7    # "expr":Lorg/apache/xpath/Expression;
    :pswitch_5c
    const/16 v1, 0x500

    .line 1023
    const/16 v4, 0x13

    .line 1024
    .restart local v4    # "axis":I
    const/16 v5, 0x13

    .line 1025
    .restart local v5    # "predicateAxis":I
    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    const/16 v2, 0x500

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    .line 1028
    .restart local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_38

    .line 1030
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_6a
    const/4 v1, 0x2

    .line 1031
    const/16 v4, 0xa

    .line 1032
    .restart local v4    # "axis":I
    const/4 v5, 0x2

    .line 1034
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1036
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_6f
    const/16 v1, 0x1000

    .line 1037
    const/16 v4, 0xa

    .line 1038
    .restart local v4    # "axis":I
    const/16 v5, 0x9

    .line 1040
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1042
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_76
    const/4 v4, 0x4

    .line 1043
    .restart local v4    # "axis":I
    const/4 v5, 0x0

    .line 1044
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1046
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_79
    const/16 v4, 0xa

    .line 1047
    .restart local v4    # "axis":I
    const/4 v5, 0x3

    .line 1048
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1050
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_7d
    const/4 v4, 0x5

    .line 1051
    .restart local v4    # "axis":I
    const/4 v5, 0x1

    .line 1052
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1054
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_80
    const/16 v4, 0xd

    .line 1055
    .restart local v4    # "axis":I
    const/16 v5, 0xd

    .line 1056
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1058
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_85
    const/4 v4, 0x3

    .line 1059
    .restart local v4    # "axis":I
    const/16 v5, 0xa

    .line 1060
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1062
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_89
    const/4 v4, 0x7

    .line 1063
    .restart local v4    # "axis":I
    const/16 v5, 0xc

    .line 1064
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1066
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_8d
    const/4 v4, 0x6

    .line 1067
    .restart local v4    # "axis":I
    const/16 v5, 0xb

    .line 1068
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1070
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_91
    const/16 v4, 0xc

    .line 1071
    .restart local v4    # "axis":I
    const/4 v5, 0x7

    .line 1072
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1074
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_95
    const/16 v4, 0xb

    .line 1075
    .restart local v4    # "axis":I
    const/4 v5, 0x6

    .line 1076
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1078
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_99
    const/4 v4, 0x1

    .line 1079
    .restart local v4    # "axis":I
    const/4 v5, 0x5

    .line 1080
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 1082
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_9c
    const/4 v4, 0x0

    .line 1083
    .restart local v4    # "axis":I
    const/4 v5, 0x4

    .line 1084
    .restart local v5    # "predicateAxis":I
    goto :goto_38

    .line 992
    nop

    :pswitch_data_a0
    .packed-switch 0x16
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_76
        :pswitch_7d
        :pswitch_6a
        :pswitch_79
        :pswitch_9c
        :pswitch_99
        :pswitch_95
        :pswitch_91
        :pswitch_85
        :pswitch_8d
        :pswitch_89
        :pswitch_80
        :pswitch_6f
        :pswitch_5c
    .end packed-switch

    .line 1002
    :pswitch_data_de
    .packed-switch 0x16
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
    .end packed-switch
.end method

.method private static createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;
    .registers 15
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p3, "analysis"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 1168
    const/4 v0, 0x0

    .line 1169
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .line 1179
    .local v3, "stepType":I
    const/4 v2, 0x0

    .line 1180
    .local v2, "simpleInit":Z
    and-int/lit16 v4, p3, 0xff

    .line 1181
    .local v4, "totalNumberWalkers":I
    const/4 v1, 0x1

    .line 1183
    .local v1, "prevIsOneStepDown":Z
    packed-switch v3, :pswitch_data_ba

    .line 1250
    :pswitch_f
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_NULL_ERROR_HANDLER"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1189
    :pswitch_23
    const/4 v1, 0x0

    .line 1195
    new-instance v0, Lorg/apache/xpath/axes/FilterExprWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    .line 1196
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x1

    .line 1254
    :goto_2a
    if-eqz v2, :cond_9f

    .line 1256
    invoke-virtual {v0, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    .line 1280
    :goto_2f
    return-object v0

    .line 1199
    :pswitch_30
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0x13

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1200
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1202
    :pswitch_38
    const/4 v1, 0x0

    .line 1203
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2, v10}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1204
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1206
    :pswitch_3f
    const/4 v1, 0x0

    .line 1207
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2, v8}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1208
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1210
    :pswitch_46
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x2

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1211
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1213
    :pswitch_4d
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0x9

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1214
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1216
    :pswitch_55
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x3

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1217
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1219
    :pswitch_5c
    const/4 v1, 0x0

    .line 1220
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x4

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1221
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1223
    :pswitch_64
    const/4 v1, 0x0

    .line 1224
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x5

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1225
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1227
    :pswitch_6c
    const/4 v1, 0x0

    .line 1228
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x6

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1229
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1231
    :pswitch_74
    const/4 v1, 0x0

    .line 1232
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x7

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1233
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1235
    :pswitch_7c
    const/4 v1, 0x0

    .line 1236
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xb

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1237
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1239
    :pswitch_85
    const/4 v1, 0x0

    .line 1240
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xc

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1241
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1243
    :pswitch_8e
    const/4 v1, 0x0

    .line 1244
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xa

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1245
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1247
    :pswitch_97
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xd

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1248
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_2a

    .line 1260
    :cond_9f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v5

    .line 1269
    .local v5, "whatToShow":I
    and-int/lit16 v6, v5, 0x1043

    if-eqz v6, :cond_a9

    if-ne v5, v7, :cond_ad

    .line 1272
    :cond_a9
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    goto :goto_2f

    .line 1275
    :cond_ad
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1183
    :pswitch_data_ba
    .packed-switch 0x16
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_38
        :pswitch_3f
        :pswitch_46
        :pswitch_55
        :pswitch_5c
        :pswitch_64
        :pswitch_6c
        :pswitch_74
        :pswitch_8e
        :pswitch_7c
        :pswitch_85
        :pswitch_97
        :pswitch_4d
        :pswitch_30
    .end packed-switch
.end method

.method public static diagnoseIterator(Ljava/lang/String;ILorg/apache/xpath/compiler/Compiler;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "analysis"    # I
    .param p2, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    .prologue
    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xpath/compiler/Compiler;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method static functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z
    .registers 11
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I

    .prologue
    const/4 v7, 0x1

    .line 403
    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v8

    add-int/2addr v8, p1

    add-int/lit8 v1, v8, -0x1

    .line 404
    .local v1, "endFunc":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 405
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    .line 409
    .local v2, "funcID":I
    packed-switch v2, :pswitch_data_32

    .line 415
    add-int/lit8 p1, p1, 0x1

    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, "i":I
    move v5, p1

    .local v5, "p":I
    :goto_19
    if-ge v5, v1, :cond_2f

    .line 419
    add-int/lit8 v4, v5, 0x2

    .line 420
    .local v4, "innerExprOpPos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    .line 421
    .local v0, "argOp":I
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v6

    .line 422
    .local v6, "prox":Z
    if-eqz v6, :cond_28

    .line 427
    .end local v0    # "argOp":I
    .end local v3    # "i":I
    .end local v4    # "innerExprOpPos":I
    .end local v5    # "p":I
    .end local v6    # "prox":Z
    :goto_27
    :pswitch_27
    return v7

    .line 417
    .restart local v0    # "argOp":I
    .restart local v3    # "i":I
    .restart local v4    # "innerExprOpPos":I
    .restart local v5    # "p":I
    .restart local v6    # "prox":Z
    :cond_28
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 427
    .end local v0    # "argOp":I
    .end local v4    # "innerExprOpPos":I
    .end local v6    # "prox":Z
    :cond_2f
    const/4 v7, 0x0

    goto :goto_27

    .line 409
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public static getAnalysisBitFromAxes(I)I
    .registers 3
    .param p0, "axis"    # I

    .prologue
    const/high16 v1, 0x4000000

    const/high16 v0, 0x40000

    .line 355
    packed-switch p0, :pswitch_data_36

    :pswitch_7
    move v0, v1

    .line 396
    :goto_8
    :pswitch_8
    return v0

    .line 358
    :pswitch_9
    const/16 v0, 0x2000

    goto :goto_8

    .line 360
    :pswitch_c
    const/16 v0, 0x4000

    goto :goto_8

    .line 362
    :pswitch_f
    const v0, 0x8000

    goto :goto_8

    .line 364
    :pswitch_13
    const/high16 v0, 0x10000

    goto :goto_8

    .line 366
    :pswitch_16
    const/high16 v0, 0x20000

    goto :goto_8

    .line 370
    :pswitch_19
    const/high16 v0, 0x80000

    goto :goto_8

    .line 372
    :pswitch_1c
    const/high16 v0, 0x100000

    goto :goto_8

    .line 375
    :pswitch_1f
    const/high16 v0, 0x200000

    goto :goto_8

    .line 377
    :pswitch_22
    const/high16 v0, 0x400000

    goto :goto_8

    .line 379
    :pswitch_25
    const/high16 v0, 0x800000

    goto :goto_8

    .line 381
    :pswitch_28
    const/high16 v0, 0x1000000

    goto :goto_8

    .line 383
    :pswitch_2b
    const/high16 v0, 0x2000000

    goto :goto_8

    .line 390
    :pswitch_2e
    const/high16 v0, 0x20000000

    goto :goto_8

    .line 392
    :pswitch_31
    const/high16 v0, 0x8000000

    goto :goto_8

    :pswitch_34
    move v0, v1

    .line 394
    goto :goto_8

    .line 355
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_13
        :pswitch_16
        :pswitch_8
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_8
        :pswitch_7
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch
.end method

.method public static getAnalysisString(I)Ljava/lang/String;
    .registers 4
    .param p0, "analysis"    # I

    .prologue
    .line 1285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1286
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->getStepCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    const/high16 v1, 0x40000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2f

    .line 1289
    const-string v1, "NTANY|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    :cond_2f
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_38

    .line 1293
    const-string v1, "PRED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1295
    :cond_38
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_41

    .line 1297
    const-string v1, "ANC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1299
    :cond_41
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_4a

    .line 1301
    const-string v1, "ANCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1303
    :cond_4a
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_55

    .line 1305
    const-string v1, "ATTR|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1307
    :cond_55
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5f

    .line 1309
    const-string v1, "CH|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1311
    :cond_5f
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_69

    .line 1313
    const-string v1, "DESC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1315
    :cond_69
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_73

    .line 1317
    const-string v1, "DESCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1319
    :cond_73
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7d

    .line 1321
    const-string v1, "FOL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1323
    :cond_7d
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_87

    .line 1325
    const-string v1, "FOLS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1327
    :cond_87
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_91

    .line 1329
    const-string v1, "NS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    :cond_91
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_9b

    .line 1333
    const-string v1, "P|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1335
    :cond_9b
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a5

    .line 1337
    const-string v1, "PREC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    :cond_a5
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_af

    .line 1341
    const-string v1, "PRECS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1343
    :cond_af
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b9

    .line 1345
    const-string v1, ".|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1347
    :cond_b9
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c3

    .line 1349
    const-string v1, "FLT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1351
    :cond_c3
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_cd

    .line 1353
    const-string v1, "R|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    :cond_cd
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I
    .registers 8
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    .line 307
    .local v0, "stepType":I
    packed-switch v0, :pswitch_data_40

    .line 344
    :pswitch_9
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_NULL_ERROR_HANDLER"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :pswitch_1d
    const/4 v1, 0x6

    .line 341
    :goto_1e
    :pswitch_1e
    return v1

    .line 312
    :pswitch_1f
    const/4 v1, 0x7

    goto :goto_1e

    .line 314
    :pswitch_21
    const/16 v1, 0xb

    goto :goto_1e

    .line 316
    :pswitch_24
    const/16 v1, 0xc

    goto :goto_1e

    .line 318
    :pswitch_27
    const/16 v1, 0xa

    goto :goto_1e

    .line 320
    :pswitch_2a
    const/16 v1, 0x9

    goto :goto_1e

    :pswitch_2d
    move v1, v2

    .line 324
    goto :goto_1e

    .line 326
    :pswitch_2f
    const/4 v1, 0x2

    goto :goto_1e

    .line 328
    :pswitch_31
    const/16 v1, 0x13

    goto :goto_1e

    .line 330
    :pswitch_34
    const/4 v1, 0x3

    goto :goto_1e

    .line 332
    :pswitch_36
    const/4 v1, 0x5

    goto :goto_1e

    .line 334
    :pswitch_38
    const/4 v1, 0x4

    goto :goto_1e

    .line 336
    :pswitch_3a
    const/16 v1, 0xd

    goto :goto_1e

    .line 341
    :pswitch_3d
    const/16 v1, 0x14

    goto :goto_1e

    .line 307
    :pswitch_data_40
    .packed-switch 0x16
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1e
        :pswitch_2d
        :pswitch_2f
        :pswitch_34
        :pswitch_38
        :pswitch_36
        :pswitch_1d
        :pswitch_1f
        :pswitch_27
        :pswitch_21
        :pswitch_24
        :pswitch_3a
        :pswitch_2a
        :pswitch_31
    .end packed-switch
.end method

.method public static getStepCount(I)I
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1728
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static hasPredicate(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1369
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isAbsolute(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1485
    const/high16 v0, 0xc000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static isDownwardAxisOfMany(I)Z
    .registers 2
    .param p0, "axis"    # I

    .prologue
    .line 785
    const/4 v0, 0x5

    if-eq v0, p0, :cond_d

    const/4 v0, 0x4

    if-eq v0, p0, :cond_d

    const/4 v0, 0x6

    if-eq v0, p0, :cond_d

    const/16 v0, 0xb

    if-ne v0, p0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isNaturalDocOrder(I)Z
    .registers 3
    .param p0, "analysis"    # I

    .prologue
    const/4 v0, 0x0

    .line 1599
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v1

    if-nez v1, :cond_15

    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1606
    :cond_15
    :goto_15
    return v0

    .line 1603
    :cond_16
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1604
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private static isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z
    .registers 15
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1627
    invoke-static {p3}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1718
    :cond_8
    :goto_8
    return v6

    .line 1632
    :cond_9
    const/high16 v8, 0x200000

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1641
    const/high16 v8, 0x180000

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_21

    const/high16 v8, 0x1800000

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1651
    :cond_21
    const/4 v4, 0x0

    .line 1652
    .local v4, "stepCount":I
    const/4 v0, 0x0

    .line 1657
    .local v0, "foundWildAttribute":Z
    const/4 v3, 0x0

    .line 1659
    .local v3, "potentialDuplicateMakingStepCount":I
    :goto_24
    const/4 v8, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    .local v5, "stepType":I
    if-eq v8, v5, :cond_59

    .line 1661
    add-int/lit8 v4, v4, 0x1

    .line 1663
    packed-switch v5, :pswitch_data_64

    .line 1706
    :pswitch_30
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "ER_NULL_ERROR_HANDLER"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v9, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1667
    :pswitch_44
    if-nez v0, :cond_8

    .line 1673
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 1675
    .local v1, "localName":Ljava/lang/String;
    const-string v8, "*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1677
    const/4 v0, 0x1

    .line 1710
    .end local v1    # "localName":Ljava/lang/String;
    :cond_53
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v2

    .line 1712
    .local v2, "nextStepOpCodePos":I
    if-gez v2, :cond_62

    .end local v2    # "nextStepOpCodePos":I
    :cond_59
    move v6, v7

    .line 1718
    goto :goto_8

    .line 1696
    :pswitch_5b
    if-gtz v3, :cond_8

    .line 1698
    add-int/lit8 v3, v3, 0x1

    .line 1702
    :pswitch_5f
    if-eqz v0, :cond_53

    goto :goto_8

    .line 1715
    .restart local v2    # "nextStepOpCodePos":I
    :cond_62
    move p1, v2

    .line 1716
    goto :goto_24

    .line 1663
    :pswitch_data_64
    .packed-switch 0x16
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_5b
        :pswitch_5b
        :pswitch_44
        :pswitch_5f
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5f
        :pswitch_5b
        :pswitch_5f
        :pswitch_44
        :pswitch_5b
        :pswitch_5b
    .end packed-switch
.end method

.method public static isOneStep(I)Z
    .registers 3
    .param p0, "analysis"    # I

    .prologue
    const/4 v0, 0x1

    .line 1723
    and-int/lit16 v1, p0, 0xff

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z
    .registers 16
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 562
    const/4 v6, 0x0

    .line 563
    .local v6, "stepCount":I
    const/4 v1, 0x0

    .line 564
    .local v1, "foundDorDS":Z
    const/4 v2, 0x0

    .line 565
    .local v2, "foundSelf":Z
    const/4 v0, 0x0

    .line 567
    .local v0, "foundDS":Z
    const/16 v5, 0x409

    .line 569
    .local v5, "nodeTestType":I
    :goto_a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    .local v7, "stepType":I
    if-eq v11, v7, :cond_46

    .line 573
    const/16 v10, 0x409

    if-eq v5, v10, :cond_19

    const/16 v10, 0x23

    if-eq v5, v10, :cond_19

    .line 646
    :cond_18
    :goto_18
    :pswitch_18
    return v8

    .line 576
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 577
    if-gt v6, v12, :cond_18

    .line 580
    invoke-static {p0, p1, v7}, Lorg/apache/xpath/axes/WalkerFactory;->mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v3

    .line 581
    .local v3, "mightBeProximate":Z
    if-nez v3, :cond_18

    .line 584
    packed-switch v7, :pswitch_data_66

    .line 624
    :pswitch_26
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "ER_NULL_ERROR_HANDLER"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v8

    invoke-static {v11, v9}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 604
    :pswitch_3a
    if-ne v9, v6, :cond_18

    .line 628
    :cond_3c
    :goto_3c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepTestType(I)I

    move-result v5

    .line 630
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v4

    .line 632
    .local v4, "nextStepOpCodePos":I
    if-gez v4, :cond_58

    .end local v3    # "mightBeProximate":Z
    .end local v4    # "nextStepOpCodePos":I
    :cond_46
    move v8, v9

    .line 646
    goto :goto_18

    .line 608
    .restart local v3    # "mightBeProximate":Z
    :pswitch_48
    if-nez v0, :cond_3c

    if-eqz v1, :cond_18

    if-nez v2, :cond_3c

    goto :goto_18

    .line 612
    :pswitch_4f
    const/4 v0, 0x1

    .line 614
    :pswitch_50
    if-eq v12, v6, :cond_18

    .line 616
    const/4 v1, 0x1

    .line 617
    goto :goto_3c

    .line 619
    :pswitch_54
    if-ne v9, v6, :cond_18

    .line 621
    const/4 v2, 0x1

    .line 622
    goto :goto_3c

    .line 635
    .restart local v4    # "nextStepOpCodePos":I
    :cond_58
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v10

    if-eq v11, v10, :cond_64

    .line 637
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v10

    if-gtz v10, :cond_18

    .line 643
    :cond_64
    move p1, v4

    .line 644
    goto :goto_a

    .line 584
    :pswitch_data_66
    .packed-switch 0x16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_48
        :pswitch_50
        :pswitch_4f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_54
        :pswitch_18
        :pswitch_3a
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method static isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z
    .registers 9
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I

    .prologue
    const/4 v5, 0x1

    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .line 433
    .local v3, "op":I
    add-int/lit8 v0, p1, 0x2

    .line 434
    .local v0, "innerExprOpPos":I
    packed-switch v3, :pswitch_data_30

    .line 467
    :cond_a
    :goto_a
    :pswitch_a
    return v5

    .line 437
    :pswitch_b
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 467
    :cond_11
    :pswitch_11
    const/4 v5, 0x0

    goto :goto_a

    .line 446
    :pswitch_13
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    .line 447
    .local v1, "isProx":Z
    if-eqz v1, :cond_11

    goto :goto_a

    .line 455
    .end local v1    # "isProx":Z
    :pswitch_1a
    invoke-static {v3}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v2

    .line 456
    .local v2, "leftPos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v4

    .line 457
    .local v4, "rightPos":I
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    .line 458
    .restart local v1    # "isProx":Z
    if-nez v1, :cond_a

    .line 460
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    .line 461
    if-eqz v1, :cond_11

    goto :goto_a

    .line 434
    nop

    :pswitch_data_30
    .packed-switch 0x5
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_11
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_13
        :pswitch_b
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static isSet(II)Z
    .registers 3
    .param p0, "analysis"    # I
    .param p1, "bits"    # I

    .prologue
    .line 136
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isWild(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1374
    const/high16 v0, 0x40000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static loadOneWalker(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/AxesWalker;
    .registers 6
    .param p0, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    .line 68
    .local v1, "stepType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 73
    const/4 v2, 0x0

    invoke-static {p1, v1, p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 78
    :cond_10
    return-object v0
.end method

.method static loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;
    .registers 28
    .param p0, "mpi"    # Lorg/apache/xpath/axes/MatchPatternIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .param p3, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 830
    const/16 v21, 0x0

    .line 831
    .local v21, "step":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v6, 0x0

    .local v6, "firstStep":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v7, 0x0

    .line 832
    .local v7, "prevStep":Lorg/apache/xpath/patterns/StepPattern;
    invoke-static/range {p1 .. p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v5

    .line 834
    .local v5, "analysis":I
    :cond_8
    const/4 v2, -0x1

    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v22

    .local v22, "stepType":I
    move/from16 v0, v22

    if-eq v2, v0, :cond_27

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p0

    .line 836
    invoke-static/range {v2 .. v7}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v21

    .line 839
    if-nez v6, :cond_ad

    .line 841
    move-object/from16 v6, v21

    .line 850
    :goto_1f
    move-object/from16 v7, v21

    .line 851
    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p2

    .line 853
    if-gez p2, :cond_8

    .line 857
    :cond_27
    const/16 v14, 0xd

    .line 858
    .local v14, "axis":I
    const/16 v17, 0xd

    .line 859
    .local v17, "paxis":I
    move-object/from16 v23, v21

    .line 860
    .local v23, "tail":Lorg/apache/xpath/patterns/StepPattern;
    move-object/from16 v16, v21

    .local v16, "pat":Lorg/apache/xpath/patterns/StepPattern;
    :goto_2f
    if-eqz v16, :cond_d3

    .line 863
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v15

    .line 865
    .local v15, "nextAxis":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    .line 890
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    move-result v9

    .line 891
    .local v9, "whatToShow":I
    const/4 v2, 0x2

    if-eq v9, v2, :cond_45

    const/16 v2, 0x1000

    if-ne v9, v2, :cond_a5

    .line 894
    :cond_45
    const/4 v2, 0x2

    if-ne v9, v2, :cond_b4

    const/4 v12, 0x2

    .line 896
    .local v12, "newAxis":I
    :goto_49
    invoke-static {v14}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 898
    new-instance v8, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getLocalName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 903
    .local v8, "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v19

    .line 904
    .local v19, "score":Lorg/apache/xpath/objects/XNumber;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setNamespace(Ljava/lang/String;)V

    .line 905
    const-string v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setLocalName(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getPredicates()[Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 907
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 908
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setWhatToShow(I)V

    .line 909
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v18

    .line 910
    .local v18, "rel":Lorg/apache/xpath/patterns/StepPattern;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 911
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 912
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    .line 918
    const/16 v2, 0xb

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_b7

    .line 919
    const/16 v2, 0xf

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    .line 924
    :cond_a3
    :goto_a3
    move-object/from16 v16, v8

    .line 933
    .end local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v12    # "newAxis":I
    .end local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_a5
    :goto_a5
    move v14, v15

    .line 935
    move-object/from16 v23, v16

    .line 861
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v16

    goto :goto_2f

    .line 847
    .end local v9    # "whatToShow":I
    .end local v14    # "axis":I
    .end local v15    # "nextAxis":I
    .end local v16    # "pat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v17    # "paxis":I
    .end local v23    # "tail":Lorg/apache/xpath/patterns/StepPattern;
    :cond_ad
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    goto/16 :goto_1f

    .line 894
    .restart local v9    # "whatToShow":I
    .restart local v14    # "axis":I
    .restart local v15    # "nextAxis":I
    .restart local v16    # "pat":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v17    # "paxis":I
    .restart local v23    # "tail":Lorg/apache/xpath/patterns/StepPattern;
    :cond_b4
    const/16 v12, 0x9

    goto :goto_49

    .line 921
    .restart local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v12    # "newAxis":I
    .restart local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_b7
    const/4 v2, 0x4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_a3

    .line 922
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    goto :goto_a3

    .line 926
    .end local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_c5
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_a5

    .line 930
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    goto :goto_a5

    .line 938
    .end local v9    # "whatToShow":I
    .end local v12    # "newAxis":I
    .end local v15    # "nextAxis":I
    :cond_d3
    const/16 v2, 0x10

    if-ge v14, v2, :cond_f9

    .line 940
    new-instance v20, Lorg/apache/xpath/patterns/ContextMatchStepPattern;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;-><init>(II)V

    .line 942
    .local v20, "selfPattern":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v19

    .line 943
    .restart local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 944
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    .line 945
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    .line 954
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    .end local v20    # "selfPattern":Lorg/apache/xpath/patterns/StepPattern;
    :cond_f9
    return-object v21
.end method

.method static loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;
    .registers 10
    .param p0, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .param p3, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x0

    .line 104
    .local v2, "prevWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-static {p1, p2, p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v0

    .line 106
    .local v0, "analysis":I
    :cond_6
    const/4 v5, -0x1

    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .local v3, "stepType":I
    if-eq v5, v3, :cond_21

    .line 108
    invoke-static {p1, p2, p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v4

    .line 110
    .local v4, "walker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v4, p1, p2, v3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 111
    invoke-virtual {v4, p0}, Lorg/apache/xpath/axes/AxesWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 114
    if-nez v1, :cond_22

    .line 116
    move-object v1, v4

    .line 124
    :goto_1a
    move-object v2, v4

    .line 125
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p2

    .line 127
    if-gez p2, :cond_6

    .line 131
    .end local v4    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_21
    return-object v1

    .line 120
    .restart local v4    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_22
    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 121
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_1a
.end method

.method public static mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .registers 15
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 477
    const/4 v5, 0x0

    .line 480
    .local v5, "mightBeProximate":Z
    packed-switch p2, :pswitch_data_52

    .line 489
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v0

    .line 492
    .local v0, "argLen":I
    :goto_9
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v7

    .line 493
    .local v7, "predPos":I
    const/4 v1, 0x0

    .line 495
    .local v1, "count":I
    :goto_e
    const/16 v10, 0x1d

    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v11

    if-ne v10, v11, :cond_22

    .line 497
    add-int/lit8 v1, v1, 0x1

    .line 499
    add-int/lit8 v2, v7, 0x2

    .line 500
    .local v2, "innerExprOpPos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v6

    .line 502
    .local v6, "predOp":I
    packed-switch v6, :pswitch_data_5e

    :pswitch_21
    move v5, v9

    .line 539
    .end local v2    # "innerExprOpPos":I
    .end local v5    # "mightBeProximate":Z
    .end local v6    # "predOp":I
    :cond_22
    :goto_22
    return v5

    .line 486
    .end local v0    # "argLen":I
    .end local v1    # "count":I
    .end local v7    # "predPos":I
    .restart local v5    # "mightBeProximate":Z
    :pswitch_23
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    move-result v0

    .line 487
    .restart local v0    # "argLen":I
    goto :goto_9

    .restart local v1    # "count":I
    .restart local v2    # "innerExprOpPos":I
    .restart local v6    # "predOp":I
    .restart local v7    # "predPos":I
    :pswitch_28
    move v5, v9

    .line 505
    goto :goto_22

    :pswitch_2a
    move v5, v9

    .line 511
    goto :goto_22

    .line 513
    :pswitch_2c
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    .line 515
    .local v3, "isProx":Z
    if-eqz v3, :cond_4c

    move v5, v9

    .line 516
    goto :goto_22

    .line 523
    .end local v3    # "isProx":Z
    :pswitch_34
    invoke-static {v2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v4

    .line 524
    .local v4, "leftPos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v8

    .line 525
    .local v8, "rightPos":I
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    .line 526
    .restart local v3    # "isProx":Z
    if-eqz v3, :cond_44

    move v5, v9

    .line 527
    goto :goto_22

    .line 528
    :cond_44
    invoke-static {p0, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    .line 529
    if-eqz v3, :cond_4c

    move v5, v9

    .line 530
    goto :goto_22

    .line 536
    .end local v3    # "isProx":Z
    .end local v4    # "leftPos":I
    .end local v8    # "rightPos":I
    :cond_4c
    :pswitch_4c
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v7

    .line 537
    goto :goto_e

    .line 480
    nop

    :pswitch_data_52
    .packed-switch 0x16
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch

    .line 502
    :pswitch_data_5e
    .packed-switch 0x5
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_2a
        :pswitch_21
        :pswitch_21
        :pswitch_28
        :pswitch_21
        :pswitch_21
        :pswitch_2c
        :pswitch_21
        :pswitch_2a
        :pswitch_4c
    .end packed-switch
.end method

.method public static newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;
    .registers 10
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v1

    .line 165
    .local v1, "firstStepPos":I
    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v0

    .line 166
    .local v0, "analysis":I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isOneStep(I)Z

    move-result v2

    .line 170
    .local v2, "isOneStep":Z
    if-eqz v2, :cond_32

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 178
    new-instance v3, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 281
    .local v3, "iter":Lorg/apache/xml/dtm/DTMIterator;
    :goto_27
    instance-of v4, v3, Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_31

    move-object v4, v3

    .line 282
    check-cast v4, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v4, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setIsTopLevel(Z)V

    .line 284
    :cond_31
    return-object v3

    .line 181
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_32
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenOnly(I)Z

    move-result v4

    if-eqz v4, :cond_52

    if-eqz v2, :cond_52

    .line 185
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 191
    new-instance v3, Lorg/apache/xpath/axes/ChildIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27

    .line 199
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_4c
    new-instance v3, Lorg/apache/xpath/axes/ChildTestIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27

    .line 203
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_52
    if-eqz v2, :cond_60

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksAttributes(I)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 210
    new-instance v3, Lorg/apache/xpath/axes/AttributeIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/AttributeIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27

    .line 212
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_60
    if-eqz v2, :cond_88

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v4

    if-nez v4, :cond_88

    .line 214
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksNamespaces(I)Z

    move-result v4

    if-nez v4, :cond_82

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v4

    if-nez v4, :cond_7c

    const/high16 v4, 0x400000

    invoke-static {v0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 222
    :cond_7c
    new-instance v3, Lorg/apache/xpath/axes/OneStepIteratorForward;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27

    .line 231
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_82
    new-instance v3, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27

    .line 247
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_88
    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 256
    new-instance v3, Lorg/apache/xpath/axes/DescendantIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/DescendantIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27

    .line 260
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_94
    invoke-static {p0, v1, v5, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 267
    new-instance v3, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27

    .line 278
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_a0
    new-instance v3, Lorg/apache/xpath/axes/WalkingIteratorSorted;

    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIteratorSorted;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_27
.end method

.method public static walksAncestors(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1379
    const/16 v0, 0x6000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksAttributes(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1384
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static walksChildren(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1394
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static walksChildrenAndExtraAndSelfOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1502
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static walksChildrenOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1490
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_36

    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public static walksDescendants(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1399
    const/high16 v0, 0x60000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksDescendantsAndExtraAndSelfOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1512
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static walksDownExtraOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1551
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static walksDownOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1542
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static walksExtraNodes(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1469
    const v0, 0x208000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksExtraNodesOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1474
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static walksFilteredList(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1425
    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksFollowingOnlyMaybeAbsolute(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1449
    const/high16 v0, 0x2180000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static walksInDocOrder(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1440
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFollowingOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static walksNamespaces(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1389
    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static walksSelfOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1522
    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static walksSideways(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1463
    const/high16 v0, 0x1980000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksSubtree(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1404
    const/high16 v0, 0x70000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksSubtreeOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1418
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static walksSubtreeOnlyFromRootOrContext(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1430
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static walksSubtreeOnlyMaybeAbsolute(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1409
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static walksUp(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1458
    const v0, 0x406000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksUpOnly(I)Z
    .registers 2
    .param p0, "analysis"    # I

    .prologue
    .line 1533
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
