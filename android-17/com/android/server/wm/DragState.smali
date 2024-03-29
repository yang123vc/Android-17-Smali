.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDragApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

.field mDragInProgress:Z

.field mDragResult:Z

.field mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

.field mFlags:I

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSurface:Landroid/view/Surface;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpRegion:Landroid/graphics/Region;

.field mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/Surface;ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 64
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 65
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    .line 66
    iput p4, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 67
    iput-object p5, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method private getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;
    .registers 13
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .prologue
    .line 376
    const/4 v5, 0x0

    .line 377
    .local v5, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v7, p1

    .line 378
    .local v7, "x":I
    float-to-int v8, p2

    .line 379
    .local v8, "y":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v9, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 380
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 381
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_d
    if-ltz v3, :cond_38

    .line 382
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 383
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 384
    .local v2, "flags":I
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-nez v9, :cond_22

    .line 381
    :cond_1f
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 388
    :cond_22
    and-int/lit8 v9, v2, 0x10

    if-nez v9, :cond_1f

    .line 393
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 395
    and-int/lit8 v4, v2, 0x28

    .line 398
    .local v4, "touchFlags":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-nez v9, :cond_37

    if-nez v4, :cond_1f

    .line 400
    :cond_37
    move-object v5, v1

    .line 405
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "flags":I
    .end local v4    # "touchFlags":I
    :cond_38
    return-object v5
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .registers 15
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "result"    # Z

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v1, p2, v0

    .line 412
    .local v1, "winX":F
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v2, p3, v0

    .line 413
    .local v2, "winY":F
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_18

    .line 414
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v0

    .line 415
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v0

    :cond_18
    move v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 417
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method private sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .registers 16
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    .prologue
    const/4 v4, 0x0

    .line 196
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    .line 197
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 198
    .local v10, "winBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    if-eq v10, v0, :cond_12

    .line 222
    .end local v10    # "winBinder":Landroid/os/IBinder;
    :cond_11
    :goto_11
    return-void

    .line 206
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 207
    const/4 v1, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 210
    .local v9, "event":Landroid/view/DragEvent;
    :try_start_27
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_31} :catch_3f
    .catchall {:try_start_27 .. :try_end_31} :catchall_63

    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_11

    .line 218
    :goto_3b
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_11

    .line 213
    :catch_3f
    move-exception v8

    .line 214
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_40
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-start window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_63

    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_11

    goto :goto_3b

    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_63
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_71

    .line 218
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 217
    :cond_71
    throw v0
.end method


# virtual methods
.method broadcastDragEndedLw()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x4

    iget-boolean v6, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v8

    .line 249
    .local v8, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 251
    .local v10, "ws":Lcom/android/server/wm/WindowState;
    :try_start_1e
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_12

    .line 252
    :catch_24
    move-exception v7

    .line 253
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-end window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 256
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v10    # "ws":Lcom/android/server/wm/WindowState;
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 258
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 259
    return-void
.end method

.method broadcastDragStartedLw(FF)V
    .registers 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    :goto_a
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_33

    .line 180
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 170
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_31
    const/4 v2, 0x0

    goto :goto_a

    .line 182
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_33
    return-void
.end method

.method endDragLw()V
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 271
    return-void
.end method

.method getDragLayerLw()I
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method notifyDropLw(FF)Z
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 341
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_b

    .line 344
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 345
    const/4 v1, 0x1

    .line 371
    :cond_a
    :goto_a
    return v1

    .line 351
    :cond_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 352
    .local v11, "myPid":I
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 353
    .local v12, "token":Landroid/os/IBinder;
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 356
    .local v9, "evt":Landroid/view/DragEvent;
    :try_start_21
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 359
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 361
    .local v10, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_42} :catch_4f
    .catchall {:try_start_21 .. :try_end_42} :catchall_73

    .line 366
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v1, :cond_4b

    .line 367
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 370
    :cond_4b
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 371
    const/4 v1, 0x0

    goto :goto_a

    .line 362
    .end local v10    # "msg":Landroid/os/Message;
    :catch_4f
    move-exception v8

    .line 363
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_50
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t send drop notification to win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_73

    .line 364
    const/4 v1, 0x1

    .line 366
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v2, :cond_a

    .line 367
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_a

    .line 366
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_73
    move-exception v1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v2, :cond_7d

    .line 367
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 366
    :cond_7d
    throw v1
