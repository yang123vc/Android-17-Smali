.class final Lcom/android/server/wm/InputManager$Callbacks;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callbacks"
.end annotation


# static fields
.field private static final CALIBRATION_DIR_PATH:Ljava/lang/String; = "usr/idc/"

.field private static final DEBUG_VIRTUAL_KEYS:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field static final TAG:Ljava/lang/String; = "InputManager-Callbacks"


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputManager;)V
    .registers 2

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/InputManager;
    .param p2, "x1"    # Lcom/android/server/wm/InputManager$1;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputManager$Callbacks;-><init>(Lcom/android/server/wm/InputManager;)V

    return-void
.end method


# virtual methods
.method public checkInjectEventsPermission(II)Z
    .registers 5
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$400(Lcom/android/server/wm/InputManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dispatchUnhandledKey(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"    # Lcom/android/server/wm/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->dispatchUnhandledKey(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    iget-object v1, v0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    iget-object v0, v0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    if-eqz v0, :cond_15

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    iget-object v0, v0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/InputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V

    .line 558
    const/4 v0, 0x0

    monitor-exit v1

    .line 562
    :goto_14
    return v0

    .line 560
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1b

    .line 561
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 562
    const/4 v0, 0x1

    goto :goto_14

    .line 560
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getDoubleTapTimeout()I
    .registers 2

    .prologue
    .line 662
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method public getExcludedDeviceNames()[Ljava/lang/String;
    .registers 11

    .prologue
    .line 606
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 611
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 612
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 614
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_12
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_96
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_5c
    .catchall {:try_start_12 .. :try_end_17} :catchall_85

    .line 615
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_17
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 616
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 617
    const-string v7, "devices"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 620
    :cond_23
    :goto_23
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 621
    const-string v7, "device"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_2f} :catch_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2f} :catch_93
    .catchall {:try_start_17 .. :try_end_2f} :catchall_90

    move-result v7

    if-nez v7, :cond_45

    .line 634
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_8e

    :cond_37
    :goto_37
    move-object v1, v2

    .line 637
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :cond_38
    :goto_38
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 624
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_45
    const/4 v7, 0x0

    :try_start_46
    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 626
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_93
    .catchall {:try_start_46 .. :try_end_51} :catchall_90

    goto :goto_23

    .line 629
    .end local v4    # "name":Ljava/lang/String;
    :catch_52
    move-exception v7

    move-object v1, v2

    .line 634
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :goto_54
    if-eqz v1, :cond_38

    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_38

    :catch_5a
    move-exception v7

    goto :goto_38

    .line 631
    :catch_5c
    move-exception v3

    .line 632
    .local v3, "e":Ljava/lang/Exception;
    :goto_5d
    :try_start_5d
    const-string v7, "InputManager-Callbacks"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_5d .. :try_end_7f} :catchall_85

    .line 634
    if-eqz v1, :cond_38

    :try_start_81
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_5a

    goto :goto_38

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_85
    move-exception v7

    :goto_86
    if-eqz v1, :cond_8b

    :try_start_88
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    :cond_8b
    :goto_8b
    throw v7

    :catch_8c
    move-exception v8

    goto :goto_8b

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_8e
    move-exception v7

    goto :goto_37

    :catchall_90
    move-exception v7

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_86

    .line 631
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_93
    move-exception v3

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_5d

    .line 629
    :catch_96
    move-exception v7

    goto :goto_54
.end method

.method public getHoverTapSlop()I
    .registers 2

    .prologue
    .line 657
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method public getHoverTapTimeout()I
    .registers 2

    .prologue
    .line 652
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method public getKeyRepeatDelay()I
    .registers 2

    .prologue
    .line 647
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method public getKeyRepeatTimeout()I
    .registers 2

    .prologue
    .line 642
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method public getLongPressTimeout()I
    .registers 2

    .prologue
    .line 667
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public getMaxEventsPerSecond()I
    .registers 3

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, "result":I
    :try_start_1
    const-string v1, "windowsmgr.max_events_per_sec"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a} :catch_11

    move-result v0

    .line 677
    :goto_b
    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 684
    const/16 v0, 0x5a

    .line 686
    :cond_10
    return v0

    .line 675
    :catch_11
    move-exception v1

    goto :goto_b
.end method

.method public getPointerIcon()Landroid/view/PointerIcon;
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$400(Lcom/android/server/wm/InputManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public getPointerLayer()I
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getVirtualKeyQuietTimeMillis()I
    .registers 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$400(Lcom/android/server/wm/InputManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"    # Lcom/android/server/wm/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->interceptKeyBeforeDispatching(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 3
    .param p1, "policyFlags"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/wm/InputApplicationHandle;Lcom/android/server/wm/InputWindowHandle;)J
    .registers 5
    .param p1, "inputApplicationHandle"    # Lcom/android/server/wm/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/wm/InputWindowHandle;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/InputMonitor;->notifyANR(Lcom/android/server/wm/InputApplicationHandle;Lcom/android/server/wm/InputWindowHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"    # J

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->notifyConfigurationChanged()V

    .line 534
    return-void
.end method

.method public notifyInputChannelBroken(Lcom/android/server/wm/InputWindowHandle;)V
    .registers 3
    .param p1, "inputWindowHandle"    # Lcom/android/server/wm/InputWindowHandle;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->notifyInputChannelBroken(Lcom/android/server/wm/InputWindowHandle;)V

    .line 544
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/wm/InputManager$Callbacks;->this$0:Lcom/android/server/wm/InputManager;

    # getter for: Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputManager;->access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->notifyLidSwitchChanged(JZ)V

    .line 539
    return-void
.end method
