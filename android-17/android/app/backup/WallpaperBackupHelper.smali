.class public Landroid/app/backup/WallpaperBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "WallpaperBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final STAGE_FILE:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper-tmp"

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupHelper"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"


# instance fields
.field mContext:Landroid/content/Context;

.field mDesiredMinHeight:D

.field mDesiredMinWidth:D

.field mFiles:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Landroid/app/backup/WallpaperBackupHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    .line 67
    const-string/jumbo v4, "wallpaper"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 68
    .local v3, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    .line 69
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 71
    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    cmpg-double v4, v4, v6

    if-lez v4, :cond_2c

    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4b

    .line 72
    :cond_2c
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 73
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 74
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 75
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 76
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    .line 77
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 83
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_4b
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 13
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Landroid/app/backup/WallpaperBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 103
    const-string v7, "/data/data/com.android.settings/files/wallpaper"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 105
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/data/com.android.settings/files/wallpaper-tmp"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 109
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    const-string v7, "/data/data/com.android.settings/files/wallpaper-tmp"

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 122
    iget-wide v7, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v9, v9

    div-double v5, v7, v9

    .line 123
    .local v5, "widthRatio":D
    iget-wide v7, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v9, v9

    div-double v1, v7, v9

    .line 124
    .local v1, "heightRatio":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_65

    const-wide v7, 0x3ff547ae147ae148L

    cmpg-double v7, v5, v7

    if-gez v7, :cond_65

    const-wide/16 v7, 0x0

    cmpl-double v7, v1, v7

    if-lez v7, :cond_65

    const-wide v7, 0x3ff547ae147ae148L

    cmpg-double v7, v1, v7

    if-gez v7, :cond_65

    .line 128
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 144
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "heightRatio":D
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "widthRatio":D
    :cond_64
    :goto_64
    return-void

    .line 135
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "heightRatio":D
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "widthRatio":D
    :cond_65
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_64

    .line 140
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "heightRatio":D
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "widthRatio":D
    :cond_69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    goto :goto_64
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