.end method

.method notifyMoveLw(FF)V
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 279
    .local v10, "myPid":I
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 281
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1e

    .line 286
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    move-result-object v12

    .line 293
    .local v12, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v12, :cond_23

    .line 334
    :goto_1d
    return-void

    .line 286
    .end local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :catchall_1e
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0

    .line 297
    .restart local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_23
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_34

    .line 298
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 299
    .local v11, "touchedBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    if-eq v11, v0, :cond_34

    .line 302
    const/4 v12, 0x0

    .line 307
    .end local v11    # "touchedBinder":Landroid/os/IBinder;
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v12, v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5b

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 314
    .local v9, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v10, v0, :cond_5b

    .line 316
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 319
    .end local v9    # "evt":Landroid/view/DragEvent;
    :cond_5b
    if-eqz v12, :cond_77

    .line 323
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v12

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 325
    .restart local v9    # "evt":Landroid/view/DragEvent;
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 326
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v10, v0, :cond_77

    .line 327
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_77} :catch_7a

    .line 333
    .end local v9    # "evt":Landroid/view/DragEvent;
    :cond_77
    :goto_77
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1d

    .line 330
    :catch_7a
    move-exception v8

    .line 331
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    const-string v1, "can\'t send drag notification to windows"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77
.end method

.method register()V
    .registers 10

    .prologue
    const-wide v7, 0x12a05f200L

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_14

    .line 87
    const-string v1, "WindowManager"

    const-string v2, "Duplicate register of drag input channel"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_13
    return-void

    .line 89
    :cond_14
    const-string v1, "drag"

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 90
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 91
    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 92
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragInputHandler:Landroid/view/InputHandler;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    .line 96
    new-instance v1, Lcom/android/server/wm/InputApplicationHandle;

    invoke-direct {v1, v6}, Lcom/android/server/wm/InputApplicationHandle;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    const-string v2, "drag"

    iput-object v2, v1, Lcom/android/server/wm/InputApplicationHandle;->name:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    iput-wide v7, v1, Lcom/android/server/wm/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 101
    new-instance v1, Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    invoke-direct {v1, v2, v6}, Lcom/android/server/wm/InputWindowHandle;-><init>(Lcom/android/server/wm/InputApplicationHandle;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const-string v2, "drag"

    iput-object v2, v1, Lcom/android/server/wm/InputWindowHandle;->name:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/wm/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->layer:I

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v4, v1, Lcom/android/server/wm/InputWindowHandle;->layoutParamsFlags:I

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/16 v2, 0x7e0

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->layoutParamsType:I

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-wide v7, v1, Lcom/android/server/wm/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean v5, v1, Lcom/android/server/wm/InputWindowHandle;->visible:Z

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean v4, v1, Lcom/android/server/wm/InputWindowHandle;->canReceiveKeys:Z

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean v5, v1, Lcom/android/server/wm/InputWindowHandle;->hasFocus:Z

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean v4, v1, Lcom/android/server/wm/InputWindowHandle;->hasWallpaper:Z

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean v4, v1, Lcom/android/server/wm/InputWindowHandle;->paused:Z

    .line 114
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->ownerPid:I

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->ownerUid:I

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v4, v1, Lcom/android/server/wm/InputWindowHandle;->inputFeatures:I

    .line 117
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/high16 v2, 0x3f800000

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v1, v1, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 123
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v4, v1, Lcom/android/server/wm/InputWindowHandle;->frameLeft:I

    .line 124
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v4, v1, Lcom/android/server/wm/InputWindowHandle;->frameTop:I

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->frameRight:I

    .line 126
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->frameBottom:I

    .line 132
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    goto/16 :goto_13
.end method

.method reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 75
    :cond_a
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 77
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 78
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 79
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 81
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 229
    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v2, :cond_18

    .line 231
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 232
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_a

    .line 241
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_18
    :goto_18
    return-void

    .line 239
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_19
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    goto :goto_18
.end method

.method unregister()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_d

    .line 139
    const-string v0, "WindowManager"

    const-string v1, "Unregister of nonexistent drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_c
    return-void

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 145
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 146
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 148
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 149
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    goto :goto_c
.end method
