.class Landroid/content/SyncManager$ServiceConnectionData;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnectionData"
.end annotation


# instance fields
.field public final activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

.field public final syncAdapter:Landroid/content/ISyncAdapter;

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V
    .registers 4
    .param p2, "activeSyncContext"    # Landroid/content/SyncManager$ActiveSyncContext;
    .param p3, "syncAdapter"    # Landroid/content/ISyncAdapter;

    .prologue
    .line 1523
    iput-object p1, p0, Landroid/content/SyncManager$ServiceConnectionData;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    iput-object p2, p0, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 1525
    iput-object p3, p0, Landroid/content/SyncManager$ServiceConnectionData;->syncAdapter:Landroid/content/ISyncAdapter;

    .line 1526
    return-void
.end method
