.class public final Landroid/view/ViewRootImpl;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionController;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$InputMethodCallback;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InputEventMessage;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ResizedInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field public static final CLOSE_SYSTEM_DIALOGS:I = 0x3f6

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_DRAG_EVENT:I = 0x3f7

.field public static final DISPATCH_DRAG_LOCATION_EVENT:I = 0x3f8

.field public static final DISPATCH_GENERIC_MOTION:I = 0x3fa

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x3f9

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x3fd

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_ID:I = 0x3fe

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_TEXT:I = 0x3ff

.field public static final DO_PERFORM_ACCESSIBILITY_ACTION:I = 0x3fc

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field public static final PROCESS_INPUT_EVENTS:I = 0x400

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewancestor.profile_rendering"

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field public static final UPDATE_CONFIGURATION:I = 0x3fb

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mCurScrollY:I

.field final mCurrentDirty:Landroid/graphics/Rect;

.field mCurrentDragView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field private mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInputEventDeliverPostImeTimeNanos:J

.field private mInputEventDeliverTimeNanos:J

.field private mInputEventReceiveTimeNanos:J

.field private final mInputHandler:Landroid/view/InputHandler;

.field final mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mIsAnimating:Z

.field mIsCreating:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field mLastDrawDurationNanos:J

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastJoystickXDirection:I

.field mLastJoystickXKeyCode:I

.field mLastJoystickYDirection:I

.field mLastJoystickYKeyCode:I

.field mLastScrolledFocus:Landroid/view/View;

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTrackballTime:J

.field mLastTraversalFinishedTimeNanos:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field mOrigWindowType:I

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousDirty:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field private mProfileRendering:Z

.field mRealFocusedView:Landroid/view/View;

.field private mRenderProfiler:Ljava/lang/Thread;

.field private volatile mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field final mTargetSdkVersion:I

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field final mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    .line 132
    sput-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z

    .line 134
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 137
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 142
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 143
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 144
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 153
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    .line 157
    iput v4, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    .line 163
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 175
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 176
    iput v5, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 180
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 182
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    .line 221
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 223
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 224
    iput v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 228
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 242
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 245
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 246
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 272
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 273
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 280
    iput-wide v7, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 281
    iput-wide v7, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 302
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_15f

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_9a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 387
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1735
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 3781
    new-instance v0, Landroid/view/ViewRootImpl$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputHandler:Landroid/view/InputHandler;

    .line 4410
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    .line 342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 343
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 344
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 345
    iput v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 346
    iput v5, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 347
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 348
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 349
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 351
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 353
    new-instance v0, Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodCallback;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    .line 354
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 355
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 356
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 357
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 358
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 359
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 360
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 362
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 364
    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, v1, v2, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 365
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 367
    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 368
    const-string/jumbo v0, "viewancestor.profile_rendering"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    .line 370
    return-void

    :cond_15f
    move-object v0, v1

    .line 302
    goto/16 :goto_9a
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/InputQueue$FinishedCallback;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/view/Surface;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 381
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 382
    :try_start_3
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 373
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 374
    :try_start_3
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_c

    .line 375
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_c
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 3199
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_8

    .line 3231
    :cond_7
    :goto_7
    return v1

    .line 3204
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3205
    .local v0, "action":I
    if-eqz v0, :cond_11

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 3210
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_7

    .line 3219
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3220
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_7

    .line 3226
    :cond_24
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3227
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    goto :goto_7
.end method

.method private deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3059
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_b

    .line 3060
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 3063
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 3064
    .local v1, "source":I
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_25

    move v0, v2

    .line 3067
    .local v0, "isJoystick":Z
    :goto_14
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1c

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_27

    .line 3068
    :cond_1c
    if-eqz v0, :cond_21

    .line 3069
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3071
    :cond_21
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3091
    :goto_24
    return-void

    .end local v0    # "isJoystick":Z
    :cond_25
    move v0, v3

    .line 3064
    goto :goto_14

    .line 3076
    .restart local v0    # "isJoystick":Z
    :cond_27
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3077
    if-eqz v0, :cond_34

    .line 3078
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3080
    :cond_34
    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_24

    .line 3084
    :cond_38
    if-eqz v0, :cond_41

    .line 3086
    invoke-direct {p0, p1, v2}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3087
    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_24

    .line 3089
    :cond_41
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_24
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sendDone"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3256
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_a

    .line 3257
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3261
    :cond_a
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v2, :cond_16

    .line 3262
    :cond_12
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3289
    :goto_15
    return-void

    .line 3269
    :cond_16
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3270
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_15

    .line 3276
    :cond_23
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_3d

    .line 3277
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3278
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3d

    .line 3279
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v1

    .line 3282
    .local v1, "seq":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_15

    .line 3288
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "seq":I
    :cond_3d
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_15
.end method

.method private deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sendDone"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3311
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_e

    .line 3312
    :cond_a
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3416
    :goto_d
    return-void

    .line 3317
    :cond_e
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3318
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 3324
    :cond_18
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 3327
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 3328
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 3333
    :cond_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_51

    .line 3337
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 3338
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 3344
    :cond_51
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 3345
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 3350
    :cond_5d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_f5

    .line 3351
    const/4 v0, 0x0

    .line 3352
    .local v0, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_fa

    .line 3382
    :cond_6b
    :goto_6b
    if-eqz v0, :cond_f5

    .line 3383
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3384
    .local v1, "focused":Landroid/view/View;
    :goto_77
    if-eqz v1, :cond_f5

    .line 3385
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 3386
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_e8

    if-eq v2, v1, :cond_e8

    .line 3390
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3391
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_9e

    .line 3392
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3394
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3397
    :cond_9e
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 3398
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 3400
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_d

    .line 3354
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "v":Landroid/view/View;
    :sswitch_b2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 3355
    const/16 v0, 0x11

    goto :goto_6b

    .line 3359
    :sswitch_bb
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 3360
    const/16 v0, 0x42

    goto :goto_6b

    .line 3364
    :sswitch_c4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 3365
    const/16 v0, 0x21

    goto :goto_6b

    .line 3369
    :sswitch_cd
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 3370
    const/16 v0, 0x82

    goto :goto_6b

    .line 3374
    :sswitch_d6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 3375
    const/4 v0, 0x2

    goto :goto_6b

    .line 3376
    :cond_de
    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 3377
    const/4 v0, 0x1

    goto :goto_6b

    .line 3383
    :cond_e6
    const/4 v1, 0x0

    goto :goto_77

    .line 3406
    .restart local v1    # "focused":Landroid/view/View;
    .restart local v2    # "v":Landroid/view/View;
    :cond_e8
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 3407
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_d

    .line 3415
    .end local v0    # "direction":I
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "v":Landroid/view/View;
    :cond_f5
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_d

    .line 3352
    :sswitch_data_fa
    .sparse-switch
        0x13 -> :sswitch_c4
        0x14 -> :sswitch_cd
        0x15 -> :sswitch_b2
        0x16 -> :sswitch_bb
        0x3d -> :sswitch_d6
    .end sparse-switch
.end method

