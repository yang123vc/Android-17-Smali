.class abstract Landroid/widget/RemoteViews$Action;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Action"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/RemoteViews$1;

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/RemoteViews$Action;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 147
    :try_start_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_1b

    .line 159
    const/4 v0, 0x1

    :goto_10
    return v0

    .line 151
    :catch_11
    move-exception v6

    .line 152
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 153
    goto :goto_10

    .line 154
    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_1b
    move-exception v6

    .line 155
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent due to unknown exception: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 157
    goto :goto_10
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .registers 2
    .param p1, "counter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    .prologue
    .line 140
    return-void
.end method
