.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 3

    .prologue
    .line 922
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/widget/ActivityChooserModel$1;

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 930
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v7, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 932
    .local v7, "packageNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 934
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 935
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_21

    .line 936
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 937
    .local v0, "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v8, 0x0

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 938
    iget-object v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 939
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 942
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_21
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 943
    .local v4, "lastShareIndex":I
    const/high16 v5, 0x3f800000

    .line 944
    .local v5, "nextRecordWeight":F
    move v3, v4

    :goto_2a
    if-ltz v3, :cond_4f

    .line 945
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 946
    .local v2, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v8, v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 947
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 948
    .restart local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v0, :cond_4c

    .line 949
    iget v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 950
    const v8, 0x3f733333

    mul-float/2addr v5, v8

    .line 944
    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 954
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4f
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 961
    return-void
.end method