.method private deliverPointerEvent(Landroid/view/MotionEvent;Z)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    .line 2850
    .local v2, "isTouchEvent":Z
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_11

    .line 2851
    if-eqz v2, :cond_1d

    .line 2852
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v5}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2859
    :cond_11
    :goto_11
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_19

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_23

    .line 2860
    :cond_19
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2901
    :goto_1c
    return-void

    .line 2854
    :cond_1d
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v5}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_11

    .line 2865
    :cond_23
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_2c

    .line 2866
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 2870
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2871
    .local v0, "action":I
    if-eqz v0, :cond_36

    const/16 v3, 0x8

    if-ne v0, v3, :cond_39

    .line 2872
    :cond_36
    invoke-virtual {p0, v6}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 2876
    :cond_39
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v3, :cond_44

    .line 2877
    const/4 v3, 0x0

    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2884
    :cond_44
    if-eqz v2, :cond_56

    .line 2885
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 2886
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 2890
    :cond_56
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2894
    .local v1, "handled":Z
    if-eqz v1, :cond_62

    .line 2895
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1c

    .line 2900
    :cond_62
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1c
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;Z)V
    .registers 36
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z

    .prologue
    .line 2923
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_10

    .line 2924
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 2928
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_27

    .line 2929
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3052
    :goto_26
    return-void

    .line 2934
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2939
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 2941
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2942
    const-wide/32 v6, -0x80000000

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    goto :goto_26

    .line 2947
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v29, v0

    .line 2948
    .local v29, "x":Landroid/view/ViewRootImpl$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v31, v0

    .line 2950
    .local v31, "y":Landroid/view/ViewRootImpl$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2951
    .local v4, "curTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    const-wide/16 v12, 0xfa

    add-long/2addr v6, v12

    cmp-long v3, v6, v4

    if-gez v3, :cond_76

    .line 2954
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2955
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2956
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 2959
    :cond_76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 2960
    .local v27, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 2961
    .local v11, "metaState":I
    packed-switch v27, :pswitch_data_1c0

    .line 2986
    :goto_81
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v8, "X"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    .line 2987
    .local v30, "xOff":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v8, "Y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v32

    .line 2995
    .local v32, "yOff":F
    const/4 v9, 0x0

    .line 2996
    .local v9, "keycode":I
    const/16 v28, 0x0

    .line 2997
    .local v28, "movement":I
    const/high16 v25, 0x3f800000

    .line 2998
    .local v25, "accel":F
    cmpl-float v3, v30, v32

    if-lez v3, :cond_186

    .line 2999
    const/high16 v3, 0x40000000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v6

    div-float/2addr v3, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3000
    if-eqz v28, :cond_c9

    .line 3001
    if-lez v28, :cond_182

    const/16 v9, 0x16

    .line 3003
    :goto_bd
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 3004
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3016
    :cond_c9
    :goto_c9
    if-eqz v9, :cond_1b3

    .line 3017
    if-gez v28, :cond_d2

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 3018
    :cond_d2
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float v3, v3, v25

    float-to-int v0, v3

    move/from16 v26, v0

    .line 3022
    .local v26, "accelMovement":I
    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_f7

    .line 3025
    add-int/lit8 v28, v28, -0x1

    .line 3026
    sub-int v10, v26, v28

    .line 3027
    .local v10, "repeatCount":I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3032
    .end local v10    # "repeatCount":I
    :cond_f7
    :goto_f7
    if-lez v28, :cond_1af

    .line 3035
    add-int/lit8 v28, v28, -0x1

    .line 3036
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3037
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x400

    const/16 v24, 0x101

    move-wide v13, v4

    move-wide v15, v4

    move/from16 v18, v9

    move/from16 v20, v11

    invoke-direct/range {v12 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3041
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x400

    const/16 v24, 0x101

    move-wide v13, v4

    move-wide v15, v4

    move/from16 v18, v9

    move/from16 v20, v11

    invoke-direct/range {v12 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_f7

    .line 2963
    .end local v9    # "keycode":I
    .end local v25    # "accel":F
    .end local v26    # "accelMovement":I
    .end local v28    # "movement":I
    .end local v30    # "xOff":F
    .end local v32    # "yOff":F
    :pswitch_13a
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2964
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2965
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_81

    .line 2971
    :pswitch_15e
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2972
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2973
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_81

    .line 3001
    .restart local v9    # "keycode":I
    .restart local v25    # "accel":F
    .restart local v28    # "movement":I
    .restart local v30    # "xOff":F
    .restart local v32    # "yOff":F
    :cond_182
    const/16 v9, 0x15

    goto/16 :goto_bd

    .line 3006
    :cond_186
    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-lez v3, :cond_c9

    .line 3007
    const/high16 v3, 0x40000000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v6

    div-float/2addr v3, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3008
    if-eqz v28, :cond_c9

    .line 3009
    if-lez v28, :cond_1ac

    const/16 v9, 0x14

    .line 3011
    :goto_19e
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 3012
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_c9

    .line 3009
    :cond_1ac
    const/16 v9, 0x13

    goto :goto_19e

    .line 3046
    .restart local v26    # "accelMovement":I
    :cond_1af
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 3051
    .end local v26    # "accelMovement":I
    :cond_1b3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_26

    .line 2961
    nop

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_15e
    .end packed-switch
.end method

.method private destroyHardwareRenderer()V
    .registers 3

    .prologue
    .line 3739
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_18

    .line 3740
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 3741
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 3742
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 3744
    :cond_18
    return-void
.end method

.method private dispatchGenericMotion(Landroid/view/MotionEvent;Z)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z

    .prologue
    .line 3918
    const/16 v1, 0x3fa

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3919
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3920
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3922
    return-void

    .line 3920
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchKey(Landroid/view/KeyEvent;Z)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sendDone"    # Z

    .prologue
    .line 3882
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3883
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3884
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3889
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3890
    return-void

    .line 3884
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchMotion(Landroid/view/MotionEvent;Z)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z

    .prologue
    .line 3893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 3894
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_c

    .line 3895
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    .line 3901
    :goto_b
    return-void

    .line 3896
    :cond_c
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_14

    .line 3897
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    goto :goto_b

    .line 3899
    :cond_14
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchGenericMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_b
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;Z)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z

    .prologue
    .line 3904
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3905
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3906
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3908
    return-void

    .line 3906
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchTrackball(Landroid/view/MotionEvent;Z)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z

    .prologue
    .line 3911
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3912
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3913
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3915
    return-void

    .line 3913
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private draw(Z)V
    .registers 32
    .param p1, "fullRedrawNeeded"    # Z

    .prologue
    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v22, v0

    .line 1824
    .local v22, "surface":Landroid/view/Surface;
    if-eqz v22, :cond_e

    invoke-virtual/range {v22 .. v22}, Landroid/view/Surface;->isValid()Z

    move-result v25

    if-nez v25, :cond_f

    .line 2056
    :cond_e
    :goto_e
    return-void

    .line 1832
    :cond_f
    sget-boolean v25, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v25, :cond_38

    .line 1833
    sget-object v26, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v26

    .line 1834
    const/16 v25, 0x1

    :try_start_18
    sput-boolean v25, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 1835
    sget-object v25, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1836
    .local v9, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_21
    if-ge v15, v9, :cond_37

    .line 1837
    sget-object v25, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->post(Ljava/lang/Runnable;)Z

    .line 1836
    add-int/lit8 v15, v15, 0x1

    goto :goto_21

    .line 1839
    :cond_37
    monitor-exit v26
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_12f

    .line 1842
    .end local v9    # "count":I
    .end local v15    # "i":I
    :cond_38
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v25, v0

    if-eqz v25, :cond_70

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 1850
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_132

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v25

    if-eqz v25, :cond_132

    const/4 v5, 0x1

    .line 1851
    .local v5, "animating":Z
    :goto_85
    if-eqz v5, :cond_135

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getCurrY()I

    move-result v24

    .line 1856
    .local v24, "yoff":I
    :goto_91
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v24

    if-eq v0, v1, :cond_a5

    .line 1857
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 1858
    const/16 p1, 0x1

    .line 1860
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v6, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1861
    .local v6, "appScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v19, v0

    .line 1863
    .local v19, "scalingRequired":Z
    const/16 v17, 0x0

    .line 1864
    .local v17, "resizeAlpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_108

    .line 1865
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    move-wide/from16 v27, v0

    sub-long v11, v25, v27

    .line 1866
    .local v11, "deltaTime":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    cmp-long v25, v11, v25

    if-gez v25, :cond_13d

    .line 1867
    long-to-float v0, v11

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v4, v25, v26

    .line 1868
    .local v4, "amt":F
    sget-object v25, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1869
    const/4 v5, 0x1

    .line 1870
    const/high16 v25, 0x437f0000

    mul-float v25, v25, v4

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    rsub-int v0, v0, 0xff

    move/from16 v17, v0

    .line 1876
    .end local v4    # "amt":F
    .end local v11    # "deltaTime":J
    :cond_108
    :goto_108
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1877
    .local v13, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_141

    .line 1879
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 1880
    if-eqz v5, :cond_e

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12a

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1884
    :cond_12a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto/16 :goto_e

    .line 1839
    .end local v5    # "animating":Z
    .end local v6    # "appScale":F
    .end local v13    # "dirty":Landroid/graphics/Rect;
    .end local v17    # "resizeAlpha":I
    .end local v19    # "scalingRequired":Z
    .end local v24    # "yoff":I
    :catchall_12f
    move-exception v25

    :try_start_130
    monitor-exit v26
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v25

    .line 1850
    :cond_132
    const/4 v5, 0x0

    goto/16 :goto_85

    .line 1854
    .restart local v5    # "animating":Z
    :cond_135
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v24, v0

    .restart local v24    # "yoff":I
    goto/16 :goto_91

    .line 1872
    .restart local v6    # "appScale":F
    .restart local v11    # "deltaTime":J
    .restart local v17    # "resizeAlpha":I
    .restart local v19    # "scalingRequired":Z
    :cond_13d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_108

    .line 1889
    .end local v11    # "deltaTime":J
    .restart local v13    # "dirty":Landroid/graphics/Rect;
    :cond_141
    if-eqz p1, :cond_18c

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1891
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v6

    const/high16 v28, 0x3f000000

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v6

    const/high16 v29, 0x3f000000

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1894
    :cond_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_24b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_24b

    .line 1895
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1ba

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_23c

    .line 1896
    :cond_1ba
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 1897
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 1898
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1903
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 1905
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    .line 1906
    .local v10, "currentDirty":Landroid/graphics/Rect;
    if-eqz v5, :cond_1fd

    .line 1907
    const/4 v10, 0x0

    .line 1910
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_23c

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->set(IIII)V

    .line 1915
    .end local v10    # "currentDirty":Landroid/graphics/Rect;
    :cond_23c
    if-eqz v5, :cond_e

    .line 1916
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1917
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1932
    :cond_24b
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_259

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_367

    .line 1935
    :cond_259
    :try_start_259
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 1936
    .local v16, "left":I
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1937
    .local v23, "top":I
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 1938
    .local v18, "right":I
    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    .line 1945
    .local v7, "bottom":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8

    .line 1954
    .local v8, "canvas":Landroid/graphics/Canvas;
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_293

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_293

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_293

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v7, v0, :cond_2a1

    .line 1956
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1960
    :cond_2a1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mDensity:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_2ac
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_259 .. :try_end_2ac} :catch_376
    .catch Ljava/lang/IllegalArgumentException; {:try_start_259 .. :try_end_2ac} :catch_3a8

    .line 1982
    :try_start_2ac
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2ba

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_362

    .line 1983
    :cond_2ba
    const-wide/16 v20, 0x0

    .line 2003
    .local v20, "startTime":J
    invoke-virtual {v8}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v25

    if-eqz v25, :cond_2c4

    if-eqz v24, :cond_2cf

    .line 2004
    :cond_2c4
    const/16 v25, 0x0

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2007
    :cond_2cf
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 2008
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x20

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I
    :try_end_2fe
    .catchall {:try_start_2ac .. :try_end_2fe} :catchall_3e0

    .line 2019
    const/16 v25, 0x0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    :try_start_30a
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_324

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 2023
    :cond_324
    if-eqz v19, :cond_3be

    sget v25, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_328
    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_346
    .catchall {:try_start_30a .. :try_end_346} :catchall_3c2

    .line 2028
    :try_start_346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    move/from16 v25, v0

    if-nez v25, :cond_362

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_362
    .catchall {:try_start_346 .. :try_end_362} :catchall_3e0

    .line 2044
    .end local v20    # "startTime":J
    :cond_362
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2052
    .end local v7    # "bottom":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v16    # "left":I
    .end local v18    # "right":I
    .end local v23    # "top":I
    :cond_367
    if-eqz v5, :cond_e

    .line 2053
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2054
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1961
    :catch_376
    move-exception v14

    .line 1962
    .local v14, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v25, "ViewRootImpl"

    const-string v26, "OutOfResourcesException locking surface"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1964
    :try_start_382
    sget-object v25, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v25

    if-nez v25, :cond_39e

    .line 1965
    const-string v25, "ViewRootImpl"

    const-string v26, "No processes killed for memory; killing self"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/os/Process;->killProcess(I)V
    :try_end_39e
    .catch Landroid/os/RemoteException; {:try_start_382 .. :try_end_39e} :catch_3e7

    .line 1970
    :cond_39e
    :goto_39e
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_e

    .line 1972
    .end local v14    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_3a8
    move-exception v14

    .line 1973
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v25, "ViewRootImpl"

    const-string v26, "IllegalArgumentException locking surface"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1977
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_e

    .line 2023
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "bottom":I
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v16    # "left":I
    .restart local v18    # "right":I
    .restart local v20    # "startTime":J
    .restart local v23    # "top":I
    :cond_3be
    const/16 v25, 0x0

    goto/16 :goto_328

    .line 2028
    :catchall_3c2
    move-exception v25

    :try_start_3c3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    move/from16 v26, v0

    if-nez v26, :cond_3df

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_3df
    throw v25
    :try_end_3e0
    .catchall {:try_start_3c3 .. :try_end_3e0} :catchall_3e0

    .line 2044
    .end local v20    # "startTime":J
    :catchall_3e0
    move-exception v25

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v25

    .line 1968
    .end local v7    # "bottom":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v16    # "left":I
    .end local v18    # "right":I
    .end local v23    # "top":I
    .local v14, "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_3e7
    move-exception v25

    goto :goto_39e
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .registers 11
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 601
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 602
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 605
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_f

    .line 656
    :cond_e
    :goto_e
    return-void

    .line 608
    :cond_f
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4d

    move v2, v4

    .line 611
    .local v2, "hardwareAccelerated":Z
    :goto_17
    if-eqz v2, :cond_e

    .line 612
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 625
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4f

    move v0, v4

    .line 627
    .local v0, "fakeHwAccelerated":Z
    :goto_26
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_51

    move v1, v4

    .line 630
    .local v1, "forceHwAccelerated":Z
    :goto_2d
    sget-boolean v6, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v6, :cond_37

    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v6, :cond_82

    if-eqz v1, :cond_82

    .line 633
    :cond_37
    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-nez v6, :cond_53

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_53

    .line 635
    const-string v4, "HardwareRenderer"

    const-string v5, "Attempting to initialize hardware acceleration outside of the main thread, aborting"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    .end local v2    # "hardwareAccelerated":Z
    :cond_4d
    move v2, v5

    .line 608
    goto :goto_17

    .restart local v2    # "hardwareAccelerated":Z
    :cond_4f
    move v0, v5

    .line 625
    goto :goto_26

    .restart local v0    # "fakeHwAccelerated":Z
    :cond_51
    move v1, v5

    .line 627
    goto :goto_2d

    .line 640
    .restart local v1    # "forceHwAccelerated":Z
    :cond_53
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7e

    move v3, v4

    .line 641
    .local v3, "translucent":Z
    :goto_59
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_66

    .line 642
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6, v4}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 644
    :cond_66
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v7, 0x2

    invoke-static {v7, v3}, Landroid/view/HardwareRenderer;->createGlRenderer(IZ)Landroid/view/HardwareRenderer;

    move-result-object v7

    iput-object v7, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 645
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_80

    :goto_79
    iput-boolean v4, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto :goto_e

    .end local v3    # "translucent":Z
    :cond_7e
    move v3, v5

    .line 640
    goto :goto_59

    .restart local v3    # "translucent":Z
    :cond_80
    move v4, v5

    .line 645
    goto :goto_79

    .line 647
    .end local v3    # "translucent":Z
    :cond_82
    if-eqz v0, :cond_e

    .line 653
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_e
.end method

.method private enqueueInputEvent(Landroid/os/Message;J)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    .line 3852
    invoke-static {p1}, Landroid/view/ViewRootImpl$InputEventMessage;->obtain(Landroid/os/Message;)Landroid/view/ViewRootImpl$InputEventMessage;

    move-result-object v1

    .line 3853
    .local v1, "inputMessage":Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    if-nez v2, :cond_10

    .line 3854
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3862
    :goto_a
    const/16 v2, 0x400

    invoke-virtual {p0, v2, p2, p3}, Landroid/view/ViewRootImpl;->sendEmptyMessageAtTime(IJ)Z

    .line 3863
    return-void

    .line 3856
    :cond_10
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3857
    .local v0, "currMessage":Landroid/view/ViewRootImpl$InputEventMessage;
    :goto_12
    iget-object v2, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v2, :cond_19

    .line 3858
    iget-object v0, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    goto :goto_12

    .line 3860
    :cond_19
    iput-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    goto :goto_a
.end method

.method private ensureTouchModeLocally(Z)Z
    .registers 3
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 2758
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 v0, 0x0

    .line 2763
    :goto_7
    return v0

    .line 2760
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 2761
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 2763
    if-eqz p1, :cond_1a

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_7

    :cond_1a
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    goto :goto_7
.end method

.method private enterTouchMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2767
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_36

    .line 2768
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2772
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2773
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_36

    .line 2775
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2777
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_26

    .line 2780
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 2791
    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :goto_25
    return v2

    .line 2783
    .restart local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .restart local v1    # "focused":Landroid/view/View;
    :cond_26
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 2784
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2785
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2786
    const/4 v2, 0x1

    goto :goto_25

    .line 2791
    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :cond_36
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 7
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2802
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2803
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_5
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_28

    move-object v1, v0

    .line 2804
    check-cast v1, Landroid/view/ViewGroup;

    .line 2805
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_1b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2815
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :goto_1a
    return-object v1

    .line 2809
    .restart local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_1b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v1, v2

    .line 2810
    goto :goto_1a

    .line 2812
    :cond_23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2814
    goto :goto_5

    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_28
    move-object v1, v2

    .line 2815
    goto :goto_1a
.end method

