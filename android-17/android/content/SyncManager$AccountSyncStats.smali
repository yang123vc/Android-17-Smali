.class Landroid/content/SyncManager$AccountSyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountSyncStats"
.end annotation


# instance fields
.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1483
    iput-object p1, p0, Landroid/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    .line 1484
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/content/SyncManager$1;

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Landroid/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
