.class public Lcom/android/server/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StatusBarManagerService$NotificationCallbacks;,
        Lcom/android/server/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mContext:Landroid/content/Context;

.field mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field mHandler:Landroid/os/Handler;

.field mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field mImeBackDisposition:I

.field mImeToken:Landroid/os/IBinder;

.field mImeWindowVis:I

.field mLock:Ljava/lang/Object;

.field mMenuVisible:Z

.field mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field mSysUiVisToken:Landroid/os/IBinder;

.field mSystemUiVisibility:I

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v1}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 69
    iput v2, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 73
    iput v2, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    .line 74
    iput-boolean v2, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    .line 75
    iput v2, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 576
    new-instance v1, Lcom/android/server/StatusBarManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/StatusBarManagerService$7;-><init>(Lcom/android/server/StatusBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 107
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v2, 0x1070012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private disableLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked()I

    move-result v0

    .line 157
    .local v0, "net":I
    iget v1, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    if-eq v0, v1, :cond_20

    .line 158
    iput v0, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 159
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/StatusBarManagerService$1;-><init>(Lcom/android/server/StatusBarManagerService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_20

    .line 166
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->disable(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 171
    :cond_20
    :goto_20
    return-void

    .line 167
    :catch_21
    move-exception v1

    goto :goto_20
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private updateUiVisibilityLocked(I)V
    .registers 4
    .param p1, "vis"    # I

    .prologue
    .line 309
    iget v0, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    if-eq v0, p1, :cond_10

    .line 310
    iput p1, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    .line 311
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StatusBarManagerService$4;-><init>(Lcom/android/server/StatusBarManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :cond_10
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;
    .registers 5
    .param p1, "notification"    # Lcom/android/internal/statusbar/StatusBarNotification;

    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 443
    :try_start_3
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 444
    .local v0, "key":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    if-eqz v1, :cond_16

    .line 447
    :try_start_11
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1b
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    .line 451
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v2

    return-object v0

    .line 452
    .end local v0    # "key":Landroid/os/IBinder;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1

    .line 448
    .restart local v0    # "key":Landroid/os/IBinder;
    :catch_1b
    move-exception v1

    goto :goto_16
.end method

.method public collapse()V
    .registers 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 134
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 136
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapse()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 140
    :cond_c
    :goto_c
    return-void

    .line 137
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 145
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->disableLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 543
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_33

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    :goto_32
    return-void

    .line 551
    :cond_33
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v6

    .line 552
    :try_start_36
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v5, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 553
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_7a

    .line 555
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v6

    .line 556
    const/4 v2, 0x0

    .line 557
    .local v2, "i":I
    :try_start_40
    const-string v5, "Notification list:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 559
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    const-string v7, "  %2d: %s\n"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v5}, Lcom/android/internal/statusbar/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_77
    .catchall {:try_start_40 .. :try_end_77} :catchall_f9

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 553
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_7a
    move-exception v5

    :try_start_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v5

    .line 562
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7d
    :try_start_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_f9

    .line 564
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 565
    :try_start_81
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 566
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisableRecords.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mDisabled=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const/4 v2, 0x0

    :goto_ae
    if-ge v2, v0, :cond_fc

    .line 569
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 570
    .local v4, "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] what=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_81 .. :try_end_f6} :catchall_ff

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 562
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catchall_f9
    move-exception v5

    :try_start_fa
    monitor-exit v6
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v5

    .line 573
    .restart local v0    # "N":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_fc
    :try_start_fc
    monitor-exit v6

    goto/16 :goto_32

    .end local v0    # "N":I
    :catchall_ff
    move-exception v5

    monitor-exit v6
    :try_end_101
    .catchall {:try_start_fc .. :try_end_101} :catchall_ff

    throw v5
.end method

.method public expand()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 123
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 125
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpand()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 129
    :cond_c
    :goto_c
    return-void

    .line 126
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method gatherDisableActionsLocked()I
    .registers 5

    .prologue
    .line 529
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 531
    .local v0, "N":I
    const/4 v2, 0x0

    .line 532
    .local v2, "net":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 533
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StatusBarManagerService$DisableRecord;

    iget v3, v3, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    or-int/2addr v2, v3

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 535
    :cond_18
    return v2
.end method

.method manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 495
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 496
    .local v0, "N":I
    const/4 v4, 0x0

    .line 498
    .local v4, "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_18

    .line 499
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 500
    .local v3, "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    iget-object v5, v3, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_2d

    .line 501
    move-object v4, v3

    .line 505
    .end local v3    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_18
    if-eqz p1, :cond_20

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_30

    .line 506
    :cond_20
    if-eqz v4, :cond_2c

    .line 507
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 508
    iget-object v5, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 525
    :cond_2c
    :goto_2c
    return-void

    .line 498
    .restart local v3    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 511
    .end local v3    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_30
    if-nez v4, :cond_41

    .line 512
    new-instance v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .end local v4    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V

    .line 514
    .restart local v4    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v5, 0x0

    :try_start_39
    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_48

    .line 519
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_41
    iput p1, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    .line 522
    iput-object p2, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 523
    iput-object p3, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_2c

    .line 516
    :catch_48
    move-exception v1

    .line 517
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_2c
.end method

.method public onClearAllNotifications()V
    .registers 2

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 435
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onClearAll()V

    .line 436
    return-void
.end method

.method public onHardKeyboardStatusChange(ZZ)V
    .registers 5
    .param p1, "available"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/StatusBarManagerService$6;-><init>(Lcom/android/server/StatusBarManagerService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 429
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V

    .line 430
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 415
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    return-void
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 423
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 424
    return-void
.end method

.method public onPanelRevealed()V
    .registers 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 409
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onPanelRevealed()V

    .line 410
    return-void
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    .registers 14
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p5, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .local p4, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .local p6, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 376
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 378
    const-string v2, "StatusBarManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerStatusBar bar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 380
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v5

    .line 381
    :try_start_22
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 382
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_53

    .line 383
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v5

    .line 384
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 388
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_50
    move-exception v2

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_50

    throw v2

    .line 382
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2

    .line 388
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_56
    :try_start_56
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_50

    .line 389
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 390
    const/4 v2, 0x0

    :try_start_5b
    invoke-virtual {p0}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked()I

    move-result v6

    aput v6, p5, v2

    .line 391
    const/4 v2, 0x1

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    aput v6, p5, v2

    .line 392
    const/4 v6, 0x2

    iget-boolean v2, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    if-eqz v2, :cond_96

    move v2, v3

    :goto_6c
    aput v2, p5, v6

    .line 393
    const/4 v2, 0x3

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    aput v6, p5, v2

    .line 394
    const/4 v2, 0x4

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mImeBackDisposition:I

    aput v6, p5, v2

    .line 395
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_5b .. :try_end_7e} :catchall_98

    .line 397
    const/4 v5, 0x5

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    move-result v2

    if-eqz v2, :cond_9b

    move v2, v3

    :goto_88
    aput v2, p5, v5

    .line 398
    const/4 v2, 0x6

    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardEnabled()Z

    move-result v5

    if-eqz v5, :cond_9d

    :goto_93
    aput v3, p5, v2

    .line 399
    return-void

    :cond_96
    move v2, v4

    .line 392
    goto :goto_6c

    .line 396
    :catchall_98
    move-exception v2

    :try_start_99
    monitor-exit v5
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v2

    :cond_9b
    move v2, v4

    .line 397
    goto :goto_88

    :cond_9d
    move v3, v4

    .line 398
    goto :goto_93
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 7
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 227
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 228
    :try_start_6
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, "index":I
    if-gez v0, :cond_2a

    .line 230
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "index":I
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v1

    .line 233
    .restart local v0    # "index":I
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 235
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    if-eqz v1, :cond_38

    .line 237
    :try_start_33
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_3a
    .catchall {:try_start_33 .. :try_end_38} :catchall_27

    .line 241
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_27

    .line 242
    return-void

    .line 238
    :catch_3a
    move-exception v1

    goto :goto_38
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 471
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 472
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 473
    .local v0, "n":Lcom/android/internal/statusbar/StatusBarNotification;
    if-nez v0, :cond_29

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification key not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    .end local v0    # "n":Lcom/android/internal/statusbar/StatusBarNotification;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1

    .line 476
    .restart local v0    # "n":Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_26

    if-eqz v1, :cond_32

    .line 478
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeNotification(Landroid/os/IBinder;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34
    .catchall {:try_start_2d .. :try_end_32} :catchall_26

    .line 482
    :cond_32
    :goto_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_26

    .line 483
    return-void

    .line 479
    :catch_34
    move-exception v1

    goto :goto_32
.end method

.method public setHardKeyboardEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StatusBarManagerService$5;-><init>(Lcom/android/server/StatusBarManagerService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 14
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 177
    iget-object v7, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v7

    .line 178
    :try_start_6
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v6

    .line 179
    .local v6, "index":I
    if-gez v6, :cond_2a

    .line 180
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v6    # "index":I
    :catchall_27
    move-exception v1

    monitor-exit v7
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v1

    .line 183
    .restart local v6    # "index":I
    :cond_2a
    :try_start_2a
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v4, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 186
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 188
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_27

    if-eqz v1, :cond_42

    .line 190
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v6, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_44
    .catchall {:try_start_3d .. :try_end_42} :catchall_27

    .line 194
    :cond_42
    :goto_42
    :try_start_42
    monitor-exit v7
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_27

    .line 195
    return-void

    .line 191
    :catch_44
    move-exception v1

    goto :goto_42
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 200
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 201
    :try_start_6
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "index":I
    if-gez v1, :cond_2a

    .line 203
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    .end local v1    # "index":I
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v2

    .line 206
    .restart local v1    # "index":I
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 207
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_34

    .line 208
    monitor-exit v3

    .line 222
    :goto_33
    return-void

    .line 211
    :cond_34
    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_43

    .line 212
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 214
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_27

    if-eqz v2, :cond_43

    .line 216
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_45
    .catchall {:try_start_3e .. :try_end_43} :catchall_27

    .line 221
    :cond_43
    :goto_43
    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_27

    goto :goto_33

    .line 217
    :catch_45
    move-exception v2

    goto :goto_43
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 275
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_6
    iput p2, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    .line 280
    iput p3, p0, Lcom/android/server/StatusBarManagerService;->mImeBackDisposition:I

    .line 281
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 282
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$3;-><init>(Lcom/android/server/StatusBarManagerService;Landroid/os/IBinder;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 115
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 6
    .param p1, "vis"    # I

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 301
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/StatusBarManagerService;->updateUiVisibilityLocked(I)V

    .line 303
    const/high16 v0, 0x1ff0000

    and-int/2addr v0, p1

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const-string v3, "WindowManager.LayoutParams"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/StatusBarManagerService;->disableLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 305
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public toggleRecentApps()V
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 350
    :try_start_4
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 353
    :cond_9
    :goto_9
    return-void

    .line 351
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public topAppWindowChanged(Z)V
    .registers 5
    .param p1, "menuVisible"    # Z

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 253
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    .line 255
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StatusBarManagerService$2;-><init>(Lcom/android/server/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .registers 7
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/internal/statusbar/StatusBarNotification;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v1

    .line 457
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNotification key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0

    .line 460
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    if-eqz v0, :cond_35

    .line 463
    :try_start_30
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_37
    .catchall {:try_start_30 .. :try_end_35} :catchall_24

    .line 467
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_24

    .line 468
    return-void

    .line 464
    :catch_37
    move-exception v0

    goto :goto_35
.end method