.method private finishInputEvent(Landroid/view/InputEvent;Z)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "handled"    # Z

    .prologue
    .line 2677
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-nez v0, :cond_c

    .line 2678
    const-string v0, "ViewRootImpl"

    const-string v1, "Attempted to tell the input queue that the current input event is finished but there is no input event actually in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :goto_b
    return-void

    .line 2719
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    invoke-virtual {v0, p2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 2720
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    goto :goto_b
.end method

.method private finishKeyEvent(Landroid/view/KeyEvent;ZZ)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sendDone"    # Z
    .param p3, "handled"    # Z

    .prologue
    .line 3419
    if-eqz p2, :cond_5

    .line 3420
    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 3422
    :cond_5
    return-void
.end method

.method private finishMotionEvent(Landroid/view/MotionEvent;ZZ)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sendDone"    # Z
    .param p3, "handled"    # Z

    .prologue
    .line 2904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2905
    if-eqz p2, :cond_8

    .line 2906
    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 2914
    :cond_8
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2326
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 2327
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 2328
    check-cast v1, Landroid/view/ViewGroup;

    .line 2329
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2330
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 2331
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2330
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2334
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 3543
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 3544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3546
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_20

    .line 3547
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 3549
    :cond_20
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getGfxInfo(Landroid/view/View;[I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # [I

    .prologue
    .line 3677
    iget-object v1, p1, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 3678
    .local v1, "displayList":Landroid/view/DisplayList;
    const/4 v4, 0x0

    aget v5, p2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p2, v4

    .line 3679
    if-eqz v1, :cond_15

    .line 3680
    const/4 v4, 0x1

    aget v5, p2, v4

    invoke-virtual {v1}, Landroid/view/DisplayList;->getSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p2, v4

    .line 3683
    :cond_15
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2d

    move-object v2, p1

    .line 3684
    check-cast v2, Landroid/view/ViewGroup;

    .line 3686
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3687
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_2d

    .line 3688
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 3687
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3691
    .end local v0    # "count":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_2d
    return-void
.end method

.method private getRootMeasureSpec(II)I
    .registers 5
    .param p1, "windowSize"    # I
    .param p2, "rootDimension"    # I

    .prologue
    const/high16 v1, 0x40000000

    .line 1715
    packed-switch p2, :pswitch_data_16

    .line 1727
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1730
    .local v0, "measureSpec":I
    :goto_9
    return v0

    .line 1719
    .end local v0    # "measureSpec":I
    :pswitch_a
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1720
    .restart local v0    # "measureSpec":I
    goto :goto_9

    .line 1723
    .end local v0    # "measureSpec":I
    :pswitch_f
    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1724
    .restart local v0    # "measureSpec":I
    goto :goto_9

    .line 1715
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .registers 2

    .prologue
    .line 4460
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 4461
    .local v0, "rq":Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_b

    .line 4466
    :goto_a
    return-object v0

    .line 4464
    :cond_b
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 4465
    .restart local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .registers 6
    .param p0, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 307
    sget-object v2, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_3
    sget-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 310
    :try_start_7
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 311
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v1

    sput-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    .line 313
    const/4 v1, 0x1

    sput-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_27
    .catchall {:try_start_7 .. :try_end_20} :catchall_24

    .line 317
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_20
    :goto_20
    :try_start_20
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v2

    return-object v1

    .line 318
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw v1

    .line 314
    :catch_27
    move-exception v1

    goto :goto_20
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 3433
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_14

    .line 3434
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 3436
    .local v3, "what":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_18

    .line 3441
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 3505
    .end local v3    # "what":I
    :cond_14
    :goto_14
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 3506
    return-void

    .line 3445
    .restart local v3    # "what":I
    :cond_18
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9e

    .line 3446
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3447
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3453
    :goto_21
    const/4 v4, 0x2

    if-eq v3, v4, :cond_26

    if-ne v3, v8, :cond_53

    .line 3454
    :cond_26
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 3455
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3a

    .line 3456
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 3459
    :cond_3a
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_47

    .line 3460
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 3463
    :cond_47
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 3464
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 3468
    :cond_53
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3471
    .local v1, "prevDragView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 3474
    .local v2, "result":Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_73

    .line 3476
    if-eqz v1, :cond_68

    .line 3477
    :try_start_61
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 3479
    :cond_68
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_73

    .line 3480
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_73} :catch_a4

    .line 3488
    :cond_73
    :goto_73
    if-ne v3, v8, :cond_96

    .line 3489
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3491
    :try_start_77
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_96} :catch_ad

    .line 3500
    :cond_96
    :goto_96
    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    .line 3501
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 3449
    .end local v1    # "prevDragView":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_9e
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_21

    .line 3482
    .restart local v1    # "prevDragView":Landroid/view/View;
    .restart local v2    # "result":Z
    :catch_a4
    move-exception v0

    .line 3483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3493
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_ad
    move-exception v0

    .line 3494
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96
.end method

.method private handleFinishedEvent(IZ)V
    .registers 6
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3292
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 3295
    .local v0, "event":Landroid/view/KeyEvent;
    if-eqz v0, :cond_11

    .line 3296
    if-ltz p1, :cond_12

    move v1, v2

    .line 3297
    .local v1, "sendDone":Z
    :goto_c
    if-eqz p2, :cond_14

    .line 3298
    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3303
    .end local v1    # "sendDone":Z
    :cond_11
    :goto_11
    return-void

    .line 3296
    :cond_12
    const/4 v1, 0x0

    goto :goto_c

    .line 3300
    .restart local v1    # "sendDone":Z
    :cond_14
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_11
.end method

.method static isInTouchMode()Z
    .registers 1

    .prologue
    .line 406
    sget-boolean v0, Landroid/view/ViewRootImpl;->mInitialized:Z

    if-eqz v0, :cond_c

    .line 408
    :try_start_4
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 412
    :goto_a
    return v0

    .line 409
    :catch_b
    move-exception v0

    .line 412
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 3164
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    .line 3179
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 3177
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 3164
    nop

    :sswitch_data_c
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7a -> :sswitch_9
        0x7b -> :sswitch_9
    .end sparse-switch
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 3188
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2317
    if-ne p0, p1, :cond_4

    .line 2322
    :cond_3
    :goto_3
    return v1

    .line 2321
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2322
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static joystickAxisValueToDirection(F)I
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 3149
    const/high16 v0, 0x3f000000

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_8

    .line 3150
    const/4 v0, 0x1

    .line 3154
    :goto_7
    return v0

    .line 3151
    :cond_8
    const/high16 v0, -0x41000000

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_10

    .line 3152
    const/4 v0, -0x1

    goto :goto_7

    .line 3154
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private leaveTouchMode()Z
    .registers 6

    .prologue
    const/16 v4, 0x82

    const/4 v2, 0x0

    .line 2819
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_39

    .line 2820
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2822
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2823
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1f

    move v1, v2

    .line 2841
    :goto_1e
    return v1

    .line 2826
    :cond_1f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x40000

    if-eq v1, v3, :cond_2d

    move v1, v2

    .line 2830
    goto :goto_1e

    .line 2836
    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2837
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_39

    .line 2838
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_1e

    .end local v0    # "focused":Landroid/view/View;
    :cond_39
    move v1, v2

    .line 2841
    goto :goto_1e
.end method

.method private performTraversals()V
    .registers 79

    .prologue
    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v41, v0

    .line 859
    .local v41, "host":Landroid/view/View;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->processInputEvents(Z)V

    .line 867
    if-eqz v41, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_15

    .line 1685
    :cond_14
    :goto_14
    return-void

    .line 870
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 871
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 872
    const/16 v76, 0x0

    .line 873
    .local v76, "windowSizeMayChange":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    move/from16 v37, v0

    .line 874
    .local v37, "fullRedrawNeeded":Z
    const/16 v54, 0x0

    .line 875
    .local v54, "newSurface":Z
    const/16 v68, 0x0

    .line 876
    .local v68, "surfaceChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v52, v0

    .line 883
    .local v52, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    .line 885
    .local v18, "attachInfo":Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v71

    .line 886
    .local v71, "viewVisibility":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v71

    if-ne v4, v0, :cond_49

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_2bf

    :cond_49
    const/16 v72, 0x1

    .line 889
    .local v72, "viewVisibilityChanged":Z
    :goto_4b
    const/16 v59, 0x0

    .line 890
    .local v59, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_5c

    .line 891
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 892
    const/16 v68, 0x1

    .line 893
    move-object/from16 v59, v52

    .line 895
    :cond_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v4}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v25

    .line 896
    .local v25, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v5, :cond_8e

    .line 897
    move-object/from16 v59, v52

    .line 898
    const/16 v37, 0x1

    .line 899
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 900
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_2c3

    .line 901
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x20000001

    and-int/2addr v4, v5

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 902
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 909
    :cond_8e
    :goto_8e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    .line 912
    .local v36, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_2f3

    .line 913
    const/16 v37, 0x1

    .line 914
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 916
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-ne v4, v5, :cond_2d5

    .line 918
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 919
    .local v32, "disp":Landroid/view/Display;
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 920
    .local v65, "size":Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 921
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 922
    .local v30, "desiredWindowWidth":I
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    .line 934
    .end local v32    # "disp":Landroid/view/Display;
    .end local v65    # "size":Landroid/graphics/Point;
    .local v29, "desiredWindowHeight":I
    :goto_ce
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 938
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 939
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 940
    move/from16 v0, v71

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 941
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 942
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 943
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 944
    const/16 v72, 0x0

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 946
    const/4 v4, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 963
    :cond_119
    :goto_119
    if-eqz v72, :cond_13e

    .line 964
    move/from16 v0, v71

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 965
    move-object/from16 v0, v41

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 966
    if-nez v71, :cond_130

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_133

    .line 967
    :cond_130
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 969
    :cond_133
    const/16 v4, 0x8

    move/from16 v0, v71

    if-ne v0, v4, :cond_13e

    .line 972
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 976
    :cond_13e
    const/16 v48, 0x0

    .line 978
    .local v48, "insetsChanged":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_21e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_21e

    .line 981
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    .line 985
    .local v61, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_319

    .line 988
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v4, :cond_316

    const/4 v4, 0x1

    :goto_174
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 989
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 1023
    :cond_17f
    :goto_17f
    const/16 v38, 0x0

    .line 1024
    .local v38, "goodMeasure":Z
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1e5

    .line 1029
    invoke-virtual/range {v61 .. v61}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 1030
    .local v58, "packageMetrics":Landroid/util/DisplayMetrics;
    const v4, 0x1050007

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v6, 0x1

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1031
    const/16 v19, 0x0

    .line 1032
    .local v19, "baseSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1b1

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    move/from16 v19, v0

    .line 1036
    :cond_1b1
    if-eqz v19, :cond_1e5

    move/from16 v0, v30

    move/from16 v1, v19

    if-le v0, v1, :cond_1e5

    .line 1037
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1038
    .local v24, "childWidthMeasureSpec":I
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1039
    .local v23, "childHeightMeasureSpec":I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1042
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-nez v4, :cond_394

    .line 1043
    const/16 v38, 0x1

    .line 1061
    .end local v19    # "baseSize":I
    .end local v23    # "childHeightMeasureSpec":I
    .end local v24    # "childWidthMeasureSpec":I
    .end local v58    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1e5
    :goto_1e5
    if-nez v38, :cond_21e

    .line 1062
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1063
    .restart local v24    # "childWidthMeasureSpec":I
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1064
    .restart local v23    # "childHeightMeasureSpec":I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1065
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_21c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_21e

    .line 1066
    :cond_21c
    const/16 v76, 0x1

    .line 1077
    .end local v23    # "childHeightMeasureSpec":I
    .end local v24    # "childWidthMeasureSpec":I
    .end local v38    # "goodMeasure":Z
    .end local v61    # "res":Landroid/content/res/Resources;
    :cond_21e
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_270

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_270

    .line 1079
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1080
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v56, v0

    .line 1081
    .local v56, "oldScreenOn":Z
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move/from16 v57, v0

    .line 1082
    .local v57, "oldVis":I
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move/from16 v55, v0

    .line 1083
    .local v55, "oldHasSystemUiListeners":Z
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1084
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1085
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1086
    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 1087
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v0, v56

    if-ne v4, v0, :cond_26e

    move-object/from16 v0, v18

    iget v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move/from16 v0, v57

    if-ne v4, v0, :cond_26e

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move/from16 v0, v55

    if-eq v4, v0, :cond_270

    .line 1090
    :cond_26e
    move-object/from16 v59, v52

    .line 1093
    .end local v55    # "oldHasSystemUiListeners":Z
    .end local v56    # "oldScreenOn":Z
    .end local v57    # "oldVis":I
    :cond_270
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_27d

    .line 1094
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1095
    move-object/from16 v59, v52

    .line 1098
    :cond_27d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_289

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_3d6

    .line 1099
    :cond_289
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1100
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v62, v0

    .line 1104
    .local v62, "resizeMode":I
    if-nez v62, :cond_3d6

    .line 1105
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1106
    .local v16, "N":I
    const/16 v44, 0x0

    .local v44, "i":I
    :goto_2a2
    move/from16 v0, v44

    move/from16 v1, v16

    if-ge v0, v1, :cond_3ba

    .line 1107
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2bc

    .line 1108
    const/16 v62, 0x10

    .line 1106
    :cond_2bc
    add-int/lit8 v44, v44, 0x1

    goto :goto_2a2

    .line 886
    .end local v16    # "N":I
    .end local v25    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v29    # "desiredWindowHeight":I
    .end local v30    # "desiredWindowWidth":I
    .end local v36    # "frame":Landroid/graphics/Rect;
    .end local v44    # "i":I
    .end local v48    # "insetsChanged":Z
    .end local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v62    # "resizeMode":I
    .end local v72    # "viewVisibilityChanged":Z
    :cond_2bf
    const/16 v72, 0x0

    goto/16 :goto_4b

    .line 904
    .restart local v25    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v59    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v72    # "viewVisibilityChanged":Z
    :cond_2c3
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000000

    or-int/2addr v4, v5

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 905
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_8e

    .line 924
    .restart local v36    # "frame":Landroid/graphics/Rect;
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 926
    .restart local v58    # "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    .line 927
    .restart local v30    # "desiredWindowWidth":I
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    .restart local v29    # "desiredWindowHeight":I
    goto/16 :goto_ce

    .line 952
    .end local v29    # "desiredWindowHeight":I
    .end local v30    # "desiredWindowWidth":I
    .end local v58    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_2f3
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 953
    .restart local v30    # "desiredWindowWidth":I
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v29

    .line 954
    .restart local v29    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v0, v30

    if-ne v0, v4, :cond_30b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v0, v29

    if-eq v0, v4, :cond_119

    .line 957
    :cond_30b
    const/16 v37, 0x1

    .line 958
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 959
    const/16 v76, 0x1

    goto/16 :goto_119

    .line 988
    .restart local v48    # "insetsChanged":Z
    .restart local v61    # "res":Landroid/content/res/Resources;
    :cond_316
    const/4 v4, 0x0

    goto/16 :goto_174

    .line 991
    :cond_319
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32b

    .line 992
    const/16 v48, 0x1

    .line 994
    :cond_32b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_348

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 999
    :cond_348
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_356

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_17f

    .line 1001
    :cond_356
    const/16 v76, 0x1

    .line 1003
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-ne v4, v5, :cond_382

    .line 1005
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 1006
    .restart local v32    # "disp":Landroid/view/Display;
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1007
    .restart local v65    # "size":Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1008
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 1009
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    .line 1010
    goto/16 :goto_17f

    .line 1011
    .end local v32    # "disp":Landroid/view/Display;
    .end local v65    # "size":Landroid/graphics/Point;
    :cond_382
    invoke-virtual/range {v61 .. v61}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 1012
    .restart local v58    # "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    .line 1013
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    goto/16 :goto_17f

    .line 1046
    .restart local v19    # "baseSize":I
    .restart local v23    # "childHeightMeasureSpec":I
    .restart local v24    # "childWidthMeasureSpec":I
    .restart local v38    # "goodMeasure":Z
    :cond_394
    add-int v4, v19, v30

    div-int/lit8 v19, v4, 0x2

    .line 1049
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1050
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1053
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-nez v4, :cond_1e5

    .line 1055
    const/16 v38, 0x1

    goto/16 :goto_1e5

    .line 1111
    .end local v19    # "baseSize":I
    .end local v23    # "childHeightMeasureSpec":I
    .end local v24    # "childWidthMeasureSpec":I
    .end local v38    # "goodMeasure":Z
    .end local v58    # "packageMetrics":Landroid/util/DisplayMetrics;
    .end local v61    # "res":Landroid/content/res/Resources;
    .restart local v16    # "N":I
    .restart local v44    # "i":I
    .restart local v62    # "resizeMode":I
    :cond_3ba
    if-nez v62, :cond_3be

    .line 1112
    const/16 v62, 0x20

    .line 1114
    :cond_3be
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v62

    if-eq v4, v0, :cond_3d6

    .line 1116
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v62

    move-object/from16 v0, v52

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1119
    move-object/from16 v59, v52

    .line 1124
    .end local v16    # "N":I
    .end local v44    # "i":I
    .end local v62    # "resizeMode":I
    :cond_3d6
    if-eqz v59, :cond_3ef

    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_3ef

    .line 1125
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_3ef

    .line 1126
    const/4 v4, -0x3

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1130
    :cond_3ef
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_735

    if-eqz v76, :cond_735

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_43d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_43d

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_424

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move/from16 v0, v30

    if-ge v4, v0, :cond_424

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v5, :cond_43d

    :cond_424
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_735

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v0, v29

    if-ge v4, v0, :cond_735

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v5, :cond_735

    :cond_43d
    const/16 v75, 0x1

    .line 1137
    .local v75, "windowShouldResize":Z
    :goto_43f
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v27

    .line 1140
    .local v27, "computesInternalInsets":Z
    const/16 v49, 0x0

    .line 1141
    .local v49, "insetsPending":Z
    const/16 v60, 0x0

    .line 1143
    .local v60, "relayoutResult":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_459

    if-nez v75, :cond_459

    if-nez v48, :cond_459

    if-nez v72, :cond_459

    if-eqz v59, :cond_9f6

    .line 1146
    :cond_459
    if-nez v71, :cond_467

    .line 1156
    if-eqz v27, :cond_739

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_465

    if-eqz v72, :cond_739

    :cond_465
    const/16 v49, 0x1

    .line 1159
    :cond_467
    :goto_467
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_47b

    .line 1160
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1161
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 1164
    :cond_47b
    const/16 v42, 0x0

    .line 1165
    .local v42, "hwInitialized":Z
    const/16 v28, 0x0

    .line 1167
    .local v28, "contentInsetsChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v39

    .line 1170
    .local v39, "hadSurface":Z
    const/16 v34, 0x0

    .line 1171
    .local v34, "fl":I
    if-eqz v59, :cond_4b1

    .line 1172
    :try_start_48b
    move-object/from16 v0, v59

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v34, v0

    .line 1173
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v4, :cond_4a1

    .line 1174
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1176
    :cond_4a1
    move-object/from16 v0, v18

    iget v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1177
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move-object/from16 v0, v59

    iput-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1184
    :cond_4b1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v69

    .line 1185
    .local v69, "surfaceGenerationId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v71

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v60

    .line 1187
    if-eqz v59, :cond_4cd

    .line 1188
    move/from16 v0, v34

    move-object/from16 v1, v59

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1196
    :cond_4cd
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_4ec

    .line 1199
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_73d

    const/4 v4, 0x1

    :goto_4e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/res/Configuration;->seq:I

    .line 1203
    :cond_4ec
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_740

    const/16 v28, 0x1

    .line 1205
    :goto_4fe
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_744

    const/16 v73, 0x1

    .line 1207
    .local v73, "visibleInsetsChanged":Z
    :goto_510
    if-eqz v28, :cond_65d

    .line 1208
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v4, :cond_645

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v4, :cond_645

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_645

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_645

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v4, :cond_645

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_645

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_645

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v4

    if-eqz v4, :cond_645

    if-eqz v52, :cond_645

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_645

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1218
    const/16 v26, 0x0

    .line 1219
    .local v26, "completed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->getCanvas()Landroid/view/HardwareCanvas;
    :try_end_570
    .catch Landroid/os/RemoteException; {:try_start_48b .. :try_end_570} :catch_7a3

    move-result-object v43

    .line 1220
    .local v43, "hwRendererCanvas":Landroid/view/HardwareCanvas;
    const/16 v50, 0x0

    .line 1222
    .local v50, "layerCanvas":Landroid/view/HardwareCanvas;
    :try_start_573
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v4, :cond_748

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v11}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1229
    :cond_590
    :goto_590
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v50

    .line 1230
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1231
    const/4 v4, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 1232
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->save()I

    move-result v63

    .line 1234
    .local v63, "restoreCount":I
    const/high16 v4, -0x1000000

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_7a6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_7a6

    const/16 v64, 0x1

    .line 1239
    .local v64, "scrolling":Z
    :goto_5cc
    if-eqz v64, :cond_7aa

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v77

    .line 1241
    .local v77, "yoff":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1246
    :goto_5dd
    const/4 v4, 0x0

    move/from16 v0, v77

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_5f6

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1251
    :cond_5f6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    .line 1254
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    .line 1256
    const/16 v26, 0x1

    .line 1258
    move-object/from16 v0, v50

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_623
    .catch Ljava/lang/OutOfMemoryError; {:try_start_573 .. :try_end_623} :catch_775
    .catchall {:try_start_573 .. :try_end_623} :catchall_7b2

    .line 1262
    if-eqz v50, :cond_628

    .line 1263
    :try_start_625
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1265
    :cond_628
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_645

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1267
    if-nez v26, :cond_645

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1269
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1274
    .end local v26    # "completed":Z
    .end local v43    # "hwRendererCanvas":Landroid/view/HardwareCanvas;
    .end local v50    # "layerCanvas":Landroid/view/HardwareCanvas;
    .end local v63    # "restoreCount":I
    .end local v64    # "scrolling":Z
    .end local v77    # "yoff":I
    :cond_645
    :goto_645
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1279
    :cond_65d
    if-eqz v73, :cond_66c

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1285
    :cond_66c
    if-nez v39, :cond_801

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_699

    .line 1294
    const/16 v54, 0x1

    .line 1295
    const/16 v37, 0x1

    .line 1296
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_689
    .catch Landroid/os/RemoteException; {:try_start_625 .. :try_end_689} :catch_7a3

    if-eqz v4, :cond_699

    .line 1300
    :try_start_68b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z
    :try_end_698
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_68b .. :try_end_698} :catch_7d6
    .catch Landroid/os/RemoteException; {:try_start_68b .. :try_end_698} :catch_7a3

    move-result v42

    .line 1353
    .end local v69    # "surfaceGenerationId":I
    .end local v73    # "visibleInsetsChanged":Z
    :cond_699
    :goto_699
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1354
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1359
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1360
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_8f2

    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_6d3

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v5, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1369
    :cond_6d3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1371
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_c0a

    .line 1372
    if-nez v39, :cond_8a1

    .line 1373
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1375
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1378
    .local v21, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_89f

    .line 1379
    move-object/from16 v17, v21

    .local v17, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .local v51, "len$":I
    const/16 v45, 0x0

    .local v45, "i$":I
    :goto_721
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_89f

    aget-object v20, v17, v45

    .line 1380
    .local v20, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1379
    add-int/lit8 v45, v45, 0x1

    goto :goto_721

    .line 1130
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "computesInternalInsets":Z
    .end local v28    # "contentInsetsChanged":Z
    .end local v34    # "fl":I
    .end local v39    # "hadSurface":Z
    .end local v42    # "hwInitialized":Z
    .end local v45    # "i$":I
    .end local v49    # "insetsPending":Z
    .end local v51    # "len$":I
    .end local v60    # "relayoutResult":I
    .end local v75    # "windowShouldResize":Z
    :cond_735
    const/16 v75, 0x0

    goto/16 :goto_43f

    .line 1156
    .restart local v27    # "computesInternalInsets":Z
    .restart local v49    # "insetsPending":Z
    .restart local v60    # "relayoutResult":I
    .restart local v75    # "windowShouldResize":Z
    :cond_739
    const/16 v49, 0x0

    goto/16 :goto_467

    .line 1199
    .restart local v28    # "contentInsetsChanged":Z
    .restart local v34    # "fl":I
    .restart local v39    # "hadSurface":Z
    .restart local v42    # "hwInitialized":Z
    .restart local v69    # "surfaceGenerationId":I
    :cond_73d
    const/4 v4, 0x0

    goto/16 :goto_4e0

    .line 1203
    :cond_740
    const/16 v28, 0x0

    goto/16 :goto_4fe

    .line 1205
    :cond_744
    const/16 v73, 0x0

    goto/16 :goto_510

    .line 1225
    .restart local v26    # "completed":Z
    .restart local v43    # "hwRendererCanvas":Landroid/view/HardwareCanvas;
    .restart local v50    # "layerCanvas":Landroid/view/HardwareCanvas;
    .restart local v73    # "visibleInsetsChanged":Z
    :cond_748
    :try_start_748
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v5, :cond_764

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v5, :cond_590

    .line 1227
    :cond_764
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->resize(II)V
    :try_end_773
    .catch Ljava/lang/OutOfMemoryError; {:try_start_748 .. :try_end_773} :catch_775
    .catchall {:try_start_748 .. :try_end_773} :catchall_7b2

    goto/16 :goto_590

    .line 1259
    :catch_775
    move-exception v33

    .line 1260
    .local v33, "e":Ljava/lang/OutOfMemoryError;
    :try_start_776
    const-string v4, "ViewRootImpl"

    const-string v5, "Not enough memory for content change anim buffer"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77f
    .catchall {:try_start_776 .. :try_end_77f} :catchall_7b2

    .line 1262
    if-eqz v50, :cond_784

    .line 1263
    :try_start_781
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1265
    :cond_784
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_645

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1267
    if-nez v26, :cond_645

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1269
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;
    :try_end_7a1
    .catch Landroid/os/RemoteException; {:try_start_781 .. :try_end_7a1} :catch_7a3

    goto/16 :goto_645

    .line 1347
    .end local v26    # "completed":Z
    .end local v33    # "e":Ljava/lang/OutOfMemoryError;
    .end local v43    # "hwRendererCanvas":Landroid/view/HardwareCanvas;
    .end local v50    # "layerCanvas":Landroid/view/HardwareCanvas;
    .end local v69    # "surfaceGenerationId":I
    .end local v73    # "visibleInsetsChanged":Z
    :catch_7a3
    move-exception v4

    goto/16 :goto_699

    .line 1237
    .restart local v26    # "completed":Z
    .restart local v43    # "hwRendererCanvas":Landroid/view/HardwareCanvas;
    .restart local v50    # "layerCanvas":Landroid/view/HardwareCanvas;
    .restart local v63    # "restoreCount":I
    .restart local v69    # "surfaceGenerationId":I
    .restart local v73    # "visibleInsetsChanged":Z
    :cond_7a6
    const/16 v64, 0x0

    goto/16 :goto_5cc

    .line 1243
    .restart local v64    # "scrolling":Z
    :cond_7aa
    :try_start_7aa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v77, v0
    :try_end_7b0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7aa .. :try_end_7b0} :catch_775
    .catchall {:try_start_7aa .. :try_end_7b0} :catchall_7b2

    .restart local v77    # "yoff":I
    goto/16 :goto_5dd

    .line 1262
    .end local v63    # "restoreCount":I
    .end local v64    # "scrolling":Z
    .end local v77    # "yoff":I
    :catchall_7b2
    move-exception v4

    if-eqz v50, :cond_7b8

    .line 1263
    :try_start_7b5
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1265
    :cond_7b8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v5, :cond_7d5

    .line 1266
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1267
    if-nez v26, :cond_7d5

    .line 1268
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->destroy()V

    .line 1269
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    :cond_7d5
    throw v4

    .line 1301
    .end local v26    # "completed":Z
    .end local v43    # "hwRendererCanvas":Landroid/view/HardwareCanvas;
    .end local v50    # "layerCanvas":Landroid/view/HardwareCanvas;
    :catch_7d6
    move-exception v33

    .line 1302
    .local v33, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v4, "ViewRootImpl"

    const-string v5, "OutOfResourcesException initializing HW surface"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e0
    .catch Landroid/os/RemoteException; {:try_start_7b5 .. :try_end_7e0} :catch_7a3

    .line 1304
    :try_start_7e0
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_7fa

    .line 1305
    const-string v4, "ViewRootImpl"

    const-string v5, "No processes killed for memory; killing self"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_7fa
    .catch Landroid/os/RemoteException; {:try_start_7e0 .. :try_end_7fa} :catch_d6e

    .line 1310
    :cond_7fa
    :goto_7fa
    const/4 v4, 0x1

    :try_start_7fb
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_14

    .line 1315
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_801
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_849

    .line 1318
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 1319
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_826

    .line 1321
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1323
    :cond_826
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_699

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_699

    .line 1327
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->destroy(Z)V

    goto/16 :goto_699

    .line 1329
    :cond_849
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v69

    if-eq v0, v4, :cond_699

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_699

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_861
    .catch Landroid/os/RemoteException; {:try_start_7fb .. :try_end_861} :catch_7a3

    if-eqz v4, :cond_699

    .line 1331
    const/16 v37, 0x1

    .line 1333
    :try_start_865
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/SurfaceHolder;)V
    :try_end_872
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_865 .. :try_end_872} :catch_874
    .catch Landroid/os/RemoteException; {:try_start_865 .. :try_end_872} :catch_7a3

    goto/16 :goto_699

    .line 1334
    :catch_874
    move-exception v33

    .line 1335
    .restart local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_875
    const-string v4, "ViewRootImpl"

    const-string v5, "OutOfResourcesException updating HW surface"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87e
    .catch Landroid/os/RemoteException; {:try_start_875 .. :try_end_87e} :catch_7a3

    .line 1337
    :try_start_87e
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_898

    .line 1338
    const-string v4, "ViewRootImpl"

    const-string v5, "No processes killed for memory; killing self"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_898
    .catch Landroid/os/RemoteException; {:try_start_87e .. :try_end_898} :catch_d6b

    .line 1343
    :cond_898
    :goto_898
    const/4 v4, 0x1

    :try_start_899
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_89d
    .catch Landroid/os/RemoteException; {:try_start_899 .. :try_end_89d} :catch_7a3

    goto/16 :goto_14

    .line 1383
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v69    # "surfaceGenerationId":I
    .end local v73    # "visibleInsetsChanged":Z
    .restart local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_89f
    const/16 v68, 0x1

    .line 1385
    .end local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_8a1
    if-eqz v68, :cond_8ed

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v52

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v4, v5, v6, v11, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1389
    .restart local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_8ed

    .line 1390
    move-object/from16 v17, v21

    .restart local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51    # "len$":I
    const/16 v45, 0x0

    .restart local v45    # "i$":I
    :goto_8cd
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_8ed

    aget-object v20, v17, v45

    .line 1391
    .restart local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5, v6, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1390
    add-int/lit8 v45, v45, 0x1

    goto :goto_8cd

    .line 1396
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v45    # "i$":I
    .end local v51    # "len$":I
    :cond_8ed
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1415
    :cond_8f2
    :goto_8f2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_94a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_94a

    .line 1417
    if-nez v42, :cond_92a

    if-nez v75, :cond_92a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_92a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_94a

    .line 1420
    :cond_92a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 1421
    if-nez v42, :cond_94a

    .line 1422
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/SurfaceHolder;)V

    .line 1427
    :cond_94a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_9f6

    .line 1428
    and-int/lit8 v4, v60, 0x1

    if-eqz v4, :cond_c6f

    const/4 v4, 0x1

    :goto_955
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v35

    .line 1430
    .local v35, "focusChangedDueToTouchMode":Z
    if-nez v35, :cond_973

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_973

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_973

    if-eqz v28, :cond_9f6

    .line 1432
    :cond_973
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1433
    .restart local v24    # "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1442
    .restart local v23    # "childHeightMeasureSpec":I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1447
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v74

    .line 1448
    .local v74, "width":I
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    .line 1449
    .local v40, "height":I
    const/16 v53, 0x0

    .line 1451
    .local v53, "measureAgain":Z
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9c4

    .line 1452
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v74

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v74, v74, v4

    .line 1453
    const/high16 v4, 0x40000000

    move/from16 v0, v74

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1455
    const/16 v53, 0x1

    .line 1457
    :cond_9c4
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9e6

    .line 1458
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v40

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v40, v40, v4

    .line 1459
    const/high16 v4, 0x40000000

    move/from16 v0, v40

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1461
    const/16 v53, 0x1

    .line 1464
    :cond_9e6
    if-eqz v53, :cond_9f1

    .line 1468
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1471
    :cond_9f1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1476
    .end local v23    # "childHeightMeasureSpec":I
    .end local v24    # "childWidthMeasureSpec":I
    .end local v28    # "contentInsetsChanged":Z
    .end local v34    # "fl":I
    .end local v35    # "focusChangedDueToTouchMode":Z
    .end local v39    # "hadSurface":Z
    .end local v40    # "height":I
    .end local v42    # "hwInitialized":Z
    .end local v53    # "measureAgain":Z
    .end local v74    # "width":I
    :cond_9f6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_c72

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_c72

    const/16 v31, 0x1

    .line 1477
    .local v31, "didLayout":Z
    :goto_a04
    if-nez v31, :cond_a0c

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_c76

    :cond_a0c
    const/16 v70, 0x1

    .line 1479
    .local v70, "triggerGlobalLayoutListener":Z
    :goto_a0e
    if-eqz v31, :cond_ab3

    .line 1480
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1481
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 1485
    const-wide/16 v66, 0x0

    .line 1489
    .local v66, "startTime":J
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5, v6, v11}, Landroid/view/View;->layout(IIII)V

    .line 1506
    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_ab3

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x1

    aget v6, v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, v41

    iget v12, v0, Landroid/view/View;->mRight:I

    add-int/2addr v11, v12

    move-object/from16 v0, v41

    iget v12, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, v41

    iget v13, v0, Landroid/view/View;->mBottom:I

    add-int/2addr v12, v13

    move-object/from16 v0, v41

    iget v13, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/Region;->set(IIII)Z

    .line 1514
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1515
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_a8d

    .line 1516
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1519
    :cond_a8d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab3

    .line 1520
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1523
    :try_start_aa6
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_ab3
    .catch Landroid/os/RemoteException; {:try_start_aa6 .. :try_end_ab3} :catch_d68

    .line 1536
    .end local v66    # "startTime":J
    :cond_ab3
    :goto_ab3
    if-eqz v70, :cond_ad2

    .line 1537
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1538
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1540
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_ad2

    .line 1541
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback()V

    .line 1545
    :cond_ad2
    if-eqz v27, :cond_b34

    .line 1547
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v47, v0

    .line 1548
    .local v47, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 1551
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1554
    if-nez v49, :cond_af4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b34

    .line 1555
    :cond_af4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_c7a

    .line 1562
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1563
    .local v7, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1564
    .local v8, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v9

    .line 1572
    .local v9, "touchableRegion":Landroid/graphics/Region;
    :goto_b27
    :try_start_b27
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v47

    iget v6, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v4 .. v9}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_b34
    .catch Landroid/os/RemoteException; {:try_start_b27 .. :try_end_b34} :catch_d65

    .line 1579
    .end local v7    # "contentInsets":Landroid/graphics/Rect;
    .end local v8    # "visibleInsets":Landroid/graphics/Rect;
    .end local v9    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_b34
    :goto_b34
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_b62

    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_b62

    .line 1584
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_c88

    .line 1585
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/View;->requestFocus(I)Z

    .line 1586
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 1597
    :cond_b62
    :goto_b62
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 1598
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1599
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1600
    move/from16 v0, v71

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 1602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_bc8

    .line 1603
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v46

    .line 1605
    .local v46, "imTarget":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v46

    if-eq v0, v4, :cond_bc8

    .line 1606
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 1607
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 1608
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v10, :cond_bc8

    if-eqz v46, :cond_bc8

    .line 1609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_c96

    const/4 v14, 0x1

    :goto_bbf
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v15, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v10 .. v15}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1617
    .end local v10    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v46    # "imTarget":Z
    :cond_bc8
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_bd4

    if-eqz v71, :cond_c99

    :cond_bd4
    const/16 v22, 0x1

    .line 1620
    .local v22, "cancelDraw":Z
    :goto_bd6
    if-nez v22, :cond_d17

    if-nez v54, :cond_d17

    .line 1621
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_ca4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ca4

    .line 1622
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_bec
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_c9d

    .line 1623
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 1622
    add-int/lit8 v44, v44, 0x1

    goto :goto_bec

    .line 1397
    .end local v22    # "cancelDraw":Z
    .end local v31    # "didLayout":Z
    .end local v44    # "i":I
    .end local v70    # "triggerGlobalLayoutListener":Z
    .restart local v28    # "contentInsetsChanged":Z
    .restart local v34    # "fl":I
    .restart local v39    # "hadSurface":Z
    .restart local v42    # "hwInitialized":Z
    :cond_c0a
    if-eqz v39, :cond_8f2

    .line 1398
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1399
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1400
    .restart local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1401
    if-eqz v21, :cond_c45

    .line 1402
    move-object/from16 v17, v21

    .restart local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51    # "len$":I
    const/16 v45, 0x0

    .restart local v45    # "i$":I
    :goto_c31
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_c45

    aget-object v20, v17, v45

    .line 1403
    .restart local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1402
    add-int/lit8 v45, v45, 0x1

    goto :goto_c31

    .line 1406
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v45    # "i$":I
    .end local v51    # "len$":I
    :cond_c45
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1408
    :try_start_c4e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    iput-object v5, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_c59
    .catchall {:try_start_c4e .. :try_end_c59} :catchall_c64

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_8f2

    :catchall_c64
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 1428
    .end local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_c6f
    const/4 v4, 0x0

    goto/16 :goto_955

    .line 1476
    .end local v28    # "contentInsetsChanged":Z
    .end local v34    # "fl":I
    .end local v39    # "hadSurface":Z
    .end local v42    # "hwInitialized":Z
    :cond_c72
    const/16 v31, 0x0

    goto/16 :goto_a04

    .line 1477
    .restart local v31    # "didLayout":Z
    :cond_c76
    const/16 v70, 0x0

    goto/16 :goto_a0e

    .line 1566
    .restart local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v70    # "triggerGlobalLayoutListener":Z
    :cond_c7a
    move-object/from16 v0, v47

    iget-object v7, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 1567
    .restart local v7    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v8, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 1568
    .restart local v8    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v9, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .restart local v9    # "touchableRegion":Landroid/graphics/Region;
    goto/16 :goto_b27

    .line 1590
    .end local v7    # "contentInsets":Landroid/graphics/Rect;
    .end local v8    # "visibleInsets":Landroid/graphics/Rect;
    .end local v9    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_c88
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_b62

    .line 1610
    .restart local v10    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v46    # "imTarget":Z
    :cond_c96
    const/4 v14, 0x0

    goto/16 :goto_bbf

    .line 1617
    .end local v10    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v46    # "imTarget":Z
    :cond_c99
    const/16 v22, 0x0

    goto/16 :goto_bd6

    .line 1625
    .restart local v22    # "cancelDraw":Z
    .restart local v44    # "i":I
    :cond_c9d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1627
    .end local v44    # "i":I
    :cond_ca4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1634
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->draw(Z)V

    .line 1640
    and-int/lit8 v4, v60, 0x2

    if-nez v4, :cond_cba

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_14

    .line 1645
    :cond_cba
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1646
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_d09

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_d09

    .line 1647
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1649
    .restart local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_d09

    .line 1650
    move-object/from16 v17, v21

    .restart local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51    # "len$":I
    const/16 v45, 0x0

    .restart local v45    # "i$":I
    :goto_ced
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_d09

    aget-object v20, v17, v45

    .line 1651
    .restart local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    instance-of v4, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_d06

    .line 1652
    check-cast v20, Landroid/view/SurfaceHolder$Callback2;

    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1650
    :cond_d06
    add-int/lit8 v45, v45, 0x1

    goto :goto_ced

    .line 1659
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v45    # "i$":I
    .end local v51    # "len$":I
    :cond_d09
    :try_start_d09
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_d12
    .catch Landroid/os/RemoteException; {:try_start_d09 .. :try_end_d12} :catch_d14

    goto/16 :goto_14

    .line 1660
    :catch_d14
    move-exception v4

    goto/16 :goto_14

    .line 1665
    :cond_d17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_d4e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d4e

    .line 1666
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_d29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_d47

    .line 1667
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 1666
    add-int/lit8 v44, v44, 0x1

    goto :goto_d29

    .line 1669
    :cond_d47
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1673
    .end local v44    # "i":I
    :cond_d4e
    and-int/lit8 v4, v60, 0x2

    if-eqz v4, :cond_d57

    .line 1674
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1676
    :cond_d57
    if-eqz v37, :cond_d5e

    .line 1677
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1680
    :cond_d5e
    if-nez v71, :cond_14

    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_14

    .line 1574
    .end local v22    # "cancelDraw":Z
    .restart local v7    # "contentInsets":Landroid/graphics/Rect;
    .restart local v8    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v9    # "touchableRegion":Landroid/graphics/Region;
    .restart local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_d65
    move-exception v4

    goto/16 :goto_b34

    .line 1524
    .end local v7    # "contentInsets":Landroid/graphics/Rect;
    .end local v8    # "visibleInsets":Landroid/graphics/Rect;
    .end local v9    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v66    # "startTime":J
    :catch_d68
    move-exception v4

    goto/16 :goto_ab3

    .line 1341
    .end local v31    # "didLayout":Z
    .end local v66    # "startTime":J
    .end local v70    # "triggerGlobalLayoutListener":Z
    .restart local v28    # "contentInsetsChanged":Z
    .restart local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v34    # "fl":I
    .restart local v39    # "hadSurface":Z
    .restart local v42    # "hwInitialized":Z
    .restart local v69    # "surfaceGenerationId":I
    .restart local v73    # "visibleInsetsChanged":Z
    :catch_d6b
    move-exception v4

    goto/16 :goto_898

    .line 1308
    :catch_d6e
    move-exception v4

    goto/16 :goto_7fa
