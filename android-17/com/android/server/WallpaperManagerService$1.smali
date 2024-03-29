.class Lcom/android/server/WallpaperManagerService$1;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 12
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    .line 108
    if-nez p2, :cond_5

    .line 132
    :goto_4
    return-void

    .line 111
    :cond_5
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 113
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 114
    .local v2, "origId":J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "bm":Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 116
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v1, "changedFile":Ljava/io/File;
    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 120
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)V

    .line 121
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_3f

    if-ne p1, v6, :cond_3f

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-boolean v4, v4, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    if-eqz v4, :cond_56

    .line 123
    :cond_3f
    if-ne p1, v6, :cond_46

    .line 124
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 126
    :cond_46
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 128
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;)V

    .line 131
    :cond_56
    monitor-exit v5

    goto :goto_4

    .end local v0    # "bm":Landroid/app/backup/BackupManager;
    .end local v1    # "changedFile":Ljava/io/File;
    .end local v2    # "origId":J
    :catchall_58
    move-exception v4

    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_58

    throw v4
.end method