.end method

.method private postSendWindowContentChangedCallback()V
    .registers 4

    .prologue
    .line 3994
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_c

    .line 3995
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 3998
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_20

    .line 3999
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mIsPending:Z

    .line 4000
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4003
    :cond_20
    return-void
.end method

.method private processInputEvents(Z)V
    .registers 4
    .param p1, "outOfOrder"    # Z

    .prologue
    .line 844
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v1, :cond_1e

    .line 845
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    iget-object v1, v1, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->handleMessage(Landroid/os/Message;)V

    .line 846
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 847
    .local v0, "tmpMessage":Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    iget-object v1, v1, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 848
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputEventMessage;->recycle()V

    .line 849
    if-eqz p1, :cond_0

    .line 850
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    goto :goto_0

    .line 853
    .end local v0    # "tmpMessage":Landroid/view/ViewRootImpl$InputEventMessage;
    :cond_1e
    return-void
.end method

.method private profileRendering(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1764
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_1d

    .line 1765
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 1766
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    if-nez v0, :cond_1e

    .line 1767
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/view/ViewRootImpl$1;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    const-string v2, "Rendering Profiler"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    .line 1788
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1794
    :cond_1d
    :goto_1d
    return-void

    .line 1790
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    goto :goto_1d
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .registers 21
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "viewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3566
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 3567
    .local v14, "appScale":F
    const/16 v16, 0x0

    .line 3568
    .local v16, "restore":Z
    if-eqz p1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_1e

    .line 3569
    const/16 v16, 0x1

    .line 3570
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 3571
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 3573
    :cond_1e
    if-eqz p1, :cond_20

    .line 3576
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 3578
    if-eqz p1, :cond_5f

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_5f

    .line 3580
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_5f

    .line 3581
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3586
    :cond_5f
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f000000

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_d1

    const/4 v8, 0x1

    :goto_88
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 3594
    .local v15, "relayoutResult":I
    if-eqz v16, :cond_a9

    .line 3595
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 3598
    :cond_a9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_d0

    .line 3599
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 3600
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3601
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3603
    :cond_d0
    return v15

    .line 3586
    .end local v15    # "relayoutResult":I
    :cond_d1
    const/4 v8, 0x0

    goto :goto_88
.end method

.method private removeSendWindowContentChangedCallback()V
    .registers 2

    .prologue
    .line 4010
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_9

    .line 4011
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4013
    :cond_9
    return-void
.end method

.method private sendAccessibilityEvents()V
    .registers 4

    .prologue
    .line 3977
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3985
    :cond_8
    :goto_8
    return-void

    .line 3980
    :cond_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3981
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3982
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_8

    .line 3983
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_8
.end method

.method private startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    .registers 4
    .param p1, "finishedCallback"    # Landroid/view/InputQueue$FinishedCallback;

    .prologue
    .line 2660
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-eqz v0, :cond_b

    .line 2661
    const-string v0, "ViewRootImpl"

    const-string v1, "Received a new input event from the input queue but there is already an unfinished input event in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    :cond_b
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    .line 2672
    return-void
.end method

.method private trackFPS()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1803
    .local v3, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_14

    .line 1804
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 1805
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 1820
    :cond_13
    :goto_13
    return-void

    .line 1807
    :cond_14
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 1808
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1809
    .local v5, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v1, v3, v8

    .line 1810
    .local v1, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v3, v8

    .line 1811
    .local v6, "totalTime":J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 1813
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_13

    .line 1814
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 1815
    .local v0, "fps":F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 1817
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_13
.end method

.method private updateJoystickDirection(Landroid/view/MotionEvent;Z)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "synthesizeNewKeys"    # Z

    .prologue
    .line 3094
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 3095
    .local v2, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 3096
    .local v9, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v10

    .line 3097
    .local v10, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    .line 3099
    .local v13, "source":I
    const/16 v1, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3100
    .local v14, "xDirection":I
    if-nez v14, :cond_26

    .line 3101
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3104
    :cond_26
    const/16 v1, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3105
    .local v15, "yDirection":I
    if-nez v15, :cond_3c

    .line 3106
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3109
    :cond_3c
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    if-eq v14, v1, :cond_87

    .line 3110
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    if-eqz v1, :cond_62

    .line 3111
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3114
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3117
    :cond_62
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    .line 3119
    if-eqz v14, :cond_87

    if-eqz p2, :cond_87

    .line 3120
    if-lez v14, :cond_d3

    const/16 v1, 0x16

    :goto_6e
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3122
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3128
    :cond_87
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    if-eq v15, v1, :cond_d2

    .line 3129
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    if-eqz v1, :cond_ad

    .line 3130
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3133
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3136
    :cond_ad
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    .line 3138
    if-eqz v15, :cond_d2

    if-eqz p2, :cond_d2

    .line 3139
    if-lez v15, :cond_d6

    const/16 v1, 0x14

    :goto_b9
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3141
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3146
    :cond_d2
    return-void

    .line 3120
    :cond_d3
    const/16 v1, 0x15

    goto :goto_6e

    .line 3139
    :cond_d6
    const/16 v1, 0x13

    goto :goto_b9
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 785
    return-void
.end method

.method checkThread()V
    .registers 3

    .prologue
    .line 4038
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 4039
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4042
    :cond_10
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4027
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2192
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2194
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2197
    .local v0, "oldFocus":Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2198
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_27

    .line 2200
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2201
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2206
    :cond_26
    :goto_26
    return-void

    .line 2203
    :cond_27
    if-eqz v0, :cond_26

    .line 2204
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_26
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 4024
    return-void
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 3665
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 3666
    return-void
.end method

.method destroyHardwareLayers()V
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 588
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 590
    const/16 v0, 0x3c

    invoke-static {v0}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 598
    :cond_1d
    :goto_1d
    return-void

    .line 593
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 595
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    goto :goto_1d
.end method

.method destroyHardwareResources()V
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_21

    .line 572
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 573
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    .line 575
    :cond_19
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 577
    :cond_21
    return-void
.end method

.method public die(Z)V
    .registers 3
    .param p1, "immediate"    # Z

    .prologue
    .line 3694
    if-eqz p1, :cond_6

    .line 3695
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 3699
    :goto_5
    return-void

    .line 3697
    :cond_6
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendEmptyMessage(I)Z

    goto :goto_5
.end method

.method public dispatchAppVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 3925
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3926
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_9
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3927
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3928
    return-void

    .line 3926
    :cond_f
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3944
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3945
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3946
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3947
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3948
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2243
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_27

    .line 2244
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2246
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    .line 2248
    :cond_22
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2251
    :cond_27
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 2252
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 2254
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 2256
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2257
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 2258
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 2260
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 2262
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2264
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_6e

    .line 2265
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 2266
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 2267
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 2272
    :cond_5b
    :goto_5b
    :try_start_5b
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_62} :catch_78

    .line 2278
    :goto_62
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_6d

    .line 2279
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2280
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 2282
    :cond_6d
    return-void

    .line 2268
    :cond_6e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_5b

    .line 2269
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    goto :goto_5b

    .line 2273
    :catch_78
    move-exception v0

    goto :goto_62
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 3952
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 3953
    const/16 v1, 0x3f8

    .line 3954
    .local v1, "what":I
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    .line 3958
    :goto_c
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3959
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3960
    return-void

    .line 3956
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_14
    const/16 v1, 0x3f7

    .restart local v1    # "what":I
    goto :goto_c
.end method

.method public dispatchFinishedEvent(IZ)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .prologue
    .line 3747
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3748
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3749
    if-eqz p2, :cond_11

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3750
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3751
    return-void

    .line 3749
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public dispatchGetNewSurface()V
    .registers 3

    .prologue
    .line 3931
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3932
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3933
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3866
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V

    .line 3867
    return-void
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "coveredInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "reportDraw"    # Z
    .param p6, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3759
    if-eqz p5, :cond_43

    const/16 v2, 0x3eb

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3760
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_24

    .line 3761
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3762
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3763
    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 3764
    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 3766
    :cond_24
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3767
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3768
    new-instance v1, Landroid/view/ViewRootImpl$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$ResizedInfo;-><init>(Landroid/view/ViewRootImpl;)V

    .line 3769
    .local v1, "ri":Landroid/view/ViewRootImpl$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    .line 3770
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 3771
    iput-object p6, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 3772
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3773
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3774
    return-void

    .line 3759
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ri":Landroid/view/ViewRootImpl$ResizedInfo;
    :cond_43
    const/16 v2, 0x3ea

    goto :goto_4
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .registers 7
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 3964
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 3965
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 3966
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 3967
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 3968
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 3969
    const/16 v1, 0x3f9

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3970
    return-void
.end method

.method disposeResizeBuffer()V
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_c

    .line 816
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 819
    :cond_c
    return-void
.end method

.method doDie()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3702
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3704
    monitor-enter p0

    .line 3705
    :try_start_5
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_f

    .line 3706
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 3707
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 3710
    :cond_f
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_42

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_42

    .line 3711
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3713
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 3714
    .local v0, "viewVisibility":I
    iget v2, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v2, v0, :cond_25

    const/4 v1, 0x1

    .line 3715
    .local v1, "viewVisibilityChanged":Z
    :cond_25
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_44

    if-nez v2, :cond_2b

    if-eqz v1, :cond_3d

    .line 3720
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3d

    .line 3722
    sget-object v2, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3d} :catch_47
    .catchall {:try_start_2b .. :try_end_3d} :catchall_44

    .line 3728
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3730
    .end local v0    # "viewVisibility":I
    .end local v1    # "viewVisibilityChanged":Z
    :cond_42
    monitor-exit p0

    .line 3731
    return-void

    .line 3730
    :catchall_44
    move-exception v2

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_44

    throw v2

    .line 3724
    .restart local v0    # "viewVisibility":I
    .restart local v1    # "viewVisibilityChanged":Z
    :catch_47
    move-exception v2

    goto :goto_3d
.end method

.method public dumpGfxInfo(Ljava/io/PrintWriter;[I)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "info"    # [I

    .prologue
    const/4 v1, 0x0

    .line 3669
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 3670
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 3674
    :goto_a
    return-void

    .line 3672
    :cond_b
    const/4 v0, 0x1

    aput v1, p2, v0

    aput v1, p2, v1

    goto :goto_a
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .registers 5
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "sendDone"    # Z

    .prologue
    .line 3235
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .line 3236
    .local v0, "seq":I
    if-gez v0, :cond_7

    const/4 v0, 0x0

    .line 3237
    :cond_7
    iput v0, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    .line 3238
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3239
    if-eqz p2, :cond_11

    .end local v0    # "seq":I
    :goto_10
    return v0

    .restart local v0    # "seq":I
    :cond_11
    neg-int v0, v0

    goto :goto_10
.end method

.method ensureTouchMode(Z)Z
    .registers 4
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 2735
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_8

    const/4 v1, 0x0

    .line 2745
    :goto_7
    return v1

    .line 2739
    :cond_8
    :try_start_8
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_12

    .line 2745
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_7

    .line 2740
    :catch_12
    move-exception v0

    .line 2741
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 3657
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3658
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 3659
    const/4 v0, 0x0

    .line 3661
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2210
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2212
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_12

    .line 2213
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2214
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2230
    :cond_12
    :goto_12
    return-void

    .line 2219
    :cond_13
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2220
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_3c

    const/4 v0, 0x1

    .line 2224
    .local v0, "descendantsHaveDibsOnFocus":Z
    :goto_2e
    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2226
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_12

    .line 2220
    .end local v0    # "descendantsHaveDibsOnFocus":Z
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;
    .registers 3

    .prologue
    .line 3553
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 3554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3557
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    if-nez v0, :cond_17

    .line 3558
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    .line 3560
    :cond_17
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 776
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_d

    .line 777
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_d
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .registers 2

    .prologue
    .line 811
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    .line 3532
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 3533
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 3534
    return-void
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 2417
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    .line 2366
    :pswitch_a
    const-string v0, "DO_TRAVERSAL"

    goto :goto_9

    .line 2368
    :pswitch_d
    const-string v0, "DIE"

    goto :goto_9

    .line 2370
    :pswitch_10
    const-string v0, "RESIZED"

    goto :goto_9

    .line 2372
    :pswitch_13
    const-string v0, "RESIZED_REPORT"

    goto :goto_9

    .line 2374
    :pswitch_16
    const-string v0, "WINDOW_FOCUS_CHANGED"

    goto :goto_9

    .line 2376
    :pswitch_19
    const-string v0, "DISPATCH_KEY"

    goto :goto_9

    .line 2378
    :pswitch_1c
    const-string v0, "DISPATCH_POINTER"

    goto :goto_9

    .line 2380
    :pswitch_1f
    const-string v0, "DISPATCH_TRACKBALL"

    goto :goto_9

    .line 2382
    :pswitch_22
    const-string v0, "DISPATCH_APP_VISIBILITY"

    goto :goto_9

    .line 2384
    :pswitch_25
    const-string v0, "DISPATCH_GET_NEW_SURFACE"

    goto :goto_9

    .line 2386
    :pswitch_28
    const-string v0, "FINISHED_EVENT"

    goto :goto_9

    .line 2388
    :pswitch_2b
    const-string v0, "DISPATCH_KEY_FROM_IME"

    goto :goto_9

    .line 2390
    :pswitch_2e
    const-string v0, "FINISH_INPUT_CONNECTION"

    goto :goto_9

    .line 2392
    :pswitch_31
    const-string v0, "CHECK_FOCUS"

    goto :goto_9

    .line 2394
    :pswitch_34
    const-string v0, "CLOSE_SYSTEM_DIALOGS"

    goto :goto_9

    .line 2396
    :pswitch_37
    const-string v0, "DISPATCH_DRAG_EVENT"

    goto :goto_9

    .line 2398
    :pswitch_3a
    const-string v0, "DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_9

    .line 2400
    :pswitch_3d
    const-string v0, "DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_9

    .line 2402
    :pswitch_40
    const-string v0, "DISPATCH_GENERIC_MOTION"

    goto :goto_9

    .line 2404
    :pswitch_43
    const-string v0, "UPDATE_CONFIGURATION"

    goto :goto_9

    .line 2406
    :pswitch_46
    const-string v0, "DO_PERFORM_ACCESSIBILITY_ACTION"

    goto :goto_9

    .line 2408
    :pswitch_49
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    goto :goto_9

    .line 2410
    :pswitch_4c
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_ID"

    goto :goto_9

    .line 2412
    :pswitch_4f
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_TEXT"

    goto :goto_9

    .line 2414
    :pswitch_52
    const-string v0, "PROCESS_INPUT_EVENTS"

    goto :goto_9

    .line 2364
    nop

    :pswitch_data_56
    .packed-switch 0x3e8
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
    .end packed-switch
.end method

.method public getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 767
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 693
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_9

    .line 694
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 695
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 697
    :cond_9
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .registers 7
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .prologue
    const/4 v4, 0x1

    .line 3509
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v0, v1, :cond_12

    .line 3513
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 3514
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 3515
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3517
    :cond_12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_17

    .line 3529
    :goto_16
    return-void

    .line 3518
    :cond_17
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v0, :cond_42

    .line 3519
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_32

    .line 3520
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 3524
    :cond_32
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 3525
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3526
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3528
    :cond_42
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_16
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 700
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 701
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 702
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 703
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2422
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_2b6

    .line 2657
    :cond_5
    :goto_5
    return-void

    .line 2424
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 2427
    :sswitch_e
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 2428
    .local v11, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 2429
    invoke-virtual {v11}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_5

    .line 2432
    .end local v11    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_23
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_2c

    .line 2433
    const-string v1, "ViewAncestor"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 2442
    :cond_2c
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 2454
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_5

    .line 2455
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2456
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    goto :goto_5

    .line 2460
    :sswitch_3a
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    :goto_41
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->handleFinishedEvent(IZ)V

    goto :goto_5

    :cond_45
    const/4 v1, 0x0

    goto :goto_41

    .line 2463
    :sswitch_47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    :goto_50
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_5

    :cond_54
    const/4 v2, 0x0

    goto :goto_50

    .line 2466
    :sswitch_56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    :goto_5f
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverPointerEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_63
    const/4 v2, 0x0

    goto :goto_5f

    .line 2469
    :sswitch_65
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_72

    const/4 v2, 0x1

    :goto_6e
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverTrackballEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_72
    const/4 v2, 0x0

    goto :goto_6e

    .line 2472
    :sswitch_74
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_81

    const/4 v2, 0x1

    :goto_7d
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_81
    const/4 v2, 0x0

    goto :goto_7d

    .line 2475
    :sswitch_83
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->processInputEvents(Z)V

    goto/16 :goto_5

    .line 2478
    :sswitch_89
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_93

    const/4 v1, 0x1

    :goto_8e
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto/16 :goto_5

    :cond_93
    const/4 v1, 0x0

    goto :goto_8e

    .line 2481
    :sswitch_95
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto/16 :goto_5

    .line 2484
    :sswitch_9a
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/view/ViewRootImpl$ResizedInfo;

    .line 2486
    .local v12, "ri":Landroid/view/ViewRootImpl$ResizedInfo;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_ce

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_ce

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_5

    .line 2494
    .end local v12    # "ri":Landroid/view/ViewRootImpl$ResizedInfo;
    :cond_ce
    :sswitch_ce
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_5

    .line 2495
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v6, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 2496
    .local v6, "config":Landroid/content/res/Configuration;
    if-eqz v6, :cond_de

    .line 2497
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 2499
    :cond_de
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2500
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2501
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2502
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2503
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2504
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2505
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_113

    .line 2506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2509
    :cond_113
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_11c

    .line 2510
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2512
    :cond_11c
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_5

    .line 2516
    .end local v6    # "config":Landroid/content/res/Configuration;
    :sswitch_121
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_5

    .line 2517
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1ce

    const/4 v9, 0x1

    .line 2518
    .local v9, "hasWindowFocus":Z
    :goto_12a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2520
    invoke-direct {p0, v9}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    .line 2522
    if-eqz v9, :cond_15f

    .line 2523
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1d1

    const/4 v10, 0x1

    .line 2524
    .local v10, "inTouchMode":Z
    :goto_138
    invoke-direct {p0, v10}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 2526
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_15f

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_15f

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 2528
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2530
    :try_start_150
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/SurfaceHolder;)V
    :try_end_15f
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_150 .. :try_end_15f} :catch_1d4

    .line 2548
    .end local v10    # "inTouchMode":Z
    :cond_15f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2551
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2552
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_18a

    .line 2553
    if-eqz v9, :cond_17e

    if-eqz v0, :cond_17e

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v1, :cond_17e

    .line 2554
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 2556
    :cond_17e
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 2557
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2562
    :cond_18a
    if-eqz v9, :cond_1c3

    .line 2563
    if-eqz v0, :cond_1aa

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v1, :cond_1aa

    .line 2564
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_205

    const/4 v4, 0x1

    :goto_1a3
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2570
    :cond_1aa
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2572
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2575
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2578
    :cond_1c3
    if-eqz v9, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2579
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendAccessibilityEvents()V

    goto/16 :goto_5

    .line 2517
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v9    # "hasWindowFocus":Z
    :cond_1ce
    const/4 v9, 0x0

    goto/16 :goto_12a

    .line 2523
    .restart local v9    # "hasWindowFocus":Z
    :cond_1d1
    const/4 v10, 0x0

    goto/16 :goto_138

    .line 2532
    .restart local v10    # "inTouchMode":Z
    :catch_1d4
    move-exception v7

    .line 2533
    .local v7, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v1, "ViewRootImpl"

    const-string v2, "OutOfResourcesException locking surface"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2535
    :try_start_1dc
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    if-nez v1, :cond_1f4

    .line 2536
    const-string v1, "ViewRootImpl"

    const-string v2, "No processes killed for memory; killing self"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1f4
    .catch Landroid/os/RemoteException; {:try_start_1dc .. :try_end_1f4} :catch_2b3

    .line 2542
    :cond_1f4
    :goto_1f4
    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewRootImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewRootImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 2564
    .end local v7    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v10    # "inTouchMode":Z
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_205
    const/4 v4, 0x0

    goto :goto_1a3

    .line 2584
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v9    # "hasWindowFocus":Z
    :sswitch_207
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_5

    .line 2590
    :sswitch_20c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/KeyEvent;

    .line 2591
    .local v8, "event":Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_222

    .line 2595
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-static {v8, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v8

    .line 2597
    :cond_222
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_5

    .line 2600
    .end local v8    # "event":Landroid/view/KeyEvent;
    :sswitch_22c
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2601
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_5

    .line 2602
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_5

    .line 2606
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_23b
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2607
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_5

    .line 2608
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_5

    .line 2612
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_246
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2613
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2618
    :sswitch_255
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/DragEvent;

    .line 2619
    .local v8, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v1, v8, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 2620
    invoke-direct {p0, v8}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_5

    .line 2623
    .end local v8    # "event":Landroid/view/DragEvent;
    :sswitch_262
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_5

    .line 2626
    :sswitch_26b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    .line 2627
    .restart local v6    # "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_279

    .line 2628
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2630
    :cond_279
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_5

    .line 2633
    .end local v6    # "config":Landroid/content/res/Configuration;
    :sswitch_27f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2634
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2639
    :sswitch_28c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2640
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2645
    :sswitch_299
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2646
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2651
    :sswitch_2a6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2652
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfosByViewTextUiThread(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2539
    .restart local v7    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v9    # "hasWindowFocus":Z
    .restart local v10    # "inTouchMode":Z
    :catch_2b3
    move-exception v1

    goto/16 :goto_1f4

    .line 2422
    :sswitch_data_2b6
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_e
        0x3e8 -> :sswitch_23
        0x3e9 -> :sswitch_207
        0x3ea -> :sswitch_9a
        0x3eb -> :sswitch_ce
        0x3ec -> :sswitch_121
        0x3ed -> :sswitch_47
        0x3ee -> :sswitch_56
        0x3ef -> :sswitch_65
        0x3f0 -> :sswitch_89
        0x3f1 -> :sswitch_95
        0x3f2 -> :sswitch_3a
        0x3f3 -> :sswitch_20c
        0x3f4 -> :sswitch_22c
        0x3f5 -> :sswitch_23b
        0x3f6 -> :sswitch_246
        0x3f7 -> :sswitch_255
        0x3f8 -> :sswitch_255
        0x3f9 -> :sswitch_262
        0x3fa -> :sswitch_74
        0x3fb -> :sswitch_26b
        0x3fc -> :sswitch_28c
        0x3fd -> :sswitch_27f
        0x3fe -> :sswitch_299
        0x3ff -> :sswitch_2a6
        0x400 -> :sswitch_83
    .end sparse-switch
.end method

.method invalidate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 753
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 754
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 755
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 722
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 724
    if-nez p2, :cond_b

    .line 726
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 750
    :cond_a
    :goto_a
    return-void

    .line 729
    :cond_b
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_37

    .line 730
    :cond_13
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 731
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 732
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_25

    .line 733
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 735
    :cond_25
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2e

    .line 736
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 738
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_37

    .line 739
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 742
    :cond_37
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 743
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 744
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 746
    :cond_4f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 747
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_a

    .line 748
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_a
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 771
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 772
    return-object v0
.end method

.method public isLayoutRequested()Z
    .registers 2

    .prologue
    .line 718
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public onHardwarePostDraw(Landroid/view/HardwareCanvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_16

    .line 1743
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1744
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 1746
    :cond_16
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/HardwareCanvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 1738
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1739
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1752
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    if-eqz v1, :cond_17

    .line 1753
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v0

    .line 1754
    .local v0, "displayList":Landroid/view/DisplayList;
    if-eqz v0, :cond_17

    .line 1755
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v1, v0}, Landroid/view/HardwareCanvas;->outputDisplayList(Landroid/view/DisplayList;)V

    .line 1758
    .end local v0    # "displayList":Landroid/view/DisplayList;
    :cond_17
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .registers 6
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 3647
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 3649
    :goto_8
    return v1

    .line 3648
    :catch_9
    move-exception v0

    .line 3649
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public playSoundEffect(I)V
    .registers 7
    .param p1, "effectId"    # I

    .prologue
    .line 3610
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3613
    :try_start_3
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3615
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_6a

    .line 3632
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_34} :catch_34

    .line 3635
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_34
    move-exception v1

    .line 3637
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3640
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_50
    return-void

    .line 3617
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_51
    const/4 v2, 0x0

    :try_start_52
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 3620
    :pswitch_56
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 3623
    :pswitch_5b
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 3626
    :pswitch_60
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 3629
    :pswitch_65
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_69} :catch_34

    goto :goto_50

    .line 3615
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_5b
        :pswitch_65
        :pswitch_60
        :pswitch_56
    .end packed-switch
.end method

.method public profile()V
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 395
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2233
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2234
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    .line 2235
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2236
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_13

    .line 2237
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2240
    :cond_13
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2181
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2182
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_13

    .line 2183
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2184
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2186
    :cond_13
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2189
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 4050
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 4046
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 709
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 711
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 712
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4030
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 4031
    const/4 v0, 0x0

    .line 4034
    :goto_5
    return v0

    .line 4033
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4034
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 835
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 836
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 839
    :cond_17
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_1c
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1689
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1690
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_18

    .line 1691
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1694
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1695
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1696
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1698
    :cond_18
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 3734
    const/16 v1, 0x3fb

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3735
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3736
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .registers 4
    .param p1, "seq"    # I

    .prologue
    .line 3243
    if-gez p1, :cond_3

    neg-int p1, p1

    .line 3244
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3245
    .local v0, "event":Ljava/lang/Object;
    if-eqz v0, :cond_10

    .line 3246
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3248
    :cond_10
    return-object v0
.end method

.method public scheduleTraversals()V
    .registers 2

    .prologue
    .line 788
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_c

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 799
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendEmptyMessage(I)Z

    .line 801
    :cond_c
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .registers 13
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 2059
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2060
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 2061
    .local v1, "ci":Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 2062
    .local v5, "vi":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2063
    .local v4, "scrollY":I
    const/4 v3, 0x0

    .line 2065
    .local v3, "handled":Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v8, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v8, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v8, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_41

    .line 2071
    :cond_22
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2078
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    .line 2083
    .local v2, "focus":Landroid/view/View;
    if-eqz v2, :cond_2e

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v8, :cond_32

    .line 2084
    :cond_2e
    iput-object v9, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move v6, v7

    .line 2177
    .end local v2    # "focus":Landroid/view/View;
    :goto_31
    return v6

    .line 2088
    .restart local v2    # "focus":Landroid/view/View;
    :cond_32
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_37

    .line 2092
    const/4 p1, 0x0

    .line 2097
    :cond_37
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_6b

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v6, :cond_6b

    if-nez p1, :cond_6b

    .line 2163
    .end local v2    # "focus":Landroid/view/View;
    :cond_41
    :goto_41
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v4, v6, :cond_69

    .line 2166
    if-nez p2, :cond_e9

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_e9

    .line 2167
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5c

    .line 2168
    new-instance v6, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 2170
    :cond_5c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v4, v9

    invoke-virtual {v6, v7, v8, v7, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2174
    :cond_67
    :goto_67
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_69
    move v6, v3

    .line 2177
    goto :goto_31

    .line 2104
    .restart local v2    # "focus":Landroid/view/View;
    :cond_6b
    if-eqz v2, :cond_41

    .line 2108
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 2109
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2112
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2117
    if-nez p1, :cond_af

    .line 2118
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2121
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8f

    .line 2122
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2136
    :cond_8f
    :goto_8f
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2140
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_b5

    .line 2157
    :cond_ad
    :goto_ad
    const/4 v3, 0x1

    goto :goto_41

    .line 2130
    :cond_af
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8f

    .line 2146
    :cond_b5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_c8

    .line 2147
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    sub-int/2addr v6, v8

    sub-int/2addr v4, v6

    goto :goto_ad

    .line 2150
    :cond_c8
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_ad

    .line 2152
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_ad

    .line 2171
    .end local v2    # "focus":Landroid/view/View;
    :cond_e9
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_67

    .line 2172
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_67
.end method

.method public setDragFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "newDragTarget"    # Landroid/view/View;

    .prologue
    .line 3537
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_6

    .line 3538
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3540
    :cond_6
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 8
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .prologue
    .line 667
    monitor-enter p0

    .line 668
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 670
    .local v1, "oldSoftInputMode":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000000

    and-int v0, v2, v3

    .line 672
    .local v0, "compatibleWindowFlag":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 673
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 675
    if-eqz p2, :cond_25

    .line 676
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 677
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 680
    :cond_25
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_38

    .line 682
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 687
    :cond_38
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 688
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 689
    monitor-exit p0

    .line 690
    return-void

    .line 689
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldSoftInputMode":I
    :catchall_40
    move-exception v2

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw v2
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3426
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 3427
    return-void
.end method

.method setStopped(Z)V
    .registers 3
    .param p1, "stopped"    # Z

    .prologue
    .line 758
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_b

    .line 759
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 760
    if-nez p1, :cond_b

    .line 761
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 764
    :cond_b
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    .prologue
    .line 419
    monitor-enter p0

    .line 420
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_25b

    .line 421
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 422
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, p1}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 423
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 424
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 426
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_32

    .line 427
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 429
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v1, :cond_32

    .line 430
    new-instance v1, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 431
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 435
    :cond_32
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 436
    .local v8, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 439
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v1, :cond_45

    .line 440
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 443
    :cond_45
    const/4 v11, 0x0

    .line 444
    .local v11, "restore":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_5a

    .line 445
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 446
    const/4 v11, 0x1

    .line 447
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 448
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 452
    :cond_5a
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 453
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 454
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 457
    :cond_6a
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 459
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 460
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 461
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_11f

    const/4 v1, 0x1

    :goto_7f
    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 462
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v1, :cond_122

    const/high16 v1, 0x3f800000

    :goto_89
    iput v1, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 464
    if-eqz p3, :cond_95

    .line 465
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 468
    :cond_95
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 474
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 475
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_aa

    .line 477
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_11c

    .line 480
    :cond_aa
    :try_start_aa
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 481
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v3, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_c5} :catch_128
    .catchall {:try_start_aa .. :try_end_c5} :catchall_148

    move-result v10

    .line 493
    .local v10, "res":I
    if-eqz v11, :cond_cb

    .line 494
    :try_start_c8
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 498
    :cond_cb
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_d8

    .line 499
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 501
    :cond_d8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 502
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 504
    if-gez v10, :cond_217

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 506
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 507
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 508
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 509
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 510
    packed-switch v10, :pswitch_data_26e

    .line 541
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    .end local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v10    # "res":I
    .end local v11    # "restore":Z
    :catchall_11c
    move-exception v1

    monitor-exit p0
    :try_end_11e
    .catchall {:try_start_c8 .. :try_end_11e} :catchall_11c

    throw v1

    .line 461
    .restart local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v11    # "restore":Z
    :cond_11f
    const/4 v1, 0x0

    goto/16 :goto_7f

    .line 462
    :cond_122
    :try_start_122
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v1, v1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_126
    .catchall {:try_start_122 .. :try_end_126} :catchall_11c

    goto/16 :goto_89

    .line 484
    :catch_128
    move-exception v9

    .line 485
    .local v9, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_12a
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 486
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 487
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 488
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 489
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 490
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 491
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Adding window failed"

    invoke-direct {v1, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_148
    .catchall {:try_start_12a .. :try_end_148} :catchall_148

    .line 493
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_148
    move-exception v1

    if-eqz v11, :cond_14e

    .line 494
    :try_start_14b
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_14e
    throw v1

    .line 513
    .restart local v10    # "res":I
    :pswitch_14f
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :pswitch_170
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :pswitch_191
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- app for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :pswitch_1b2
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :pswitch_1d3
    monitor-exit p0

    .line 568
    .end local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v10    # "res":I
    .end local v11    # "restore":Z
    :goto_1d4
    return-void

    .line 533
    .restart local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v10    # "res":I
    .restart local v11    # "restore":Z
    :pswitch_1d5
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :pswitch_1f6
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_217
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_225

    .line 546
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 549
    :cond_225
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_23d

    .line 550
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_25e

    .line 551
    new-instance v1, Landroid/view/InputQueue;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2}, Landroid/view/InputQueue;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 552
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 559
    :cond_23d
    :goto_23d
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 560
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_26a

    const/4 v1, 0x1

    :goto_245
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 561
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_26c

    const/4 v1, 0x1

    :goto_24c
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 563
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25b

    .line 564
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 567
    .end local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v10    # "res":I
    .end local v11    # "restore":Z
    :cond_25b
    monitor-exit p0

    goto/16 :goto_1d4

    .line 554
    .restart local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v10    # "res":I
    .restart local v11    # "restore":Z
    :cond_25e
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputHandler:Landroid/view/InputHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_269
    .catchall {:try_start_14b .. :try_end_269} :catchall_11c

    goto :goto_23d

    .line 560
    :cond_26a
    const/4 v1, 0x0

    goto :goto_245

    .line 561
    :cond_26c
    const/4 v1, 0x0

    goto :goto_24c

    .line 510
    :pswitch_data_26e
    .packed-switch -0x8
        :pswitch_1f6
        :pswitch_1d5
        :pswitch_1d3
        :pswitch_1b2
        :pswitch_191
        :pswitch_170
        :pswitch_14f
        :pswitch_14f
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 4016
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 4020
    const/4 v0, 0x0

    return-object v0
.end method

.method terminateHardwareResources()V
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_17

    .line 581
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 582
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 584
    :cond_17
    return-void
.end method

.method public unscheduleTraversals()V
    .registers 2

    .prologue
    .line 804
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_c

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 806
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    .line 808
    :cond_c
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .registers 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    .prologue
    .line 2290
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 2291
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_11

    .line 2292
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2293
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    move-object p1, v1

    .line 2296
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_11
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2297
    :try_start_14
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_2c

    .line 2298
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2297
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 2300
    :cond_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_50

    .line 2301
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_4f

    .line 2305
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2306
    if-nez p2, :cond_45

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_4f

    .line 2307
    :cond_45
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2308
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2311
    :cond_4f
    return-void

    .line 2300
    .end local v2    # "i":I
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method

.method public windowFocusChanged(ZZ)V
    .registers 7
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3936
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3937
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3938
    if-eqz p1, :cond_17

    move v1, v2

    :goto_d
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3939
    if-eqz p2, :cond_19

    :goto_11
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 3940
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3941
    return-void

    :cond_17
    move v1, v3

    .line 3938
    goto :goto_d

    :cond_19
    move v2, v3

    .line 3939
    goto :goto_11
.end method
