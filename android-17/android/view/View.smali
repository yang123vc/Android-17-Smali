.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback2;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field static final ACTIVATED:I = 0x40000000

.field public static ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field protected static DEFAULT_TEXT_DIRECTION:I = 0x0

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAG_CAN_ACCEPT:I = 0x1

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_HOVERED:I = 0x2

.field static final DRAG_MASK:I = 0x3

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_STATE_SET:[I

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field private static final HOVERED:I = 0x10000000

.field static final INVALIDATED:I = -0x80000000

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = -0x80000000

.field private static final LAYOUT_DIRECTION_FLAGS:[I

.field public static final LAYOUT_DIRECTION_INHERIT:I = -0x80000000

.field public static final LAYOUT_DIRECTION_LOCALE:I = -0x40000000

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_MASK:I = -0x40000000

.field static final LAYOUT_DIRECTION_RESOLVED:I = 0x8

.field static final LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x4

.field public static final LAYOUT_DIRECTION_RTL:I = 0x40000000

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field private static final NONZERO_EPSILON:F = 0.001f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field private static final PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x21bf

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_STATE_SET:[I

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0xffff

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field public static ROTATION:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static ROTATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static ROTATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field public static SCALE_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static SCALE_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x3

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static TRANSLATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static TRANSLATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field public static X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextAccessibilityViewId:I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field mLocalDirtyRect:Landroid/graphics/Rect;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field mPrivateFlags2:I

.field mRecreateDisplayList:Z

.field private mResolvedTextDirection:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0xffff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field private mTextDirection:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation
        }
    .end annotation
.end field

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRelative:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 694
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1fe

    sput-object v9, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 844
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_208

    sput-object v9, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 992
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_212

    sput-object v9, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    .line 1359
    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_21e

    sput-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 1373
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_33

    .line 1374
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1377
    :cond_33
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1378
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_64

    .line 1379
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1380
    .local v8, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_43
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_61

    .line 1381
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_5e

    .line 1382
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1383
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1380
    :cond_5e
    add-int/lit8 v2, v2, 0x2

    goto :goto_43

    .line 1378
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1387
    .end local v2    # "j":I
    .end local v8    # "viewState":I
    :cond_64
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1388
    .local v0, "NUM_BITS":I
    const/4 v9, 0x1

    shl-int/2addr v9, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1389
    const/4 v1, 0x0

    :goto_70
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_98

    .line 1390
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1391
    .local v3, "numBits":I
    new-array v7, v3, [I

    .line 1392
    .local v7, "set":[I
    const/4 v5, 0x0

    .line 1393
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_7d
    array-length v9, v4

    if-ge v2, v9, :cond_91

    .line 1394
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_8e

    .line 1395
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1393
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_8e
    add-int/lit8 v2, v2, 0x2

    goto :goto_7d

    .line 1398
    :cond_91
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1389
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 1401
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    .end local v7    # "set":[I
    :cond_98
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1402
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1403
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1404
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1406
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1407
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1409
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1411
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1414
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1415
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1417
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1419
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1422
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1424
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1427
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1430
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1434
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1435
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1437
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1439
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1442
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1444
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1447
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1450
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1453
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1455
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1458
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1461
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1464
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1467
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1470
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1473
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1498
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 2647
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    .line 13815
    new-instance v9, Landroid/view/View$4;

    const-string v10, "alpha"

    invoke-direct {v9, v10}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 13831
    new-instance v9, Landroid/view/View$5;

    const-string/jumbo v10, "translationX"

    invoke-direct {v9, v10}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 13847
    new-instance v9, Landroid/view/View$6;

    const-string/jumbo v10, "translationY"

    invoke-direct {v9, v10}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 13863
    new-instance v9, Landroid/view/View$7;

    const-string/jumbo v10, "x"

    invoke-direct {v9, v10}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->X:Landroid/util/Property;

    .line 13879
    new-instance v9, Landroid/view/View$8;

    const-string/jumbo v10, "y"

    invoke-direct {v9, v10}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    .line 13895
    new-instance v9, Landroid/view/View$9;

    const-string/jumbo v10, "rotation"

    invoke-direct {v9, v10}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 13911
    new-instance v9, Landroid/view/View$10;

    const-string/jumbo v10, "rotationX"

    invoke-direct {v9, v10}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    .line 13927
    new-instance v9, Landroid/view/View$11;

    const-string/jumbo v10, "rotationY"

    invoke-direct {v9, v10}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    .line 13943
    new-instance v9, Landroid/view/View$12;

    const-string/jumbo v10, "scaleX"

    invoke-direct {v9, v10}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 13959
    new-instance v9, Landroid/view/View$13;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Landroid/view/View$13;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-void

    .line 694
    :array_1fe
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    .line 844
    :array_208
    .array-data 4
        0x0
        0x80000
        0x100000
    .end array-data

    .line 992
    :array_212
    .array-data 4
        0x0
        0x40000000
        -0x80000000
        -0x40000000
    .end array-data

    .line 1359
    :array_21e
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 3130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1539
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1548
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1554
    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 2310
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 2314
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 2386
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 2404
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 2410
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 2416
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 2422
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 2428
    iput v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 2431
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 2463
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 2469
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2484
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2584
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 2654
    sget v0, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    iput v0, p0, Landroid/view/View;->mTextDirection:I

    .line 2671
    iput v2, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 2684
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_3b
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 3131
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3132
    return-void

    :cond_40
    move-object v0, v1

    .line 2684
    goto :goto_3b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v0, -0x80000000

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1539
    iput-boolean v3, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1548
    iput v2, p0, Landroid/view/View;->mID:I

    .line 1554
    iput v2, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 2310
    iput v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 2314
    iput v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 2386
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 2404
    iput v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 2410
    iput v2, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 2416
    iput v2, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 2422
    iput v2, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 2428
    iput v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 2431
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 2463
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 2469
    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2484
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2584
    iput v3, p0, Landroid/view/View;->mLayerType:I

    .line 2654
    sget v0, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    iput v0, p0, Landroid/view/View;->mTextDirection:I

    .line 2671
    iput v3, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 2684
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_3b
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 2695
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2696
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_45
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 2697
    const/high16 v0, -0x68000000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 2698
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 2699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2700
    iput v2, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 2701
    iput v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 2702
    iput-boolean v3, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 2703
    return-void

    :cond_60
    move-object v0, v1

    .line 2684
    goto :goto_3b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2722
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2723
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 2744
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2746
    sget-object v38, Lcom/android/internal/R$styleable;->View:[I

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move/from16 v3, p3

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2749
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 2751
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    const/16 v16, -0x1

    .line 2752
    .local v16, "leftPadding":I
    const/16 v29, -0x1

    .line 2753
    .local v29, "topPadding":I
    const/16 v19, -0x1

    .line 2754
    .local v19, "rightPadding":I
    const/4 v9, -0x1

    .line 2755
    .local v9, "bottomPadding":I
    const/16 v26, -0x1

    .line 2756
    .local v26, "startPadding":I
    const/4 v11, -0x1

    .line 2758
    .local v11, "endPadding":I
    const/16 v18, -0x1

    .line 2760
    .local v18, "padding":I
    const/16 v34, 0x0

    .line 2761
    .local v34, "viewFlagValues":I
    const/16 v33, 0x0

    .line 2763
    .local v33, "viewFlagMasks":I
    const/16 v25, 0x0

    .line 2765
    .local v25, "setScrollContainer":Z
    const/16 v36, 0x0

    .line 2766
    .local v36, "x":I
    const/16 v37, 0x0

    .line 2768
    .local v37, "y":I
    const/16 v31, 0x0

    .line 2769
    .local v31, "tx":F
    const/16 v32, 0x0

    .line 2770
    .local v32, "ty":F
    const/16 v20, 0x0

    .line 2771
    .local v20, "rotation":F
    const/16 v21, 0x0

    .line 2772
    .local v21, "rotationX":F
    const/16 v22, 0x0

    .line 2773
    .local v22, "rotationY":F
    const/high16 v27, 0x3f800000

    .line 2774
    .local v27, "sx":F
    const/high16 v28, 0x3f800000

    .line 2775
    .local v28, "sy":F
    const/16 v30, 0x0

    .line 2777
    .local v30, "transformSet":Z
    const/16 v23, 0x0

    .line 2779
    .local v23, "scrollbarStyle":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move/from16 v17, v0

    .line 2780
    .local v17, "overScrollMode":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 2781
    .local v5, "N":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_49
    if-ge v14, v5, :cond_3e0

    .line 2782
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 2783
    .local v7, "attr":I
    packed-switch v7, :pswitch_data_4ae

    .line 2781
    :cond_52
    :goto_52
    :pswitch_52
    add-int/lit8 v14, v14, 0x1

    goto :goto_49

    .line 2785
    :pswitch_55
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2786
    goto :goto_52

    .line 2788
    :pswitch_5a
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 2789
    goto :goto_52

    .line 2791
    :pswitch_63
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 2792
    goto :goto_52

    .line 2794
    :pswitch_6c
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v29

    .line 2795
    goto :goto_52

    .line 2797
    :pswitch_75
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 2798
    goto :goto_52

    .line 2800
    :pswitch_7e
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 2801
    goto :goto_52

    .line 2803
    :pswitch_87
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .line 2804
    goto :goto_52

    .line 2806
    :pswitch_90
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 2807
    goto :goto_52

    .line 2809
    :pswitch_99
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v36

    .line 2810
    goto :goto_52

    .line 2812
    :pswitch_a2
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v37

    .line 2813
    goto :goto_52

    .line 2815
    :pswitch_ab
    const/high16 v38, 0x3f800000

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_52

    .line 2818
    :pswitch_bb
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_52

    .line 2821
    :pswitch_d0
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_52

    .line 2824
    :pswitch_e6
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v31, v0

    .line 2825
    const/16 v30, 0x1

    .line 2826
    goto/16 :goto_52

    .line 2828
    :pswitch_f7
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v32, v0

    .line 2829
    const/16 v30, 0x1

    .line 2830
    goto/16 :goto_52

    .line 2832
    :pswitch_108
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 2833
    const/16 v30, 0x1

    .line 2834
    goto/16 :goto_52

    .line 2836
    :pswitch_114
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    .line 2837
    const/16 v30, 0x1

    .line 2838
    goto/16 :goto_52

    .line 2840
    :pswitch_120
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 2841
    const/16 v30, 0x1

    .line 2842
    goto/16 :goto_52

    .line 2844
    :pswitch_12c
    const/high16 v38, 0x3f800000

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 2845
    const/16 v30, 0x1

    .line 2846
    goto/16 :goto_52

    .line 2848
    :pswitch_138
    const/high16 v38, 0x3f800000

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 2849
    const/16 v30, 0x1

    .line 2850
    goto/16 :goto_52

    .line 2852
    :pswitch_144
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_52

    .line 2855
    :pswitch_154
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_52

    .line 2858
    :pswitch_160
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2859
    or-int/lit8 v34, v34, 0x2

    .line 2860
    or-int/lit8 v33, v33, 0x2

    goto/16 :goto_52

    .line 2864
    :pswitch_170
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2865
    or-int/lit8 v34, v34, 0x1

    .line 2866
    or-int/lit8 v33, v33, 0x1

    goto/16 :goto_52

    .line 2870
    :pswitch_180
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2871
    const v38, 0x40001

    or-int v34, v34, v38

    .line 2872
    const v38, 0x40001

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2876
    :pswitch_196
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2877
    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x4000

    move/from16 v34, v0

    .line 2878
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x4000

    move/from16 v33, v0

    goto/16 :goto_52

    .line 2882
    :pswitch_1ae
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2883
    const/high16 v38, 0x200000

    or-int v34, v34, v38

    .line 2884
    const/high16 v38, 0x200000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2888
    :pswitch_1c2
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_52

    .line 2889
    const/high16 v38, 0x10000

    or-int v34, v34, v38

    .line 2890
    const/high16 v38, 0x10000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2894
    :pswitch_1d6
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2895
    const/high16 v38, 0x400000

    or-int v34, v34, v38

    .line 2896
    const/high16 v38, 0x400000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2900
    :pswitch_1ea
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v35

    .line 2901
    .local v35, "visibility":I
    if-eqz v35, :cond_52

    .line 2902
    sget-object v38, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v38, v38, v35

    or-int v34, v34, v38

    .line 2903
    or-int/lit8 v33, v33, 0xc

    goto/16 :goto_52

    .line 2908
    .end local v35    # "visibility":I
    :pswitch_1fe
    const v38, 0x3fffffff

    and-int v34, v34, v38

    .line 2910
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 2911
    .local v15, "layoutDirection":I
    const/16 v38, -0x1

    move/from16 v0, v38

    if-eq v15, v0, :cond_21d

    .line 2912
    sget-object v38, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v38, v38, v15

    or-int v34, v34, v38

    .line 2917
    :goto_217
    const/high16 v38, -0x40000000

    or-int v33, v33, v38

    .line 2918
    goto/16 :goto_52

    .line 2915
    :cond_21d
    const/high16 v38, -0x80000000

    or-int v34, v34, v38

    goto :goto_217

    .line 2920
    .end local v15    # "layoutDirection":I
    :pswitch_222
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 2921
    .local v10, "cacheQuality":I
    if-eqz v10, :cond_52

    .line 2922
    sget-object v38, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v38, v38, v10

    or-int v34, v34, v38

    .line 2923
    const/high16 v38, 0x180000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2927
    .end local v10    # "cacheQuality":I
    :pswitch_238
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_52

    .line 2930
    :pswitch_244
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_52

    .line 2931
    const v38, -0x8000001

    and-int v34, v34, v38

    .line 2932
    const/high16 v38, 0x8000000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2936
    :pswitch_259
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_52

    .line 2937
    const v38, -0x10000001

    and-int v34, v34, v38

    .line 2938
    const/high16 v38, 0x10000000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2942
    :pswitch_26e
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 2943
    .local v24, "scrollbars":I
    if-eqz v24, :cond_52

    .line 2944
    or-int v34, v34, v24

    .line 2945
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x300

    move/from16 v33, v0

    .line 2946
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_52

    .line 2951
    .end local v24    # "scrollbars":I
    :pswitch_287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v38, v0

    const/16 v39, 0xe

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_52

    .line 2957
    :pswitch_299
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 2958
    .local v12, "fadingEdge":I
    if-eqz v12, :cond_52

    .line 2959
    or-int v34, v34, v12

    .line 2960
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x3000

    move/from16 v33, v0

    .line 2961
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_52

    .line 2965
    .end local v12    # "fadingEdge":I
    :pswitch_2b2
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 2966
    if-eqz v23, :cond_52

    .line 2967
    const/high16 v38, 0x3000000

    and-int v38, v38, v23

    or-int v34, v34, v38

    .line 2968
    const/high16 v38, 0x3000000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2972
    :pswitch_2c8
    const/16 v25, 0x1

    .line 2973
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2974
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_52

    .line 2978
    :pswitch_2df
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2979
    const/high16 v38, 0x4000000

    or-int v34, v34, v38

    .line 2980
    const/high16 v38, 0x4000000

    or-int v33, v33, v38

    goto/16 :goto_52

    .line 2984
    :pswitch_2f3
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_52

    .line 2985
    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x400

    move/from16 v34, v0

    .line 2986
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    goto/16 :goto_52

    .line 2990
    :pswitch_30b
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_52

    .line 2993
    :pswitch_31b
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_52

    .line 2996
    :pswitch_32b
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_52

    .line 2999
    :pswitch_33b
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_52

    .line 3002
    :pswitch_34b
    const/16 v38, -0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_52

    .line 3005
    :pswitch_35b
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_52

    .line 3008
    :pswitch_36b
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_52

    .line 3011
    :pswitch_37b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v38

    if-eqz v38, :cond_389

    .line 3012
    new-instance v38, Ljava/lang/IllegalStateException;

    const-string v39, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 3016
    :cond_389
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3017
    .local v13, "handlerName":Ljava/lang/String;
    if-eqz v13, :cond_52

    .line 3018
    new-instance v38, Landroid/view/View$1;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_52

    .line 3052
    .end local v13    # "handlerName":Ljava/lang/String;
    :pswitch_3a1
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 3053
    goto/16 :goto_52

    .line 3055
    :pswitch_3ab
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_52

    .line 3058
    :pswitch_3bb
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_52

    .line 3061
    :pswitch_3d0
    sget v38, Landroid/view/View;->DEFAULT_TEXT_DIRECTION:I

    move/from16 v0, v38

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mTextDirection:I

    goto/16 :goto_52

    .line 3066
    .end local v7    # "attr":I
    :cond_3e0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3068
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3070
    if-eqz v8, :cond_3f1

    .line 3071
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3074
    :cond_3f1
    if-gez v26, :cond_3f5

    if-ltz v11, :cond_48b

    :cond_3f5
    const/16 v38, 0x1

    :goto_3f7
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mUserPaddingRelative:Z

    .line 3078
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingStart:I

    .line 3079
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3081
    if-ltz v18, :cond_411

    .line 3082
    move/from16 v16, v18

    .line 3083
    move/from16 v29, v18

    .line 3084
    move/from16 v19, v18

    .line 3085
    move/from16 v9, v18

    .line 3092
    :cond_411
    if-ltz v16, :cond_48f

    .end local v16    # "leftPadding":I
    :goto_413
    if-ltz v29, :cond_497

    .end local v29    # "topPadding":I
    :goto_415
    if-ltz v19, :cond_49f

    .end local v19    # "rightPadding":I
    :goto_417
    if-ltz v9, :cond_4a7

    .end local v9    # "bottomPadding":I
    :goto_419
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v29

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 3097
    if-eqz v33, :cond_42f

    .line 3098
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 3102
    :cond_42f
    if-eqz v23, :cond_434

    .line 3103
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 3106
    :cond_434
    if-nez v36, :cond_438

    if-eqz v37, :cond_441

    .line 3107
    :cond_438
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 3110
    :cond_441
    if-eqz v30, :cond_474

    .line 3111
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3112
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3113
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 3114
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 3115
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 3116
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3117
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3120
    :cond_474
    if-nez v25, :cond_487

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0x200

    move/from16 v38, v0

    if-eqz v38, :cond_487

    .line 3121
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 3124
    :cond_487
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 3125
    return-void

    .line 3074
    .restart local v9    # "bottomPadding":I
    .restart local v16    # "leftPadding":I
    .restart local v19    # "rightPadding":I
    .restart local v29    # "topPadding":I
    :cond_48b
    const/16 v38, 0x0

    goto/16 :goto_3f7

    .line 3092
    :cond_48f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v16, v0

    goto/16 :goto_413

    .end local v16    # "leftPadding":I
    :cond_497
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v29, v0

    goto/16 :goto_415

    .end local v29    # "topPadding":I
    :cond_49f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v19, v0

    goto/16 :goto_417

    .end local v19    # "rightPadding":I
    :cond_4a7
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPaddingBottom:I

    goto/16 :goto_419

    .line 2783
    nop

    :pswitch_data_4ae
    .packed-switch 0x7
        :pswitch_2b2
        :pswitch_144
        :pswitch_154
        :pswitch_99
        :pswitch_a2
        :pswitch_55
        :pswitch_5a
        :pswitch_63
        :pswitch_6c
        :pswitch_75
        :pswitch_7e
        :pswitch_170
        :pswitch_180
        :pswitch_1ea
        :pswitch_160
        :pswitch_26e
        :pswitch_287
        :pswitch_52
        :pswitch_30b
        :pswitch_31b
        :pswitch_32b
        :pswitch_33b
        :pswitch_196
        :pswitch_1ae
        :pswitch_1c2
        :pswitch_222
        :pswitch_1d6
        :pswitch_35b
        :pswitch_36b
        :pswitch_244
        :pswitch_2df
        :pswitch_2c8
        :pswitch_259
        :pswitch_37b
        :pswitch_238
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_3a1
        :pswitch_2f3
        :pswitch_ab
        :pswitch_bb
        :pswitch_d0
        :pswitch_e6
        :pswitch_f7
        :pswitch_12c
        :pswitch_138
        :pswitch_108
        :pswitch_114
        :pswitch_120
        :pswitch_3ab
        :pswitch_34b
        :pswitch_3bb
        :pswitch_299
        :pswitch_87
        :pswitch_90
        :pswitch_1fe
        :pswitch_3d0
    .end packed-switch
.end method

.method static synthetic access$2002(Landroid/view/View;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/view/View;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I

    .prologue
    .line 631
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method private checkForLongClick(I)V
    .registers 5
    .param p1, "delayOffset"    # I

    .prologue
    const/high16 v1, 0x200000

    .line 13543
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    .line 13544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 13546
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_15

    .line 13547
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 13549
    :cond_15
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 13550
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13553
    :cond_25
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 3
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    .line 12831
    or-int v0, p0, p1

    return v0
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .registers 5
    .param p0, "depth"    # I

    .prologue
    const/16 v3, 0x20

    .line 12649
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12650
    .local v1, "spaces":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 12651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12650
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 12653
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5629
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5630
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1d

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1d

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5643
    :cond_1c
    :goto_1c
    return v1

    .line 5636
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5640
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2c

    .line 5641
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2c
    move v1, v2

    .line 5643
    goto :goto_1c
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "childViewId"    # I

    .prologue
    .line 5162
    new-instance v1, Landroid/view/View$3;

    invoke-direct {v1, p0, p2}, Landroid/view/View$3;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 5169
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_23

    .line 5170
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    :cond_23
    return-object v0
.end method

.method public static getDefaultSize(II)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 12887
    move v0, p0

    .line 12888
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 12889
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 12891
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_12

    .line 12900
    :goto_c
    return v0

    .line 12893
    :sswitch_d
    move v0, p0

    .line 12894
    goto :goto_c

    .line 12897
    :sswitch_f
    move v0, v2

    goto :goto_c

    .line 12891
    nop

    :sswitch_data_12
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_f
    .end sparse-switch
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .registers 5

    .prologue
    .line 5408
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5409
    .local v0, "ancestor":Landroid/view/ViewParent;
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    move-object v1, v0

    .line 5410
    check-cast v1, Landroid/view/ViewGroup;

    .line 5411
    .local v1, "vgAncestor":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x60000

    if-ne v2, v3, :cond_13

    .line 5412
    const/4 v2, 0x1

    .line 5417
    .end local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :goto_12
    return v2

    .line 5414
    .restart local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5416
    goto :goto_2

    .line 5417
    .end local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_18
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 13566
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 13567
    .local v0, "factory":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .registers 3

    .prologue
    .line 3326
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_11

    .line 3327
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3329
    :cond_11
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8308
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isHoverable()Z
    .registers 6

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x0

    .line 6362
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 6364
    .local v0, "viewFlags":I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_c

    .line 6368
    :cond_b
    :goto_b
    return v1

    :cond_c
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_16

    and-int v2, v0, v4

    if-ne v2, v4, :cond_b

    :cond_16
    const/4 v1, 0x1

    goto :goto_b
.end method

.method protected static isLayoutDirectionRtl(Ljava/util/Locale;)Z
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x1

    .line 9694
    invoke-static {p0}, Landroid/util/LocaleUtil;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v0, v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected static mergeDrawableStates([I[I)[I
    .registers 7
    .param p0, "baseState"    # [I
    .param p1, "additionalState"    # [I

    .prologue
    .line 11661
    array-length v0, p0

    .line 11662
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .line 11663
    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_c

    aget v2, p0, v1

    if-nez v2, :cond_c

    .line 11664
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 11666
    :cond_c
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11667
    return-object p0
.end method

.method private static nonzero(F)Z
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 7061
    const v0, -0x457ced91

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_e

    const v0, 0x3a83126f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private pointInView(FFF)Z
    .registers 6
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 8052
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_22

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_22

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_22

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .registers 4

    .prologue
    .line 8897
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_c

    .line 8898
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 8900
    :cond_c
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_20

    .line 8901
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 8902
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8905
    :cond_20
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .prologue
    .line 11162
    const-string v1, ""

    .line 11163
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 11164
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 11165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11166
    add-int/lit8 v0, v0, 0x1

    .line 11169
    :cond_1d
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_76

    .line 11187
    :goto_22
    return-object v1

    .line 11171
    :sswitch_23
    if-lez v0, :cond_38

    .line 11172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11174
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11176
    goto :goto_22

    .line 11178
    :sswitch_4c
    if-lez v0, :cond_61

    .line 11179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11181
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11183
    goto :goto_22

    .line 11169
    nop

    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_23
        0x8 -> :sswitch_4c
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .registers 5
    .param p0, "privateFlags"    # I

    .prologue
    .line 11198
    const-string v1, ""

    .line 11199
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 11201
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 11202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11203
    add-int/lit8 v0, v0, 0x1

    .line 11206
    :cond_1d
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 11207
    if-lez v0, :cond_37

    .line 11208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11210
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11211
    add-int/lit8 v0, v0, 0x1

    .line 11214
    :cond_4c
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7b

    .line 11215
    if-lez v0, :cond_66

    .line 11216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11218
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11219
    add-int/lit8 v0, v0, 0x1

    .line 11222
    :cond_7b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_ab

    .line 11223
    if-lez v0, :cond_96

    .line 11224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11226
    :cond_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11227
    add-int/lit8 v0, v0, 0x1

    .line 11230
    :cond_ab
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_db

    .line 11231
    if-lez v0, :cond_c6

    .line 11232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11234
    :cond_c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11235
    add-int/lit8 v0, v0, 0x1

    .line 11238
    :cond_db
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_109

    .line 11239
    if-lez v0, :cond_f6

    .line 11240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11242
    :cond_f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11245
    :cond_109
    return-object v1
.end method

.method private removeLongPressCallback()V
    .registers 2

    .prologue
    .line 6587
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_9

    .line 6588
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6590
    :cond_9
    return-void
.end method

.method private removePerformClickCallback()V
    .registers 2

    .prologue
    .line 6596
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_9

    .line 6597
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6599
    :cond_9
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .registers 2

    .prologue
    .line 6643
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_9

    .line 6644
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6646
    :cond_9
    return-void
.end method

.method private removeTapCallback()V
    .registers 3

    .prologue
    .line 6615
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_11

    .line 6616
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6617
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6619
    :cond_11
    return-void
.end method

.method private removeUnsetPressCallback()V
    .registers 2

    .prologue
    .line 6605
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_13

    .line 6606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6607
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6609
    :cond_13
    return-void
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 4297
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 4308
    :cond_8
    :goto_8
    return-void

    .line 4301
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4304
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_8

    .line 4305
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_8
.end method

.method private resolveLayoutDirectionIfNeeded()V
    .registers 4

    .prologue
    .line 9567
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 9609
    :cond_8
    :goto_8
    return-void

    .line 9570
    :cond_9
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 9574
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 9577
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    .line 9608
    :cond_19
    :goto_19
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_8

    .line 9580
    :sswitch_20
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_8

    .line 9583
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    .line 9584
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    .line 9587
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9590
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResolvedLayoutDirection()I

    move-result v1

    const/high16 v2, 0x40000000

    if-ne v1, v2, :cond_19

    .line 9591
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_19

    .line 9596
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :sswitch_43
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_19

    .line 9599
    :sswitch_4a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/view/View;->isLayoutDirectionRtl(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 9600
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_19

    .line 9577
    nop

    :sswitch_data_5c
    .sparse-switch
        -0x80000000 -> :sswitch_20
        -0x40000000 -> :sswitch_4a
        0x40000000 -> :sswitch_43
    .end sparse-switch
.end method

.method public static resolveSize(II)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 12839
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .registers 7
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 12856
    move v0, p0

    .line 12857
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 12858
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 12859
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_1e

    .line 12874
    :goto_c
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 12861
    :sswitch_11
    move v0, p0

    .line 12862
    goto :goto_c

    .line 12864
    :sswitch_13
    if-ge v2, p0, :cond_1a

    .line 12865
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_c

    .line 12867
    :cond_1a
    move v0, p0

    .line 12869
    goto :goto_c

    .line 12871
    :sswitch_1c
    move v0, v2

    goto :goto_c

    .line 12859
    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_13
        0x0 -> :sswitch_11
        0x40000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 12501
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 12502
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    .line 12505
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12506
    return-void
.end method

.method private skipInvalidate()Z
    .registers 2

    .prologue
    .line 8437
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private updateMatrix()V
    .registers 7

    .prologue
    const/high16 v3, 0x40000000

    .line 7088
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7089
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-nez v0, :cond_7

    .line 7129
    :cond_6
    :goto_6
    return-void

    .line 7092
    :cond_7
    iget-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_6

    .line 7097
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_48

    .line 7098
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    # getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_28

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    # getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_48

    .line 7099
    :cond_28
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    # setter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1302(Landroid/view/View$TransformationInfo;I)I

    .line 7100
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    # setter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1402(Landroid/view/View$TransformationInfo;I)I

    .line 7101
    # getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 7102
    # getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 7105
    :cond_48
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 7106
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_9a

    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 7107
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7108
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 7109
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 7125
    :goto_86
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7126
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    # setter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1202(Landroid/view/View$TransformationInfo;Z)Z

    .line 7127
    const/4 v1, 0x1

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    goto/16 :goto_6

    .line 7111
    :cond_9a
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    if-nez v1, :cond_b0

    .line 7112
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 7113
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 7115
    :cond_b0
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 7116
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 7117
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 7118
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7119
    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7120
    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7122
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 7123
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto/16 :goto_86
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5198
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 5199
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 5217
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5229
    :cond_6
    :goto_6
    return-void

    .line 5221
    :cond_7
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5226
    :cond_18
    if-eqz p1, :cond_6

    .line 5227
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 3411
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 3412
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 3413
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3416
    :cond_12
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3417
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 3378
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 3379
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 3380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$002(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3382
    :cond_12
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 3383
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3385
    :cond_23
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x200000

    .line 5276
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5278
    .local v0, "viewFlags":I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_e

    and-int v1, v0, v3

    if-ne v1, v3, :cond_15

    :cond_e
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_15

    .line 5280
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5282
    :cond_15
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .registers 2

    .prologue
    .line 14133
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_b

    .line 14134
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 14136
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .registers 18
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 13511
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 13512
    .local v1, "r":Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 13513
    .local v13, "db":Landroid/graphics/Rect;
    iget-object v12, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13514
    .local v12, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_6d

    if-eqz v12, :cond_6d

    .line 13515
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 13516
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v2, v3

    .line 13517
    .local v5, "h":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_2f

    .line 13519
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13521
    :cond_2f
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_3c

    .line 13523
    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13525
    :cond_3c
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_4a

    .line 13527
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13529
    :cond_4a
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_57

    .line 13531
    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13533
    :cond_57
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 13534
    .local v14, "location":[I
    invoke-virtual {p0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13535
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 13536
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 13540
    .end local v5    # "h":I
    .end local v9    # "w":I
    .end local v14    # "location":[I
    :goto_6c
    return-void

    .line 13538
    :cond_6d
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_6c
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    .line 9522
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_7

    .line 9523
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 9530
    :goto_6
    return-void

    .line 9524
    :cond_7
    if-nez p1, :cond_d

    .line 9525
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 9527
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8295
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected awakenScrollBars(I)Z
    .registers 3
    .param p1, "startDelay"    # I

    .prologue
    .line 8347
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 13
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 8389
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 8391
    .local v3, "scrollCache":Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_a

    iget-boolean v6, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_b

    .line 8429
    :cond_a
    :goto_a
    return v4

    .line 8395
    :cond_b
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_16

    .line 8396
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 8399
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 8401
    :cond_22
    if-eqz p2, :cond_27

    .line 8403
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 8406
    :cond_27
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_33

    .line 8410
    const/16 v0, 0x2ee

    .line 8411
    .local v0, "KEY_REPEAT_FIRST_DELAY":I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8416
    .end local v0    # "KEY_REPEAT_FIRST_DELAY":I
    :cond_33
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v1, v6, v8

    .line 8417
    .local v1, "fadeStartTime":J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 8418
    iput v5, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 8421
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_50

    .line 8422
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8423
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_50
    move v4, v5

    .line 8426
    goto :goto_a
.end method

.method public bringToFront()V
    .registers 2

    .prologue
    .line 6814
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 6815
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 6817
    :cond_9
    return-void
.end method

.method public buildDrawingCache()V
    .registers 2

    .prologue
    .line 10547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 10548
    return-void
.end method

.method public buildDrawingCache(Z)V
    .registers 19
    .param p1, "autoScale"    # Z

    .prologue
    .line 10574
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    and-int v15, v15, v16

    if-eqz v15, :cond_13

    if-eqz p1, :cond_93

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_92

    .line 10576
    :cond_13
    :goto_13
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 10582
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    .line 10583
    .local v14, "width":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 10585
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10586
    .local v1, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_9b

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v15, :cond_9b

    const/4 v12, 0x1

    .line 10588
    .local v12, "scalingRequired":Z
    :goto_3b
    if-eqz p1, :cond_57

    if-eqz v12, :cond_57

    .line 10589
    int-to-float v15, v14

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f000000

    add-float v15, v15, v16

    float-to-int v14, v15

    .line 10590
    int-to-float v15, v7

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f000000

    add-float v15, v15, v16

    float-to-int v7, v15

    .line 10593
    :cond_57
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 10594
    .local v5, "drawingCacheBackgroundColor":I
    if-nez v5, :cond_63

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v15

    if-eqz v15, :cond_9d

    :cond_63
    const/4 v8, 0x1

    .line 10595
    .local v8, "opaque":Z
    :goto_64
    if-eqz v1, :cond_9f

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    if-eqz v15, :cond_9f

    const/4 v13, 0x1

    .line 10597
    .local v13, "use32BitCache":Z
    :goto_6b
    if-lez v14, :cond_8a

    if-lez v7, :cond_8a

    mul-int v16, v14, v7

    if-eqz v8, :cond_a1

    if-nez v13, :cond_a1

    const/4 v15, 0x2

    :goto_76
    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_a3

    .line 10601
    :cond_8a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 10602
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 10718
    .end local v1    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v5    # "drawingCacheBackgroundColor":I
    .end local v7    # "height":I
    .end local v8    # "opaque":Z
    .end local v12    # "scalingRequired":Z
    .end local v13    # "use32BitCache":Z
    .end local v14    # "width":I
    :cond_92
    :goto_92
    return-void

    .line 10574
    :cond_93
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_92

    goto/16 :goto_13

    .line 10586
    .restart local v1    # "attachInfo":Landroid/view/View$AttachInfo;
    .restart local v7    # "height":I
    .restart local v14    # "width":I
    :cond_9b
    const/4 v12, 0x0

    goto :goto_3b

    .line 10594
    .restart local v5    # "drawingCacheBackgroundColor":I
    .restart local v12    # "scalingRequired":Z
    :cond_9d
    const/4 v8, 0x0

    goto :goto_64

    .line 10595
    .restart local v8    # "opaque":Z
    :cond_9f
    const/4 v13, 0x0

    goto :goto_6b

    .line 10597
    .restart local v13    # "use32BitCache":Z
    :cond_a1
    const/4 v15, 0x4

    goto :goto_76

    .line 10606
    :cond_a3
    const/4 v4, 0x1

    .line 10607
    .local v4, "clear":Z
    if-eqz p1, :cond_185

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10609
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_aa
    if-eqz v2, :cond_b8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ne v15, v14, :cond_b8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-eq v15, v7, :cond_ee

    .line 10611
    :cond_b8
    if-nez v8, :cond_197

    .line 10614
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v16, 0x180000

    and-int v15, v15, v16

    sparse-switch v15, :sswitch_data_1cc

    .line 10625
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10635
    .local v9, "quality":Landroid/graphics/Bitmap$Config;
    :goto_c7
    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 10638
    :cond_cc
    :try_start_cc
    invoke-static {v14, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 10639
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 10640
    if-eqz p1, :cond_1a0

    .line 10641
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10645
    :goto_e3
    if-eqz v8, :cond_eb

    if-eqz v13, :cond_eb

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_eb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_cc .. :try_end_eb} :catch_1a6

    .line 10659
    :cond_eb
    if-eqz v5, :cond_1bb

    const/4 v4, 0x1

    .line 10663
    .end local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_ee
    :goto_ee
    if-eqz v1, :cond_1be

    .line 10664
    iget-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10665
    .local v3, "canvas":Landroid/graphics/Canvas;
    if-nez v3, :cond_f9

    .line 10666
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 10668
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_f9
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10673
    const/4 v15, 0x0

    iput-object v15, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10679
    :goto_ff
    if-eqz v4, :cond_104

    .line 10680
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 10683
    :cond_104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 10684
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 10686
    .local v10, "restoreCount":I
    if-eqz p1, :cond_114

    if-eqz v12, :cond_114

    .line 10687
    iget v11, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 10688
    .local v11, "scale":F
    invoke-virtual {v3, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10691
    .end local v11    # "scale":F
    :cond_114
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    neg-int v15, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10693
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v15, v15, 0x20

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10694
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v15, :cond_14d

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v15, v15, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v15, :cond_14d

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mLayerType:I

    if-eqz v15, :cond_15a

    .line 10696
    :cond_14d
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10700
    :cond_15a
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v15, v15, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c5

    .line 10704
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, -0x600001

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10705
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10710
    :goto_178
    invoke-virtual {v3, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10711
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10713
    if-eqz v1, :cond_92

    .line 10715
    iput-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_92

    .line 10607
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "restoreCount":I
    :cond_185
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_aa

    .line 10616
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :sswitch_18b
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10617
    .restart local v9    # "quality":Landroid/graphics/Bitmap$Config;
    goto/16 :goto_c7

    .line 10619
    .end local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :sswitch_18f
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10620
    .restart local v9    # "quality":Landroid/graphics/Bitmap$Config;
    goto/16 :goto_c7

    .line 10622
    .end local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :sswitch_193
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10623
    .restart local v9    # "quality":Landroid/graphics/Bitmap$Config;
    goto/16 :goto_c7

    .line 10631
    .end local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_197
    if-eqz v13, :cond_19d

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :goto_19b
    goto/16 :goto_c7

    .end local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_19d
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_19b

    .line 10643
    .restart local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_1a0
    :try_start_1a0
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_1a4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a0 .. :try_end_1a4} :catch_1a6

    goto/16 :goto_e3

    .line 10646
    :catch_1a6
    move-exception v6

    .line 10650
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_1b5

    .line 10651
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10655
    :goto_1ae
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_92

    .line 10653
    :cond_1b5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_1ae

    .line 10659
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1bb
    const/4 v4, 0x0

    goto/16 :goto_ee

    .line 10676
    .end local v9    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_1be
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    goto/16 :goto_ff

    .line 10707
    .restart local v10    # "restoreCount":I
    :cond_1c5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_178

    .line 10614
    nop

    :sswitch_data_1cc
    .sparse-switch
        0x0 -> :sswitch_18b
        0x80000 -> :sswitch_18f
        0x100000 -> :sswitch_193
    .end sparse-switch
.end method

.method public buildLayer()V
    .registers 3

    .prologue
    .line 10147
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_5

    .line 10165
    :cond_4
    :goto_4
    return-void

    .line 10149
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_11

    .line 10150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view must be attached to a window first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10153
    :cond_11
    iget v0, p0, Landroid/view/View;->mLayerType:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_4

    .line 10162
    :pswitch_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_4

    .line 10155
    :pswitch_1c
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10158
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    goto :goto_4

    .line 10153
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method public callOnClick()Z
    .registers 3

    .prologue
    .line 3527
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3528
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_f

    .line 3529
    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3530
    const/4 v1, 0x1

    .line 3532
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method canAcceptDrag()Z
    .registers 2

    .prologue
    .line 13481
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public canHaveDisplayList()Z
    .registers 2

    .prologue
    .line 10367
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected canResolveLayoutDirection()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9663
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_10

    .line 9667
    :cond_8
    :goto_8
    return v0

    .line 9665
    :pswitch_9
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    .line 9663
    nop

    :pswitch_data_10
    .packed-switch -0x80000000
        :pswitch_9
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9312
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .line 9313
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 9314
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 9318
    :cond_13
    :goto_13
    return v2

    .line 9315
    :cond_14
    if-gez p1, :cond_1a

    .line 9316
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 9318
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method public canScrollVertically(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9329
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .line 9330
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 9331
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 9335
    :cond_13
    :goto_13
    return v2

    .line 9332
    :cond_14
    if-gez p1, :cond_1a

    .line 9333
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 9335
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method public cancelLongPress()V
    .registers 1

    .prologue
    .line 6628
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6635
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 6636
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6159
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 12999
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 13000
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 13002
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 13003
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 13004
    return-void
.end method

.method public clearFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3747
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    .line 3748
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3750
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_16

    .line 3751
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 3754
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3755
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3757
    :cond_1d
    return-void
.end method

.method clearFocusForRemoval()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3765
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 3766
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3768
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3769
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3771
    :cond_14
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 9241
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 9220
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 9199
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .registers 4

    .prologue
    .line 8681
    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 8682
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8687
    :goto_14
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8688
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_1e

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_23

    :cond_1e
    const/high16 v1, 0x3000000

    and-int/2addr v1, v0

    if-nez v1, :cond_34

    .line 8690
    :cond_23
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8694
    :goto_2a
    return-void

    .line 8684
    .end local v0    # "flags":I
    :cond_2b
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_14

    .line 8692
    .restart local v0    # "flags":I
    :cond_34
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2a
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 8914
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 9302
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 9281
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 9260
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 4116
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4117
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4118
    return-object v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 6173
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    .line 6177
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 6179
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 6180
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 6181
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_1a

    .line 6182
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_1a
    move-object v2, p1

    .line 6187
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 6189
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2a

    .line 6190
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 6192
    :cond_2a
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    .line 10725
    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int v8, v9, v10

    .line 10726
    .local v8, "width":I
    iget v9, p0, Landroid/view/View;->mBottom:I

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int v4, v9, v10

    .line 10728
    .local v4, "height":I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10729
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_2e

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 10730
    .local v7, "scale":F
    :goto_12
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 10731
    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 10733
    if-lez v8, :cond_31

    .end local v8    # "width":I
    :goto_20
    if-lez v4, :cond_33

    .end local v4    # "height":I
    :goto_22
    invoke-static {v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10734
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_35

    .line 10735
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .line 10729
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .restart local v4    # "height":I
    .restart local v8    # "width":I
    :cond_2e
    const/high16 v7, 0x3f800000

    goto :goto_12

    .line 10733
    .restart local v7    # "scale":F
    :cond_31
    const/4 v8, 0x1

    goto :goto_20

    .end local v8    # "width":I
    :cond_33
    const/4 v4, 0x1

    goto :goto_22

    .line 10738
    .end local v4    # "height":I
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 10739
    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz v5, :cond_44

    .line 10740
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 10744
    :cond_44
    if-eqz v0, :cond_95

    .line 10745
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10746
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-nez v2, :cond_4f

    .line 10747
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 10749
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_4f
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10754
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10760
    :goto_55
    const/high16 v9, -0x1000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_5d

    .line 10761
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 10764
    :cond_5d
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 10765
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 10766
    .local v6, "restoreCount":I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10767
    iget v9, p0, Landroid/view/View;->mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10770
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10771
    .local v3, "flags":I
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10774
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_9b

    .line 10775
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10780
    :goto_87
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10782
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10783
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10785
    if-eqz v0, :cond_94

    .line 10787
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 10790
    :cond_94
    return-object v1

    .line 10757
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "flags":I
    .end local v6    # "restoreCount":I
    :cond_95
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    goto :goto_55

    .line 10777
    .restart local v3    # "flags":I
    .restart local v6    # "restoreCount":I
    :cond_9b
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_87
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 12569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 12570
    return-void
.end method

.method protected debug(I)V
    .registers 7
    .param p1, "depth"    # I

    .prologue
    .line 12582
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12584
    .local v1, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12585
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 12586
    .local v0, "id":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_41

    .line 12587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12589
    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 12590
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_64

    .line 12591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12593
    :cond_64
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12595
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8b

    .line 12596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12597
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12600
    :cond_8b
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12604
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12606
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_101

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_101

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_101

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_14f

    .line 12608
    :cond_101
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12611
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12614
    :cond_14f
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12617
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12619
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12620
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_22d

    .line 12621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12625
    :goto_198
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12627
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12631
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12633
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 12634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12637
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12638
    return-void

    .line 12623
    :cond_22d
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_198
.end method

.method public destroyDrawingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10504
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 10505
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10506
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 10508
    :cond_c
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 10509
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10510
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 10512
    :cond_17
    return-void
.end method

.method protected destroyHardwareResources()V
    .registers 1

    .prologue
    .line 10275
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 10276
    return-void
.end method

.method destroyLayer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10251
    iget-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_14

    .line 10252
    iget-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->destroy()V

    .line 10253
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 10255
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 10256
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10260
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 10
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x0

    .line 9783
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9784
    iget v5, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 9786
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9787
    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_1c

    .line 9788
    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 9789
    iput-object v3, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 9791
    :cond_1c
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_31

    .line 9792
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9793
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9795
    :cond_31
    invoke-virtual {p0, p2}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 9796
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 9798
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 9799
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3f

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 9801
    .local v3, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_3f
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5b

    .line 9806
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 9807
    .local v2, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_4b

    .line 9811
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_5b
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 9812
    .local v4, "vis":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_64

    .line 9813
    invoke-virtual {p0, v4}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 9815
    :cond_64
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_6d

    .line 9817
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 9819
    :cond_6d
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 5936
    invoke-virtual {p0, p1}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 5937
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 5915
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5916
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .registers 3
    .param p1, "consistency"    # I

    .prologue
    .line 12514
    invoke-virtual {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v0

    return v0
.end method

.method dispatchDetachedFromWindow()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 9822
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9823
    .local v1, "info":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_e

    .line 9824
    iget v5, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 9825
    .local v5, "vis":I
    if-eq v5, v7, :cond_e

    .line 9826
    invoke-virtual {p0, v7}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 9830
    .end local v5    # "vis":I
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 9832
    iget-object v2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 9833
    .local v2, "li":Landroid/view/View$ListenerInfo;
    if-eqz v2, :cond_35

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 9835
    .local v4, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_19
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_37

    .line 9840
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    .line 9841
    .local v3, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v3, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_25

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    .end local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_35
    move-object v4, v6

    .line 9833
    goto :goto_19

    .line 9845
    .restart local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_37
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4d

    .line 9846
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9847
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9850
    :cond_4d
    iput-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9851
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .prologue
    .line 5815
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 5816
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 13472
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 13473
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 13475
    const/4 v1, 0x1

    .line 13477
    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6885
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 5442
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 5443
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5703
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5597
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_b

    .line 5598
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 5601
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 5602
    .local v1, "source":I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_40

    .line 5603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5604
    .local v0, "action":I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_22

    const/4 v4, 0x7

    if-eq v0, v4, :cond_22

    const/16 v4, 0xa

    if-ne v0, v4, :cond_29

    .line 5607
    :cond_22
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 5624
    .end local v0    # "action":I
    :cond_28
    :goto_28
    return v2

    .line 5610
    .restart local v0    # "action":I
    :cond_29
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 5617
    .end local v0    # "action":I
    :cond_2f
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 5621
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_3e

    .line 5622
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3e
    move v2, v3

    .line 5624
    goto :goto_28

    .line 5613
    :cond_40
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_28
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5689
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .registers 1

    .prologue
    .line 10356
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5658
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5659
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5662
    const/4 v1, 0x1

    .line 5665
    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5488
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_b

    .line 5489
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 5494
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5495
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_2b

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_2b

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    .line 5508
    :goto_2a
    return v1

    .line 5500
    :cond_2b
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_33
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v2

    .line 5502
    goto :goto_2a

    .line 5500
    :cond_3b
    const/4 v1, 0x0

    goto :goto_33

    .line 5505
    :cond_3d
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_46

    .line 5506
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_46
    move v1, v3

    .line 5508
    goto :goto_2a
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5474
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5518
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5721
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5723
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3979
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 3980
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3982
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3992
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3993
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9945
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 9946
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 9947
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_29

    .line 9950
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9951
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 9952
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    .line 9953
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9958
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_29
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9878
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_2e

    .line 9879
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9880
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 9881
    .local v0, "state":Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_27

    .line 9882
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9885
    :cond_27
    if-eqz v0, :cond_2e

    .line 9888
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9891
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_2e
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .prologue
    .line 12086
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 4955
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .prologue
    .line 12044
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 5424
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5425
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 13198
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 13199
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_15

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 13200
    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 13203
    :cond_15
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5529
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_b

    .line 5530
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 5533
    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 5535
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5536
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_2c

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2c

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 5549
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_2b
    :goto_2b
    return v1

    .line 5541
    .restart local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 5546
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_32
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_3b

    .line 5547
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3b
    move v1, v2

    .line 5549
    goto :goto_2b
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5577
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_a

    .line 5578
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 5581
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 5120
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 5785
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 5786
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 5735
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 5736
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 5839
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 5840
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 10943
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v27, v0

    .line 10944
    .local v27, "privateFlags":I
    const/high16 v2, 0x600000

    and-int v2, v2, v27

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_8d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_8d

    :cond_1c
    const/4 v12, 0x1

    .line 10946
    .local v12, "dirtyOpaque":Z
    :goto_1d
    const v2, -0x600001

    and-int v2, v2, v27

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10963
    if-nez v12, :cond_67

    .line 10964
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 10965
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_67

    .line 10966
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v31, v0

    .line 10967
    .local v31, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 10969
    .local v32, "scrollY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v2, :cond_5e

    .line 10970
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10971
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10974
    :cond_5e
    or-int v2, v31, v32

    if-nez v2, :cond_8f

    .line 10975
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10985
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    .end local v31    # "scrollX":I
    .end local v32    # "scrollY":I
    :cond_67
    :goto_67
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v38, v0

    .line 10986
    .local v38, "viewFlags":I
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_ad

    const/16 v20, 0x1

    .line 10987
    .local v20, "horizontalEdges":Z
    :goto_75
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_b0

    const/16 v37, 0x1

    .line 10988
    .local v37, "verticalEdges":Z
    :goto_7d
    if-nez v37, :cond_b3

    if-nez v20, :cond_b3

    .line 10990
    if-nez v12, :cond_86

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 10993
    :cond_86
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10996
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 11137
    :goto_8c
    return-void

    .line 10944
    .end local v12    # "dirtyOpaque":Z
    .end local v20    # "horizontalEdges":Z
    .end local v37    # "verticalEdges":Z
    .end local v38    # "viewFlags":I
    :cond_8d
    const/4 v12, 0x0

    goto :goto_1d

    .line 10977
    .restart local v9    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dirtyOpaque":Z
    .restart local v31    # "scrollX":I
    .restart local v32    # "scrollY":I
    :cond_8f
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10978
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10979
    move/from16 v0, v31

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v32

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_67

    .line 10986
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    .end local v31    # "scrollX":I
    .end local v32    # "scrollY":I
    .restart local v38    # "viewFlags":I
    :cond_ad
    const/16 v20, 0x0

    goto :goto_75

    .line 10987
    .restart local v20    # "horizontalEdges":Z
    :cond_b0
    const/16 v37, 0x0

    goto :goto_7d

    .line 11009
    .restart local v37    # "verticalEdges":Z
    :cond_b3
    const/16 v16, 0x0

    .line 11010
    .local v16, "drawTop":Z
    const/4 v13, 0x0

    .line 11011
    .local v13, "drawBottom":Z
    const/4 v14, 0x0

    .line 11012
    .local v14, "drawLeft":Z
    const/4 v15, 0x0

    .line 11014
    .local v15, "drawRight":Z
    const/16 v36, 0x0

    .line 11015
    .local v36, "topFadeStrength":F
    const/4 v11, 0x0

    .line 11016
    .local v11, "bottomFadeStrength":F
    const/16 v22, 0x0

    .line 11017
    .local v22, "leftFadeStrength":F
    const/16 v29, 0x0

    .line 11020
    .local v29, "rightFadeStrength":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .line 11022
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v25

    .line 11023
    .local v25, "offsetRequired":Z
    if-eqz v25, :cond_d1

    .line 11024
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v2

    add-int v26, v26, v2

    .line 11027
    :cond_d1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    add-int v21, v2, v26

    .line 11028
    .local v21, "left":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    add-int v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v28, v2, v26

    .line 11029
    .local v28, "right":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeTop(Z)I

    move-result v3

    add-int v35, v2, v3

    .line 11030
    .local v35, "top":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v2

    add-int v10, v35, v2

    .line 11032
    .local v10, "bottom":I
    if-eqz v25, :cond_10e

    .line 11033
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v2

    add-int v28, v28, v2

    .line 11034
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v10, v2

    .line 11037
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v33, v0

    .line 11038
    .local v33, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 11039
    .local v18, "fadeHeight":F
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    .line 11043
    .local v23, "length":I
    if-eqz v37, :cond_12c

    add-int v2, v35, v23

    sub-int v3, v10, v23

    if-le v2, v3, :cond_12c

    .line 11044
    sub-int v2, v10, v35

    div-int/lit8 v23, v2, 0x2

    .line 11048
    :cond_12c
    if-eqz v20, :cond_138

    add-int v2, v21, v23

    sub-int v3, v28, v23

    if-le v2, v3, :cond_138

    .line 11049
    sub-int v2, v28, v21

    div-int/lit8 v23, v2, 0x2

    .line 11052
    :cond_138
    if-eqz v37, :cond_16b

    .line 11053
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 11054
    mul-float v2, v36, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2e0

    const/16 v16, 0x1

    .line 11055
    :goto_153
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 11056
    mul-float v2, v11, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2e4

    const/4 v13, 0x1

    .line 11059
    :cond_16b
    :goto_16b
    if-eqz v20, :cond_19d

    .line 11060
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 11061
    mul-float v2, v22, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2e7

    const/4 v14, 0x1

    .line 11062
    :goto_185
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 11063
    mul-float v2, v29, v18

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2ea

    const/4 v15, 0x1

    .line 11066
    :cond_19d
    :goto_19d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v30

    .line 11068
    .local v30, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v34

    .line 11069
    .local v34, "solidColor":I
    if-nez v34, :cond_2ed

    .line 11070
    const/16 v19, 0x4

    .line 11072
    .local v19, "flags":I
    if-eqz v16, :cond_1be

    .line 11073
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11076
    :cond_1be
    if-eqz v13, :cond_1d1

    .line 11077
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11080
    :cond_1d1
    if-eqz v14, :cond_1e4

    .line 11081
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11084
    :cond_1e4
    if-eqz v15, :cond_1f7

    .line 11085
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 11092
    .end local v19    # "flags":I
    :cond_1f7
    :goto_1f7
    if-nez v12, :cond_1fc

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 11095
    :cond_1fc
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 11098
    move-object/from16 v0, v33

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 11099
    .local v7, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    .line 11100
    .local v24, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v17, v0

    .line 11102
    .local v17, "fade":Landroid/graphics/Shader;
    if-eqz v16, :cond_23d

    .line 11103
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v36

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11104
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11105
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11106
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11109
    :cond_23d
    if-eqz v13, :cond_26e

    .line 11110
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11111
    const/high16 v2, 0x43340000

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11112
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v3, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11113
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11114
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11117
    :cond_26e
    if-eqz v14, :cond_2a1

    .line 11118
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v22

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11119
    const/high16 v2, -0x3d4c0000

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11120
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11121
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11122
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11125
    :cond_2a1
    if-eqz v15, :cond_2d4

    .line 11126
    const/high16 v2, 0x3f800000

    mul-float v3, v18, v29

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11127
    const/high16 v2, 0x42b40000

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11128
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11129
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11130
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11133
    :cond_2d4
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 11136
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_8c

    .line 11054
    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v17    # "fade":Landroid/graphics/Shader;
    .end local v24    # "matrix":Landroid/graphics/Matrix;
    .end local v30    # "saveCount":I
    .end local v34    # "solidColor":I
    :cond_2e0
    const/16 v16, 0x0

    goto/16 :goto_153

    .line 11056
    :cond_2e4
    const/4 v13, 0x0

    goto/16 :goto_16b

    .line 11061
    :cond_2e7
    const/4 v14, 0x0

    goto/16 :goto_185

    .line 11063
    :cond_2ea
    const/4 v15, 0x0

    goto/16 :goto_19d

    .line 11088
    .restart local v30    # "saveCount":I
    .restart local v34    # "solidColor":I
    :cond_2ed
    invoke-virtual/range {v33 .. v34}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_1f7
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 11525
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 11526
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 11527
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11529
    :cond_11
    return-void
.end method

.method ensureTransformationInfo()V
    .registers 2

    .prologue
    .line 7079
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_b

    .line 7080
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7082
    :cond_b
    return-void
.end method

.method public fastInvalidate()V
    .registers 7

    .prologue
    const v5, 0x8000

    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    .line 8597
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8622
    :cond_c
    :goto_c
    return-void

    .line 8600
    :cond_d
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1f

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_1f

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_c

    .line 8603
    :cond_1f
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2e

    .line 8604
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/View;

    iget v2, v1, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/View;->mPrivateFlags:I

    .line 8606
    :cond_2e
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8607
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8608
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8609
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8610
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_c

    .line 8611
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v1, :cond_5d

    .line 8612
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_c

    .line 8614
    :cond_5d
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8615
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8618
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_c
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 4328
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 5132
    sparse-switch p2, :sswitch_data_4a

    .line 5158
    :cond_5
    :goto_5
    return-object v1

    .line 5134
    :sswitch_6
    iget v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-eq v2, v3, :cond_5

    .line 5135
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 5137
    :sswitch_11
    iget v2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-eq v2, v3, :cond_5

    .line 5138
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 5140
    :sswitch_1c
    iget v2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-eq v2, v3, :cond_5

    .line 5141
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 5143
    :sswitch_27
    iget v2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-eq v2, v3, :cond_5

    .line 5144
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 5146
    :sswitch_32
    iget v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-eq v2, v3, :cond_5

    .line 5147
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 5149
    :sswitch_3d
    iget v0, p0, Landroid/view/View;->mID:I

    .line 5150
    .local v0, "id":I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 5132
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_32
        0x11 -> :sswitch_6
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_11
        0x82 -> :sswitch_27
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 12269
    if-gez p1, :cond_4

    .line 12270
    const/4 v0, 0x0

    .line 12272
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 12289
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 12292
    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 12256
    if-gez p1, :cond_4

    .line 12257
    const/4 v0, 0x0

    .line 12259
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 12318
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 7
    .param p1, "start"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 12338
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 12340
    .local v0, "childToSkip":Landroid/view/View;
    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 12341
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_9

    if-ne p1, p0, :cond_a

    .line 12347
    .end local v2    # "view":Landroid/view/View;
    :cond_9
    :goto_9
    return-object v2

    .line 12345
    .restart local v2    # "view":Landroid/view/View;
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 12346
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_14

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_16

    .line 12347
    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 12350
    :cond_16
    move-object v0, p1

    move-object p1, v1

    .line 12351
    check-cast p1, Landroid/view/View;

    .line 12352
    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 12242
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12245
    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 12217
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_5

    .line 12220
    .end local p0    # "this":Landroid/view/View;
    :goto_4
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_5
    const/4 p0, 0x0

    goto :goto_4
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 12303
    if-nez p1, :cond_4

    .line 12304
    const/4 v0, 0x0

    .line 12306
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 12229
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12232
    .end local p0    # "this":Landroid/view/View;
    :goto_a
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_b
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 5247
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_2d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 5249
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 5250
    .local v1, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 5251
    .local v0, "contentDescriptionLowerCase":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 5252
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5255
    .end local v0    # "contentDescriptionLowerCase":Ljava/lang/String;
    .end local v1    # "searchedLowerCase":Ljava/lang/String;
    :cond_2d
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 4553
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 4554
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 4555
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 4556
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 4557
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 4558
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4559
    const/4 v0, 0x1

    .line 4561
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public fitsSystemWindows()Z
    .registers 3

    .prologue
    .line 4591
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 5101
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    .line 5102
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 5104
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public forceLayout()V
    .registers 3

    .prologue
    .line 12698
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12699
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12700
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 13079
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13080
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_2f

    if-eqz v6, :cond_2f

    .line 13081
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13082
    .local v8, "pflags":I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_30

    .line 13085
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 13086
    .local v7, "location":[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13087
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 13096
    .end local v7    # "location":[I
    .end local v8    # "pflags":I
    :cond_2f
    :goto_2f
    return v9

    .line 13089
    .restart local v8    # "pflags":I
    :cond_30
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    .line 13093
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_2f
.end method

.method public getAccessibilityViewId()I
    .registers 3

    .prologue
    .line 4231
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 4232
    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 4234
    :cond_d
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .registers 2

    .prologue
    .line 4245
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 7527
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000

    goto :goto_8
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 12980
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 9757
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9758
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 9759
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 9760
    .local v1, "appWindowToken":Landroid/os/IBinder;
    if-nez v1, :cond_a

    .line 9761
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 9765
    .end local v1    # "appWindowToken":Landroid/os/IBinder;
    :cond_a
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 11819
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 12666
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7647
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 9011
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f800000

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getBottomPaddingOffset()I
    .registers 2

    .prologue
    .line 10887
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 4260
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 5986
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 6205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const v7, 0x8020

    const v6, -0x600001

    .line 10379
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v5

    if-nez v5, :cond_e

    .line 10442
    :goto_d
    return-object v4

    .line 10383
    :cond_e
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v4, :cond_bb

    .line 10388
    :cond_26
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_46

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-eqz v4, :cond_46

    iget-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v4, :cond_46

    .line 10390
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10391
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10392
    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    .line 10394
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    goto :goto_d

    .line 10399
    :cond_46
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 10400
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-nez v4, :cond_5a

    .line 10401
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->createDisplayList()Landroid/view/DisplayList;

    move-result-object v4

    iput-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 10405
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10408
    :cond_5a
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 10409
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    const/4 v2, 0x0

    .line 10411
    .local v2, "restoreCount":I
    :try_start_61
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v5

    .line 10412
    .local v3, "width":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v1, v4, v5

    .line 10414
    .local v1, "height":I
    invoke-virtual {v0, v3, v1}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 10416
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 10418
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 10420
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v2

    .line 10421
    iget v4, p0, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 10422
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10423
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10426
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_aa

    .line 10427
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_9b
    .catchall {:try_start_61 .. :try_end_9b} :catchall_ae

    .line 10432
    :goto_9b
    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 10433
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10435
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->end()V

    .line 10442
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    :goto_a6
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    goto/16 :goto_d

    .line 10429
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    .restart local v1    # "height":I
    .restart local v2    # "restoreCount":I
    .restart local v3    # "width":I
    :cond_aa
    :try_start_aa
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_9b

    .line 10432
    .end local v1    # "height":I
    .end local v3    # "width":I
    :catchall_ae
    move-exception v4

    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 10433
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10435
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v5}, Landroid/view/DisplayList;->end()V

    throw v4

    .line 10438
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v2    # "restoreCount":I
    :cond_bb
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10439
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_a6
.end method

.method public final getDrawableState()[I
    .registers 2

    .prologue
    .line 11560
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_d

    .line 11561
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 11565
    :goto_c
    return-object v0

    .line 11563
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 11564
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11565
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_c
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 10453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "autoScale"    # Z

    .prologue
    const/high16 v2, 0x20000

    const v1, 0x8000

    .line 10484
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    .line 10485
    const/4 v0, 0x0

    .line 10490
    :goto_b
    return-object v0

    .line 10487
    :cond_c
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 10488
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 10490
    :cond_14
    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b

    :cond_19
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method public getDrawingCacheBackgroundColor()I
    .registers 2

    .prologue
    .line 10538
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .registers 3

    .prologue
    .line 4366
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x180000

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 6968
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 6969
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6970
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 6971
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6972
    return-void
.end method

.method public getDrawingTime()J
    .registers 3

    .prologue
    .line 9989
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method protected getFadeHeight(Z)I
    .registers 5
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 10905
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 10906
    .local v0, "padding":I
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 10907
    :cond_9
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .registers 4
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 10895
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 10896
    .local v0, "top":I
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 10897
    :cond_9
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5017
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFocusRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 7140
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 7141
    return-void
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5184
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5185
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 5186
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 8068
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8069
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 8099
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 8
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "globalOffset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 8086
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 8087
    .local v1, "width":I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 8088
    .local v0, "height":I
    if-lez v1, :cond_2c

    if-lez v0, :cond_2c

    .line 8089
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8090
    if-eqz p2, :cond_1f

    .line 8091
    iget v3, p0, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 8093
    :cond_1f
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2b
    const/4 v2, 0x1

    .line 8095
    :cond_2c
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 8708
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 8709
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8711
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 10174
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_15

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_15

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_16

    .line 10239
    :cond_15
    :goto_15
    return-object v5

    .line 10179
    :cond_16
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, v6, v7

    .line 10180
    .local v4, "width":I
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v6, v7

    .line 10182
    .local v2, "height":I
    if-eqz v4, :cond_15

    if-eqz v2, :cond_15

    .line 10186
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_32

    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_cb

    .line 10187
    :cond_32
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_63

    .line 10188
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v7

    invoke-virtual {v6, v4, v2, v7}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v6

    iput-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 10190
    iget-object v6, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 10197
    :cond_49
    :goto_49
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 10201
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v6, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 10202
    .local v1, "currentCanvas":Landroid/view/HardwareCanvas;
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v1}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 10205
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    if-nez v0, :cond_7e

    .line 10206
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    goto :goto_15

    .line 10191
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v1    # "currentCanvas":Landroid/view/HardwareCanvas;
    :cond_63
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v6

    if-ne v6, v4, :cond_73

    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v6

    if-eq v6, v2, :cond_49

    .line 10192
    :cond_73
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v4, v2}, Landroid/view/HardwareLayer;->resize(II)V

    .line 10193
    iget-object v6, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_49

    .line 10210
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    .restart local v1    # "currentCanvas":Landroid/view/HardwareCanvas;
    :cond_7e
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v5, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 10212
    :try_start_82
    invoke-virtual {v0, v4, v2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 10213
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 10214
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 10216
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v3

    .line 10218
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 10219
    iget v5, p0, Landroid/view/View;->mScrollX:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 10221
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x8020

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10224
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_cf

    .line 10225
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x600001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10226
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10231
    :goto_bc
    invoke-virtual {v0, v3}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_bf
    .catchall {:try_start_82 .. :try_end_bf} :catchall_d3

    .line 10233
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10234
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 10235
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v5, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 10239
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v1    # "currentCanvas":Landroid/view/HardwareCanvas;
    .end local v3    # "restoreCount":I
    :cond_cb
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto/16 :goto_15

    .line 10228
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    .restart local v1    # "currentCanvas":Landroid/view/HardwareCanvas;
    .restart local v3    # "restoreCount":I
    :cond_cf
    :try_start_cf
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_bc

    .line 10233
    .end local v3    # "restoreCount":I
    :catchall_d3
    move-exception v5

    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 10234
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 10235
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v6, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    throw v5
.end method

.method public final getHeight()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 6957
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 8023
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8024
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8025
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_11

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v2, :cond_1d

    .line 8026
    :cond_11
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8035
    :goto_1c
    return-void

    .line 8028
    :cond_1d
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 8029
    .local v1, "tmpRect":Landroid/graphics/RectF;
    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8031
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8032
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1c
.end method

.method public getHorizontalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 3195
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3196
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3197
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 3198
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3201
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getHorizontalScrollFactor()F
    .registers 2

    .prologue
    .line 13721
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3233
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3234
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_11

    .line 3235
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3236
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_11

    .line 3237
    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3238
    .local v2, "size":I
    if-gtz v2, :cond_11

    .line 3239
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3245
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_11
    return v2
.end method

.method public getId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 12407
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method final getInverseMatrix()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 7151
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7152
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_2f

    .line 7153
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7154
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 7155
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 7156
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 7158
    :cond_1b
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 7159
    const/4 v1, 0x0

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    .line 7161
    :cond_2a
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 7163
    :goto_2e
    return-object v1

    :cond_2f
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_2e
.end method

.method public getKeepScreenOn()Z
    .registers 3

    .prologue
    .line 4397
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .registers 2

    .prologue
    .line 5460
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getLayerType()I
    .registers 2

    .prologue
    .line 10130
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000000
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x80000000
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x40000000
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4771
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, -0x40000000

    and-int/2addr v0, v1

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 8213
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7713
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 9026
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f800000

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getLeftPaddingOffset()I
    .registers 2

    .prologue
    .line 10845
    const/4 v0, 0x0

    return v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .registers 2

    .prologue
    .line 3355
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_7

    .line 3356
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3359
    :goto_6
    return-object v0

    .line 3358
    :cond_7
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3359
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_6
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 8103
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 8104
    .local v0, "offset":Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 8105
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 8106
    const/4 v1, 0x1

    .line 8108
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getLocationInWindow([I)V
    .registers 11
    .param p1, "location"    # [I

    .prologue
    const/high16 v8, 0x3f000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 12168
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_9

    .line 12209
    :goto_8
    return-void

    .line 12170
    :cond_9
    if-eqz p1, :cond_f

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_17

    .line 12171
    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 12174
    :cond_17
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 12175
    .local v0, "position":[F
    const/4 v4, 0x0

    aput v4, v0, v6

    aput v4, v0, v7

    .line 12177
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 12178
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12181
    :cond_2d
    aget v4, v0, v7

    iget v5, p0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 12182
    aget v4, v0, v6

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 12184
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 12185
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_3f
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_76

    move-object v1, v2

    .line 12186
    check-cast v1, Landroid/view/View;

    .line 12188
    .local v1, "view":Landroid/view/View;
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 12189
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 12191
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_63

    .line 12192
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12195
    :cond_63
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 12196
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 12198
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 12199
    goto :goto_3f

    .line 12201
    .end local v1    # "view":Landroid/view/View;
    :cond_76
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_85

    move-object v3, v2

    .line 12203
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 12204
    .local v3, "vr":Landroid/view/ViewRootImpl;
    aget v4, v0, v6

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 12207
    .end local v3    # "vr":Landroid/view/ViewRootImpl;
    :cond_85
    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    .line 12208
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    goto/16 :goto_8
.end method

.method public getLocationOnScreen([I)V
    .registers 6
    .param p1, "location"    # [I

    .prologue
    .line 12150
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12152
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12153
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 12154
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 12155
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 12157
    :cond_17
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 7047
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_e

    .line 7048
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7049
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 7051
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_d
.end method

.method public final getMeasuredHeight()I
    .registers 3

    .prologue
    .line 7006
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .registers 2

    .prologue
    .line 7019
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .registers 3

    .prologue
    .line 7030
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .registers 3

    .prologue
    .line 6982
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .registers 2

    .prologue
    .line 6995
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .registers 2

    .prologue
    .line 4484
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .registers 2

    .prologue
    .line 4505
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .registers 2

    .prologue
    .line 4421
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .registers 2

    .prologue
    .line 4442
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .registers 2

    .prologue
    .line 4463
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 3

    .prologue
    .line 3440
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3441
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_6
    return-object v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getOverScrollMode()I
    .registers 2

    .prologue
    .line 13670
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 11951
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .registers 3

    .prologue
    .line 12000
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/high16 v1, 0x40000000

    if-ne v0, v1, :cond_b

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_a
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 11962
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 11987
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .registers 3

    .prologue
    .line 11975
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/high16 v1, 0x40000000

    if-ne v0, v1, :cond_b

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_a
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 11940
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 6894
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .prologue
    .line 7443
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getPivotY()F
    .registers 2

    .prologue
    .line 7487
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getResolvedLayoutDirection()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000000
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4809
    invoke-direct {p0}, Landroid/view/View;->resolveLayoutDirectionIfNeeded()V

    .line 4810
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/high16 v0, 0x40000000

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 11489
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/high16 v0, -0x80000000

    goto :goto_8
.end method

.method public getResolvedTextDirection()I
    .registers 2

    .prologue
    .line 13776
    iget v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    if-nez v0, :cond_7

    .line 13777
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 13779
    :cond_7
    iget v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 11413
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7773
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 9040
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f800000

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getRightPaddingOffset()I
    .registers 2

    .prologue
    .line 10859
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 4

    .prologue
    .line 12126
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_b

    .line 12127
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 12128
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_b

    .line 12139
    .end local v1    # "v":Landroid/view/View;
    :goto_a
    return-object v1

    .line 12133
    :cond_b
    move-object v0, p0

    .line 12135
    .local v0, "parent":Landroid/view/View;
    :goto_c
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1b

    .line 12136
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_c

    :cond_1b
    move-object v1, v0

    .line 12139
    goto :goto_a
.end method

.method public getRotation()F
    .registers 2

    .prologue
    .line 7233
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getRotationX()F
    .registers 2

    .prologue
    .line 7320
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getRotationY()F
    .registers 2

    .prologue
    .line 7274
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getScaleX()F
    .registers 2

    .prologue
    .line 7367
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000

    goto :goto_8
.end method

.method public getScaleY()F
    .registers 2

    .prologue
    .line 7405
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000

    goto :goto_8
.end method

.method public getScrollBarStyle()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 9178
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .registers 2

    .prologue
    .line 6926
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .registers 2

    .prologue
    .line 6937
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11152
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 12915
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    .line 12917
    .local v1, "suggestedMinHeight":I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 12918
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 12919
    .local v0, "bgMinHeight":I
    if-ge v1, v0, :cond_f

    .line 12920
    move v1, v0

    .line 12924
    .end local v0    # "bgMinHeight":I
    :cond_f
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 12939
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    .line 12941
    .local v1, "suggestedMinWidth":I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 12942
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 12943
    .local v0, "bgMinWidth":I
    if-ge v1, v0, :cond_f

    .line 12944
    move v1, v0

    .line 12948
    .end local v0    # "bgMinWidth":I
    :cond_f
    return v1
.end method

.method public getSystemUiVisibility()I
    .registers 2

    .prologue
    .line 13179
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 12420
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 12449
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 12450
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTextDirection()I
    .registers 2

    .prologue
    .line 13739
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    return v0
.end method

.method public final getTop()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7587
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 8997
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f800000

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getTopPaddingOffset()I
    .registers 2

    .prologue
    .line 10873
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .registers 2

    .prologue
    .line 6659
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5265
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5266
    return-object v0
.end method

.method public getTranslationX()F
    .registers 2

    .prologue
    .line 7876
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getTranslationY()F
    .registers 2

    .prologue
    .line 7912
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getVerticalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 3162
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3163
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3164
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 3165
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3168
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getVerticalScrollFactor()F
    .registers 5

    .prologue
    .line 13700
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_34

    .line 13701
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 13702
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_24

    .line 13704
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13707
    :cond_24
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .line 13710
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_34
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .registers 2

    .prologue
    .line 3351
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3211
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3212
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_12

    .line 3213
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3214
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_12

    .line 3215
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3216
    .local v2, "size":I
    if-gtz v2, :cond_12

    .line 3217
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3223
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_12
    return v2
.end method

.method getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 3

    .prologue
    .line 5379
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 5380
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    .prologue
    .line 12111
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 12112
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12117
    :goto_8
    return-object v0

    .line 12114
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_14

    .line 12115
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12117
    :cond_14
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_8
.end method

.method public getVisibility()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4606
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 6947
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .registers 2

    .prologue
    .line 9734
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .prologue
    .line 9774
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 9743
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowVisibility()I
    .registers 2

    .prologue
    .line 5865
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x8

    goto :goto_8
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 5885
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_32

    .line 5887
    :try_start_4
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_30

    .line 5894
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 5895
    .local v2, "insets":Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 5896
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 5897
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 5898
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 5903
    .end local v2    # "insets":Landroid/graphics/Rect;
    :goto_2f
    return-void

    .line 5888
    :catch_30
    move-exception v1

    .line 5889
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2f

    .line 5901
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_32
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 5902
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_2f
.end method

.method public getX()F
    .registers 3

    .prologue
    .line 7831
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_b
    add-float/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getY()F
    .registers 3

    .prologue
    .line 7853
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_b
    add-float/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .registers 3
    .param p1, "off"    # Z

    .prologue
    .line 14123
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 14124
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3673
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c

    .line 3674
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3676
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    .line 3677
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3680
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3681
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3683
    :cond_1c
    return-void
.end method

.method public hasFocus()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 3798
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFocusable()Z
    .registers 2

    .prologue
    .line 3814
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected hasHoveredChild()Z
    .registers 2

    .prologue
    .line 5675
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .registers 2

    .prologue
    .line 7071
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_e

    .line 7072
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7073
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    .line 7075
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public hasOnClickListeners()Z
    .registers 3

    .prologue
    .line 3464
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3465
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected hasOpaqueScrollbars()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1000000

    .line 8700
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method hasStaticLayer()Z
    .registers 2

    .prologue
    .line 10111
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 5773
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 3146
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3148
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3151
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .registers 11
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3260
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3262
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3264
    .local v2, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_12

    .line 3265
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3268
    :cond_12
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 3270
    .local v1, "fadeScrollbars":Z
    if-nez v1, :cond_1c

    .line 3271
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 3273
    :cond_1c
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 3276
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 3279
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 3284
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3288
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3289
    .local v4, "track":Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3291
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3292
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5b

    .line 3293
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3296
    :cond_5b
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3298
    .local v0, "alwaysDraw":Z
    if-eqz v0, :cond_67

    .line 3299
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 3302
    :cond_67
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3303
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3305
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3306
    if-eqz v3, :cond_7d

    .line 3307
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3310
    :cond_7d
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3312
    if-eqz v0, :cond_89

    .line 3313
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 3317
    :cond_89
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3318
    return-void
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 8539
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 8540
    return-void
.end method

.method public invalidate(IIII)V
    .registers 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x80000000

    .line 8502
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 8530
    :cond_b
    :goto_b
    return-void

    .line 8505
    :cond_c
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_b

    .line 8508
    :cond_1e
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8509
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8510
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8511
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8512
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8522
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    if-ge p1, p3, :cond_b

    if-ge p2, p4, :cond_b

    .line 8523
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 8524
    .local v2, "scrollX":I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 8525
    .local v3, "scrollY":I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8526
    .local v4, "tmpr":Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8527
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_b
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x80000000

    .line 8455
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 8484
    :cond_b
    :goto_b
    return-void

    .line 8458
    :cond_c
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_b

    .line 8461
    :cond_1e
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8462
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8463
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8464
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8465
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8475
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 8476
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 8477
    .local v3, "scrollX":I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 8478
    .local v4, "scrollY":I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8479
    .local v2, "r":Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8481
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_b
.end method

.method invalidate(Z)V
    .registers 10
    .param p1, "invalidateCache"    # Z

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    const/high16 v5, -0x80000000

    .line 8558
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 8591
    :cond_c
    :goto_c
    return-void

    .line 8561
    :cond_d
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-eq v3, v4, :cond_29

    if-eqz p1, :cond_1c

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_29

    :cond_1c
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iget-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v3, v4, :cond_c

    .line 8564
    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 8565
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8566
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8567
    if-eqz p1, :cond_4b

    .line 8568
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8569
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8571
    :cond_4b
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8572
    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8583
    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 8584
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8585
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8588
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_c
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 11422
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 11423
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 11424
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 11425
    .local v1, "scrollX":I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 11427
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 11430
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_1d
    return-void
.end method

.method protected invalidateParentCaches()V
    .registers 4

    .prologue
    .line 8634
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 8635
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 8637
    :cond_11
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .registers 3

    .prologue
    .line 8649
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_14

    .line 8650
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 8652
    :cond_14
    return-void
.end method

.method public isActivated()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 12095
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isClickable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4884
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDirty()Z
    .registers 3

    .prologue
    .line 7656
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x600000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isDrawingCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 10320
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDuplicateParentStateEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x400000

    .line 10027
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4629
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isFocusable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 5075
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isFocusableInTouchMode()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x40000

    .line 5088
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 4317
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x10000000

    .line 4750
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 10926
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 8927
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHorizontalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 9054
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHovered()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6382
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isInEditMode()Z
    .registers 2

    .prologue
    .line 10809
    const/4 v0, 0x0

    return v0
.end method

.method public isInScrollingContainer()Z
    .registers 3

    .prologue
    .line 6573
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6574
    .local v0, "p":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_1a

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    move-object v1, v0

    .line 6575
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6576
    const/4 v1, 0x1

    .line 6580
    :goto_14
    return v1

    .line 6578
    :cond_15
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 6580
    :cond_1a
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isInTouchMode()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5971
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 5972
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 5974
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_8
.end method

.method public isLayoutRequested()Z
    .registers 3

    .prologue
    .line 11255
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLayoutRtl()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4824
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/high16 v1, 0x40000000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLongClickable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200000

    .line 4911
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isOpaque()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x1800000

    .line 8667
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_f
    const v1, 0x3f7aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/high16 v0, 0x3f800000

    goto :goto_f

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 2

    .prologue
    .line 10831
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .registers 2

    .prologue
    .line 12015
    iget-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    return v0
.end method

.method public isPressed()Z
    .registers 3

    .prologue
    .line 4969
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRootNamespace()Z
    .registers 2

    .prologue
    .line 12392
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSaveEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10000

    .line 4982
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSaveFromParentEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20000000

    .line 5046
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrollbarFadingEnabled()Z
    .registers 2

    .prologue
    .line 9135
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelected()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 12053
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShown()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4525
    move-object v0, p0

    .line 4528
    .local v0, "current":Landroid/view/View;
    :cond_2
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_9

    .line 4541
    :cond_8
    :goto_8
    return v2

    .line 4531
    :cond_9
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4532
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_8

    .line 4535
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_13

    .line 4536
    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    move-object v0, v1

    .line 4538
    check-cast v0, Landroid/view/View;

    .line 4539
    if-nez v0, :cond_2

    goto :goto_8
.end method

.method public isSoundEffectsEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x8000000

    .line 4721
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 8962
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVerticalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 9084
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 9466
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 11675
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 11676
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11678
    :cond_9
    return-void
.end method

.method public layout(IIII)V
    .registers 22
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 11280
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 11281
    .local v9, "oldL":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mTop:I

    .line 11282
    .local v10, "oldT":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mBottom:I

    .line 11283
    .local v12, "oldB":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mRight:I

    .line 11284
    .local v11, "oldR":I
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    .line 11285
    .local v2, "changed":Z
    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_6c

    :cond_20
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 11290
    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    .line 11291
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 11293
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 11294
    .local v14, "li":Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_6c

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 11295
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 11297
    .local v15, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 11298
    .local v16, "numListeners":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_52
    move/from16 v0, v16

    if-ge v13, v0, :cond_6c

    .line 11299
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 11298
    add-int/lit8 v13, v13, 0x1

    goto :goto_52

    .line 11303
    .end local v13    # "i":I
    .end local v14    # "li":Landroid/view/View$ListenerInfo;
    .end local v15    # "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16    # "numListeners":I
    :cond_6c
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 11304
    return-void
.end method

.method public final measure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 12723
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_30

    .line 12728
    :cond_10
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12735
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 12739
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_2a

    .line 12740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12745
    :cond_2a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12748
    :cond_30
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 12749
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 12750
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .registers 4
    .param p1, "force"    # Z

    .prologue
    .line 5953
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5954
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_15

    .line 5955
    if-nez p1, :cond_12

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_12

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_12

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_15

    .line 5957
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 5960
    :cond_15
    return-void
.end method

.method public offsetLeftAndRight(I)V
    .registers 11
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 8161
    if-eqz p1, :cond_4e

    .line 8162
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8163
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_12

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_4f

    :cond_12
    const/4 v0, 0x1

    .line 8165
    .local v0, "matrixIsIdentity":Z
    :goto_13
    if-eqz v0, :cond_58

    .line 8166
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8167
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_36

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_36

    .line 8168
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v6, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8171
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_51

    .line 8172
    iget v6, p0, Landroid/view/View;->mLeft:I

    add-int v2, v6, p1

    .line 8173
    .local v2, "minLeft":I
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 8178
    .local v1, "maxRight":I
    :goto_29
    sub-int v6, v1, v2

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 8179
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8185
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_36
    :goto_36
    iget v6, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/view/View;->mLeft:I

    .line 8186
    iget v6, p0, Landroid/view/View;->mRight:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/view/View;->mRight:I

    .line 8188
    if-nez v0, :cond_4b

    .line 8189
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8190
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 8192
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 8194
    .end local v0    # "matrixIsIdentity":Z
    :cond_4e
    return-void

    :cond_4f
    move v0, v5

    .line 8163
    goto :goto_13

    .line 8175
    .restart local v0    # "matrixIsIdentity":Z
    .restart local v3    # "p":Landroid/view/ViewParent;
    .restart local v4    # "r":Landroid/graphics/Rect;
    :cond_51
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 8176
    .restart local v2    # "minLeft":I
    iget v6, p0, Landroid/view/View;->mRight:I

    add-int v1, v6, p1

    .restart local v1    # "maxRight":I
    goto :goto_29

    .line 8182
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_58
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_36
.end method

.method public offsetTopAndBottom(I)V
    .registers 11
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 8117
    if-eqz p1, :cond_4f

    .line 8118
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8119
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_50

    :cond_12
    const/4 v0, 0x1

    .line 8121
    .local v0, "matrixIsIdentity":Z
    :goto_13
    if-eqz v0, :cond_5a

    .line 8122
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8123
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_37

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_37

    .line 8124
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 8128
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_52

    .line 8129
    iget v7, p0, Landroid/view/View;->mTop:I

    add-int v2, v7, p1

    .line 8130
    .local v2, "minTop":I
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 8131
    .local v1, "maxBottom":I
    move v5, p1

    .line 8137
    .local v5, "yLoc":I
    :goto_2a
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    sub-int v8, v1, v2

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8138
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8144
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "yLoc":I
    :cond_37
    :goto_37
    iget v7, p0, Landroid/view/View;->mTop:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mTop:I

    .line 8145
    iget v7, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mBottom:I

    .line 8147
    if-nez v0, :cond_4c

    .line 8148
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8149
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8151
    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 8153
    .end local v0    # "matrixIsIdentity":Z
    :cond_4f
    return-void

    :cond_50
    move v0, v6

    .line 8119
    goto :goto_13

    .line 8133
    .restart local v0    # "matrixIsIdentity":Z
    .restart local v3    # "p":Landroid/view/ViewParent;
    .restart local v4    # "r":Landroid/graphics/Rect;
    :cond_52
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 8134
    .restart local v2    # "minTop":I
    iget v7, p0, Landroid/view/View;->mBottom:I

    add-int v1, v7, p1

    .line 8135
    .restart local v1    # "maxBottom":I
    const/4 v5, 0x0

    .restart local v5    # "yLoc":I
    goto :goto_2a

    .line 8141
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "yLoc":I
    :cond_5a
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_37
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 13045
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13046
    return-void
.end method

.method protected onAnimationStart()V
    .registers 3

    .prologue
    .line 13033
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13034
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 9542
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    .line 9543
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 9545
    :cond_b
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1d

    .line 9546
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 9547
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9549
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 9552
    invoke-direct {p0}, Landroid/view/View;->resolveLayoutDirectionIfNeeded()V

    .line 9553
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9554
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 9555
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 9556
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9557
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 9559
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_36
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 6129
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 13490
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 5929
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 9
    .param p1, "consistency"    # I

    .prologue
    const v6, 0x8000

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 12528
    const/4 v2, 0x1

    .line 12530
    .local v2, "result":Z
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_88

    move v1, v0

    .line 12531
    .local v1, "checkLayout":Z
    :goto_b
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_8a

    .line 12533
    .local v0, "checkDrawing":Z
    :goto_f
    if-eqz v1, :cond_59

    .line 12534
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_36

    .line 12535
    const/4 v2, 0x0

    .line 12536
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have a parent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12540
    :cond_36
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_59

    .line 12541
    const/4 v2, 0x0

    .line 12542
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not attached to a window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12547
    :cond_59
    if-eqz v0, :cond_87

    .line 12551
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_87

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_87

    .line 12553
    const/4 v2, 0x0

    .line 12554
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was invalidated but its drawing cache is valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12559
    :cond_87
    return v2

    .end local v0    # "checkDrawing":Z
    .end local v1    # "checkLayout":Z
    :cond_88
    move v1, v3

    .line 12530
    goto :goto_b

    .restart local v1    # "checkLayout":Z
    :cond_8a
    move v0, v3

    .line 12531
    goto :goto_f
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 6215
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 10
    .param p1, "extraSpace"    # I

    .prologue
    const/high16 v7, 0x400000

    const/4 v6, 0x0

    .line 11585
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_17

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_17

    .line 11587
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 11640
    :cond_16
    :goto_16
    return-object v0

    .line 11592
    :cond_17
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11594
    .local v2, "privateFlags":I
    const/4 v4, 0x0

    .line 11595
    .local v4, "viewStateIndex":I
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_20

    or-int/lit8 v4, v4, 0x10

    .line 11596
    :cond_20
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_28

    or-int/lit8 v4, v4, 0x8

    .line 11597
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_30

    or-int/lit8 v4, v4, 0x4

    .line 11598
    :cond_30
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_36

    or-int/lit8 v4, v4, 0x2

    .line 11599
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_3e

    or-int/lit8 v4, v4, 0x1

    .line 11600
    :cond_3e
    const/high16 v5, 0x40000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_45

    or-int/lit8 v4, v4, 0x20

    .line 11601
    :cond_45
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_57

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v5, :cond_57

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 11606
    or-int/lit8 v4, v4, 0x40

    .line 11608
    :cond_57
    const/high16 v5, 0x10000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_5e

    or-int/lit16 v4, v4, 0x80

    .line 11610
    :cond_5e
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11611
    .local v3, "privateFlags2":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_66

    or-int/lit16 v4, v4, 0x100

    .line 11612
    :cond_66
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_6c

    or-int/lit16 v4, v4, 0x200

    .line 11614
    :cond_6c
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 11628
    .local v0, "drawableState":[I
    if-eqz p1, :cond_16

    .line 11633
    if-eqz v0, :cond_7e

    .line 11634
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 11635
    .local v1, "fullState":[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7c
    move-object v0, v1

    .line 11640
    goto :goto_16

    .line 11637
    .end local v1    # "fullState":[I
    :cond_7e
    new-array v1, p1, [I

    .restart local v1    # "fullState":[I
    goto :goto_7c
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 6145
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 9705
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9707
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 9708
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 9709
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 9710
    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    .line 9712
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 9714
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 9716
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_23

    .line 9717
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->invalidate()V

    .line 9720
    :cond_23
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2f

    .line 9721
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 9724
    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 9726
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 9727
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 9728
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .prologue
    .line 5828
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 13451
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 9515
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 9485
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9486
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9487
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 9349
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 9350
    .local v9, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_c

    .line 9352
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .line 9354
    .local v18, "state":I
    if-nez v18, :cond_d

    .line 9457
    .end local v18    # "state":I
    :cond_c
    :goto_c
    return-void

    .line 9358
    .restart local v18    # "state":I
    :cond_d
    const/4 v14, 0x0

    .line 9360
    .local v14, "invalidate":Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_131

    .line 9362
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_1c

    .line 9363
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 9366
    :cond_1c
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .line 9369
    .local v19, "values":[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_123

    .line 9371
    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9379
    :goto_2f
    const/4 v14, 0x1

    .line 9387
    .end local v19    # "values":[F
    :goto_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    .line 9389
    .local v21, "viewFlags":I
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_13a

    const/4 v10, 0x1

    .line 9391
    .local v10, "drawHorizontalScrollBar":Z
    :goto_3f
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_13d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_13d

    const/4 v11, 0x1

    .line 9395
    .local v11, "drawVerticalScrollBar":Z
    :goto_4e
    if-nez v11, :cond_52

    if-eqz v10, :cond_c

    .line 9396
    :cond_52
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v22, v2, v3

    .line 9397
    .local v22, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int v12, v2, v3

    .line 9399
    .local v12, "height":I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 9401
    .local v4, "scrollBar":Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    .line 9402
    .local v15, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    .line 9403
    .local v16, "scrollY":I
    const/high16 v2, 0x2000000

    and-int v2, v2, v21

    if-nez v2, :cond_140

    const/4 v13, -0x1

    .line 9407
    .local v13, "inside":I
    :goto_79
    if-eqz v10, :cond_cd

    .line 9408
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 9409
    .local v17, "size":I
    if-gtz v17, :cond_86

    .line 9410
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 9413
    :cond_86
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 9416
    if-eqz v11, :cond_143

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v20

    .line 9418
    .local v20, "verticalScrollBarGap":I
    :goto_a1
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .line 9419
    .local v6, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .line 9420
    .local v5, "left":I
    add-int v2, v15, v22

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .line 9421
    .local v7, "right":I
    add-int v8, v6, v17

    .local v8, "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 9422
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 9423
    if-eqz v14, :cond_cd

    .line 9424
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 9428
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v17    # "size":I
    .end local v20    # "verticalScrollBarGap":I
    :cond_cd
    if-eqz v11, :cond_c

    .line 9429
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 9430
    .restart local v17    # "size":I
    if-gtz v17, :cond_da

    .line 9431
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 9434
    :cond_da
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 9437
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v2, :pswitch_data_150

    .line 9441
    add-int v2, v15, v22

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .line 9447
    .restart local v5    # "left":I
    :goto_101
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .line 9448
    .restart local v6    # "top":I
    add-int v7, v5, v17

    .line 9449
    .restart local v7    # "right":I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .restart local v8    # "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 9450
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 9451
    if-eqz v14, :cond_c

    .line 9452
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_c

    .line 9373
    .end local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v10    # "drawHorizontalScrollBar":Z
    .end local v11    # "drawVerticalScrollBar":Z
    .end local v12    # "height":I
    .end local v13    # "inside":I
    .end local v15    # "scrollX":I
    .end local v16    # "scrollY":I
    .end local v17    # "size":I
    .end local v21    # "viewFlags":I
    .end local v22    # "width":I
    .restart local v19    # "values":[F
    :cond_123
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2f

    .line 9383
    .end local v19    # "values":[F
    :cond_131
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_30

    .line 9389
    .restart local v21    # "viewFlags":I
    :cond_13a
    const/4 v10, 0x0

    goto/16 :goto_3f

    .line 9391
    .restart local v10    # "drawHorizontalScrollBar":Z
    :cond_13d
    const/4 v11, 0x0

    goto/16 :goto_4e

    .line 9403
    .restart local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .restart local v11    # "drawVerticalScrollBar":Z
    .restart local v12    # "height":I
    .restart local v15    # "scrollX":I
    .restart local v16    # "scrollY":I
    .restart local v22    # "width":I
    :cond_140
    const/4 v13, 0x0

    goto/16 :goto_79

    .line 9416
    .restart local v13    # "inside":I
    .restart local v17    # "size":I
    :cond_143
    const/16 v20, 0x0

    goto/16 :goto_a1

    .line 9444
    :pswitch_147
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5    # "left":I
    goto :goto_101

    .line 9437
    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_147
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 9505
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9506
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9507
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5562
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 5565
    const/4 v0, 0x0

    .line 5567
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 11405
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 5450
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3836
    if-eqz p1, :cond_7

    .line 3837
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3840
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3841
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_46

    .line 3842
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3843
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3845
    :cond_17
    if-eqz v0, :cond_26

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_26

    .line 3847
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 3849
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 3855
    :cond_29
    :goto_29
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 3856
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3857
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3a

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_3a

    .line 3858
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 3861
    :cond_3a
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_45

    .line 3862
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 3864
    :cond_45
    return-void

    .line 3850
    .end local v1    # "li":Landroid/view/View$ListenerInfo;
    :cond_46
    if-eqz v0, :cond_29

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_29

    .line 3852
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_29
.end method

.method protected onFocusLost()V
    .registers 1

    .prologue
    .line 4293
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 4294
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6271
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .registers 2
    .param p1, "hovered"    # Z

    .prologue
    .line 6429
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6315
    .local v0, "action":I
    iget-boolean v3, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_39

    .line 6316
    const/16 v3, 0x9

    if-eq v0, v3, :cond_11

    if-ne v0, v4, :cond_2c

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 6320
    iput-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 6321
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6332
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 6333
    packed-switch v0, :pswitch_data_60

    .line 6349
    :goto_35
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    .line 6352
    :goto_38
    return v1

    .line 6324
    :cond_39
    const/16 v3, 0xa

    if-eq v0, v3, :cond_4d

    if-ne v0, v4, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 6327
    :cond_4d
    iput-boolean v2, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 6328
    const/16 v3, 0x100

    invoke-virtual {p0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_2c

    .line 6335
    :pswitch_55
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_35

    .line 6338
    :pswitch_59
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_35

    :cond_5d
    move v1, v2

    .line 6352
    goto :goto_38

    .line 6333
    nop

    :pswitch_data_60
    .packed-switch 0x9
        :pswitch_55
        :pswitch_59
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4071
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 4072
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4076
    :goto_9
    return-void

    .line 4074
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4084
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 4085
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4086
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4087
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 4088
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4090
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_4f

    .line 4091
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 4092
    .local v0, "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4094
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 4095
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 4096
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4098
    .end local v0    # "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 4152
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 4153
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4157
    :goto_9
    return-void

    .line 4155
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_9
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4165
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 4166
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4167
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 4169
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v4, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4170
    .local v1, "locationOnScreen":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4171
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 4172
    aget v4, v1, v5

    aget v5, v1, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 4173
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4175
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_34

    .line 4176
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4177
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_34

    move-object v3, v2

    .line 4178
    check-cast v3, Landroid/view/View;

    .line 4179
    .local v3, "parentView":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 4183
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v3    # "parentView":Landroid/view/View;
    :cond_34
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4185
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4187
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 4188
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 4189
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 4190
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 4191
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 4192
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 4197
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4198
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4200
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 4201
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 4202
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4207
    :cond_92
    :goto_92
    return-void

    .line 4204
    :cond_93
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_92
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x1

    .line 6016
    const/4 v0, 0x0

    .line 6018
    .local v0, "result":Z
    sparse-switch p1, :sswitch_data_2e

    .line 6035
    .end local v0    # "result":Z
    :cond_7
    :goto_7
    return v0

    .line 6021
    .restart local v0    # "result":Z
    :sswitch_8
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_12

    move v0, v1

    .line 6022
    goto :goto_7

    .line 6025
    :cond_12
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_1f

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    :cond_1f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 6028
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6029
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/View;->checkForLongClick(I)V

    move v0, v1

    .line 6030
    goto :goto_7

    .line 6018
    :sswitch_data_2e
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6044
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6093
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6002
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6108
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6058
    const/4 v0, 0x0

    .line 6060
    .local v0, "result":Z
    sparse-switch p1, :sswitch_data_2e

    :cond_4
    :goto_4
    move v1, v0

    .line 6079
    :goto_5
    return v1

    .line 6063
    :sswitch_6
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 6064
    const/4 v1, 0x1

    goto :goto_5

    .line 6066
    :cond_10
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6067
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6069
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_4

    .line 6071
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6073
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_4

    .line 6060
    :sswitch_data_2e
    .sparse-switch
        0x17 -> :sswitch_6
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 11320
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 12799
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 12801
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 13659
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4028
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 4029
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4033
    :goto_9
    return-void

    .line 4031
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4042
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 9973
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9974
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 9975
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9981
    :cond_5c
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 9915
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9916
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v2, 0x1

    .line 6831
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6832
    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    .line 6835
    :cond_10
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6837
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6838
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_18

    .line 6839
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 6841
    :cond_18
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 13060
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 6876
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    .prologue
    .line 5434
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 5435
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5436
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x200000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6438
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 6440
    .local v3, "viewFlags":I
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_2e

    .line 6441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_24

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_24

    .line 6442
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, -0x4001

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6443
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6447
    :cond_24
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_2c

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2d

    :cond_2c
    move v6, v7

    .line 6566
    :cond_2d
    :goto_2d
    return v6

    .line 6451
    :cond_2e
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v8, :cond_3c

    .line 6452
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v8, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_3c

    move v6, v7

    .line 6453
    goto :goto_2d

    .line 6457
    :cond_3c
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_44

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2d

    .line 6459
    :cond_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_13e

    :cond_4b
    :goto_4b
    move v6, v7

    .line 6563
    goto :goto_2d

    .line 6461
    :pswitch_4d
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_b9

    move v2, v7

    .line 6462
    .local v2, "prepressed":Z
    :goto_55
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_5d

    if-eqz v2, :cond_4b

    .line 6465
    :cond_5d
    const/4 v0, 0x0

    .line 6466
    .local v0, "focusTaken":Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_74

    .line 6467
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 6470
    :cond_74
    if-eqz v2, :cond_7f

    .line 6475
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6476
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6479
    :cond_7f
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_9e

    .line 6481
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6484
    if-nez v0, :cond_9e

    .line 6488
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_93

    .line 6489
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 6491
    :cond_93
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_9e

    .line 6492
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 6497
    :cond_9e
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_a9

    .line 6498
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 6501
    :cond_a9
    if-eqz v2, :cond_bb

    .line 6502
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6508
    :cond_b5
    :goto_b5
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_4b

    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :cond_b9
    move v2, v6

    .line 6461
    goto :goto_55

    .line 6504
    .restart local v0    # "focusTaken":Z
    .restart local v2    # "prepressed":Z
    :cond_bb
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b5

    .line 6506
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_b5

    .line 6513
    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :pswitch_c9
    iput-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 6515
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 6520
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    .line 6524
    .local v1, "isInScrollingContainer":Z
    if-eqz v1, :cond_f5

    .line 6525
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x2000000

    or-int/2addr v6, v8

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6526
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_e9

    .line 6527
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 6529
    :cond_e9
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 6532
    :cond_f5
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6533
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6534
    invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V

    goto/16 :goto_4b

    .line 6539
    .end local v1    # "isInScrollingContainer":Z
    :pswitch_103
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6540
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6541
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_4b

    .line 6545
    :pswitch_111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 6546
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 6549
    .local v5, "y":I
    int-to-float v6, v4

    int-to-float v8, v5

    iget v9, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v9, v9

    invoke-direct {p0, v6, v8, v9}, Landroid/view/View;->pointInView(FFF)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 6551
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 6552
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_4b

    .line 6554
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6557
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6558
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_4b

    .line 6459
    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_4d
        :pswitch_111
        :pswitch_103
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6230
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 5796
    if-nez p2, :cond_9

    .line 5797
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_a

    .line 5798
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 5803
    :cond_9
    :goto_9
    return-void

    .line 5800
    :cond_a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 5749
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5750
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_28

    .line 5751
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5752
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5754
    :cond_10
    if-eqz v0, :cond_1b

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 5755
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 5757
    :cond_1b
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 5758
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 5759
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 5763
    :cond_24
    :goto_24
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5764
    return-void

    .line 5760
    :cond_28
    if-eqz v0, :cond_24

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    .line 5761
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_24
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 5853
    if-nez p1, :cond_5

    .line 5854
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 5856
    :cond_5
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "clear"    # Z
    .param p3, "clearMask"    # I

    .prologue
    .line 10331
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10335
    if-eqz p2, :cond_65

    .line 10336
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10338
    :cond_65
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_90

    move-object v3, p0

    .line 10339
    check-cast v3, Landroid/view/ViewGroup;

    .line 10340
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 10341
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_71
    if-ge v2, v1, :cond_90

    .line 10342
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10343
    .local v0, "child":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 10341
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 10346
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_90
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 26
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 13598
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mOverScrollMode:I

    .line 13599
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_55

    const/4 v2, 0x1

    .line 13601
    .local v2, "canScrollHorizontal":Z
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_57

    const/4 v3, 0x1

    .line 13603
    .local v3, "canScrollVertical":Z
    :goto_1a
    if-eqz v10, :cond_21

    const/4 v14, 0x1

    if-ne v10, v14, :cond_59

    if-eqz v2, :cond_59

    :cond_21
    const/4 v9, 0x1

    .line 13605
    .local v9, "overScrollHorizontal":Z
    :goto_22
    if-eqz v10, :cond_29

    const/4 v14, 0x1

    if-ne v10, v14, :cond_5b

    if-eqz v3, :cond_5b

    :cond_29
    const/4 v11, 0x1

    .line 13608
    .local v11, "overScrollVertical":Z
    :goto_2a
    add-int v7, p3, p1

    .line 13609
    .local v7, "newScrollX":I
    if-nez v9, :cond_30

    .line 13610
    const/16 p7, 0x0

    .line 13613
    :cond_30
    add-int v8, p4, p2

    .line 13614
    .local v8, "newScrollY":I
    if-nez v11, :cond_36

    .line 13615
    const/16 p8, 0x0

    .line 13619
    :cond_36
    move/from16 v0, p7

    neg-int v6, v0

    .line 13620
    .local v6, "left":I
    add-int v12, p7, p5

    .line 13621
    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .line 13622
    .local v13, "top":I
    add-int v1, p8, p6

    .line 13624
    .local v1, "bottom":I
    const/4 v4, 0x0

    .line 13625
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_5d

    .line 13626
    move v7, v12

    .line 13627
    const/4 v4, 0x1

    .line 13633
    :cond_45
    :goto_45
    const/4 v5, 0x0

    .line 13634
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_62

    .line 13635
    move v8, v1

    .line 13636
    const/4 v5, 0x1

    .line 13642
    :cond_4a
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 13644
    if-nez v4, :cond_53

    if-eqz v5, :cond_67

    :cond_53
    const/4 v14, 0x1

    :goto_54
    return v14

    .line 13599
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_55
    const/4 v2, 0x0

    goto :goto_f

    .line 13601
    .restart local v2    # "canScrollHorizontal":Z
    :cond_57
    const/4 v3, 0x0

    goto :goto_1a

    .line 13603
    .restart local v3    # "canScrollVertical":Z
    :cond_59
    const/4 v9, 0x0

    goto :goto_22

    .line 13605
    .restart local v9    # "overScrollHorizontal":Z
    :cond_5b
    const/4 v11, 0x0

    goto :goto_2a

    .line 13628
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_5d
    if-ge v7, v6, :cond_45

    .line 13629
    move v7, v6

    .line 13630
    const/4 v4, 0x1

    goto :goto_45

    .line 13637
    .restart local v5    # "clampedY":Z
    :cond_62
    if-ge v8, v13, :cond_4a

    .line 13638
    move v8, v13

    .line 13639
    const/4 v5, 0x1

    goto :goto_4a

    .line 13644
    :cond_67
    const/4 v14, 0x0

    goto :goto_54
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    .line 3568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3569
    const/4 v0, 0x1

    .line 3572
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public performClick()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3506
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3508
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3509
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_16

    iget-object v3, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_16

    .line 3510
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 3511
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3515
    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method performCollectViewAttributes(I)V
    .registers 7
    .param p1, "visibility"    # I

    .prologue
    const/high16 v2, 0x4000000

    const/4 v4, 0x1

    .line 5940
    and-int/lit8 v1, p1, 0xc

    if-nez v1, :cond_2b

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2b

    .line 5941
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 5942
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5944
    :cond_14
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v3, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 5945
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5946
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_2b

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 5947
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 5950
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_2b
    return-void
.end method

.method public performHapticFeedback(I)Z
    .registers 3
    .param p1, "feedbackConstant"    # I

    .prologue
    .line 13134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .registers 6
    .param p1, "feedbackConstant"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 13147
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_6

    .line 13155
    :cond_5
    :goto_5
    return v0

    .line 13151
    :cond_6
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13155
    :cond_10
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_5
.end method

.method public performLongClick()Z
    .registers 4

    .prologue
    .line 3542
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3544
    const/4 v0, 0x0

    .line 3545
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3546
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_13

    .line 3547
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 3549
    :cond_13
    if-nez v0, :cond_19

    .line 3550
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 3552
    :cond_19
    if-eqz v0, :cond_1f

    .line 3553
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3555
    :cond_1f
    return v0
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "soundConstant"    # I

    .prologue
    .line 13112
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 13116
    :cond_10
    :goto_10
    return-void

    .line 13115
    :cond_11
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_10
.end method

.method final pointInView(FF)Z
    .registers 6
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 8041
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1f

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 5
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 8729
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8730
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 8731
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8738
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .end local v1    # "handler":Landroid/os/Handler;
    :goto_a
    return v2

    .line 8734
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 8735
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 7
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 8762
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8763
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 8764
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8771
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .end local v1    # "handler":Landroid/os/Handler;
    :goto_a
    return v2

    .line 8767
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 8768
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public postInvalidate()V
    .registers 3

    .prologue
    .line 8812
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 8813
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 8831
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 8832
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .registers 6
    .param p1, "delayMilliseconds"    # J

    .prologue
    .line 8847
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8848
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_12

    .line 8849
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 8850
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 8851
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8852
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8854
    .end local v1    # "msg":Landroid/os/Message;
    :cond_12
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 11
    .param p1, "delayMilliseconds"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 8875
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8876
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_20

    .line 8877
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 8878
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 8879
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 8880
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 8881
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 8882
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 8884
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 8885
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 8886
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8887
    iget-object v3, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8889
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_20
    return-void
.end method

.method protected recomputePadding()V
    .registers 5

    .prologue
    .line 9108
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 9109
    return-void
.end method

.method public refreshDrawableState()V
    .registers 3

    .prologue
    .line 11540
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11541
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 11543
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11544
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 11545
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 11547
    :cond_10
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 8789
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8790
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 8791
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 8798
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8799
    .end local v1    # "handler":Landroid/os/Handler;
    :goto_a
    return v3

    .line 8794
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 3427
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3428
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3432
    :cond_a
    :goto_a
    return-void

    .line 3431
    :cond_b
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 3393
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 3394
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3398
    :cond_a
    :goto_a
    return-void

    .line 3397
    :cond_b
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public final requestFocus()Z
    .registers 2

    .prologue
    .line 5301
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 5323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5357
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_10

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_11

    .line 5374
    :cond_10
    :goto_10
    return v0

    .line 5363
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_10

    .line 5369
    :cond_1c
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_10

    .line 5373
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    .line 5374
    goto :goto_10
.end method

.method public final requestFocusFromTouch()Z
    .registers 3

    .prologue
    .line 5395
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5396
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5397
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_10

    .line 5398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 5401
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_10
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .registers 3

    .prologue
    .line 12679
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12680
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12682
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2b

    .line 12683
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_1e

    .line 12684
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->resolveWithDirection(I)V

    .line 12686
    :cond_1e
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 12687
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 12690
    :cond_2b
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 3697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 8
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    .line 3716
    move-object v0, p0

    .line 3717
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3718
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v2, 0x0

    .line 3719
    .local v2, "scrolled":Z
    :goto_4
    if-eqz v1, :cond_27

    .line 3720
    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 3725
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3726
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3728
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_28

    .line 3735
    :cond_27
    return v2

    :cond_28
    move-object v0, v1

    .line 3732
    check-cast v0, Landroid/view/View;

    .line 3733
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_4
.end method

.method protected resetResolvedLayoutDirection()V
    .registers 2

    .prologue
    .line 9682
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 9683
    return-void
.end method

.method protected resetResolvedTextDirection()V
    .registers 2

    .prologue
    .line 13805
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 13806
    return-void
.end method

.method protected resolvePadding()V
    .registers 2

    .prologue
    .line 9619
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 9640
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_46

    .line 9641
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 9645
    :cond_f
    :goto_f
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_4f

    .line 9646
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 9652
    :cond_17
    :goto_17
    iget v0, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v0, :cond_58

    iget v0, p0, Landroid/view/View;->mUserPaddingBottom:I

    :goto_1d
    iput v0, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 9654
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 9655
    return-void

    .line 9624
    :pswitch_23
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_34

    .line 9625
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 9629
    :cond_2b
    :goto_2b
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_3d

    .line 9630
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_17

    .line 9626
    :cond_34
    iget v0, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v0, :cond_2b

    .line 9627
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_2b

    .line 9631
    :cond_3d
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v0, :cond_17

    .line 9632
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_17

    .line 9642
    :cond_46
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v0, :cond_f

    .line 9643
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_f

    .line 9647
    :cond_4f
    iget v0, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v0, :cond_17

    .line 9648
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iput v0, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_17

    .line 9652
    :cond_58
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_1d

    .line 9619
    nop

    :pswitch_data_5c
    .packed-switch 0x40000000
        :pswitch_23
    .end packed-switch
.end method

.method protected resolveTextDirection()V
    .registers 2

    .prologue
    .line 13788
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    if-eqz v0, :cond_9

    .line 13789
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    .line 13797
    :goto_8
    return-void

    .line 13792
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 13793
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResolvedTextDirection()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    goto :goto_8

    .line 13796
    :cond_1e
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/View;->mResolvedTextDirection:I

    goto :goto_8
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9929
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 9930
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9863
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 9864
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 8
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 11441
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 11442
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_14

    .line 11443
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 11448
    :cond_13
    :goto_13
    return-void

    .line 11445
    :cond_14
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, p3, v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_13
.end method

.method public scrollBy(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8262
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 8263
    return-void
.end method

.method public scrollTo(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8241
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_8

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_24

    .line 8242
    :cond_8
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 8243
    .local v0, "oldX":I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 8244
    .local v1, "oldY":I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 8245
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 8246
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8247
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 8248
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_24

    .line 8249
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8252
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_24
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 3894
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 3895
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 3899
    :goto_9
    return-void

    .line 3897
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_9
.end method

.method sendAccessibilityEventInternal(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 3907
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3908
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3910
    :cond_13
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3928
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 3929
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3933
    :goto_9
    return-void

    .line 3931
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3941
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3951
    :goto_6
    return-void

    .line 3944
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3946
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    and-int/lit16 v0, v0, 0x21bf

    if-eqz v0, :cond_15

    .line 3947
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3950
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_6
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 4219
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 4220
    return-void
.end method

.method public setActivated(Z)V
    .registers 7
    .param p1, "activated"    # Z

    .prologue
    const/high16 v0, 0x40000000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 12070
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_21

    move v2, v3

    :goto_a
    if-eq v2, p1, :cond_20

    .line 12071
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40000001

    and-int/2addr v2, v4

    if-eqz p1, :cond_23

    :goto_14
    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12072
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 12073
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12074
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    .line 12076
    :cond_20
    return-void

    :cond_21
    move v2, v1

    .line 12070
    goto :goto_a

    :cond_23
    move v0, v1

    .line 12071
    goto :goto_14
.end method

.method public setAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .prologue
    .line 7546
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7547
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 7548
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7549
    const/high16 v0, 0x437f0000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7550
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7552
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 7557
    :goto_1f
    return-void

    .line 7554
    :cond_20
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_1f
.end method

.method setAlphaNoInvalidation(F)Z
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    .line 7569
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7570
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 7571
    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .line 7572
    .local v0, "subclassHandlesAlpha":Z
    if-eqz v0, :cond_19

    .line 7573
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7577
    :goto_18
    return v0

    .line 7575
    :cond_19
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_18
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 13018
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 13019
    if-eqz p1, :cond_7

    .line 13020
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 13022
    :cond_7
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 11686
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_e

    .line 11687
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 11691
    :goto_d
    return-void

    .line 11689
    :cond_e
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 11725
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_8

    .line 11812
    :goto_7
    return-void

    .line 11729
    :cond_8
    const/4 v1, 0x0

    .line 11731
    .local v1, "requestLayout":Z
    iput v4, p0, Landroid/view/View;->mBackgroundResource:I

    .line 11737
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    .line 11738
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11739
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11742
    :cond_19
    if-eqz p1, :cond_b0

    .line 11743
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11744
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_2f

    .line 11745
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11746
    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11748
    :cond_2f
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 11749
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getResolvedLayoutDirectionSelf()I

    move-result v2

    packed-switch v2, :pswitch_data_c6

    .line 11755
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 11761
    :cond_47
    :goto_47
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_63

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_63

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_64

    .line 11763
    :cond_63
    const/4 v1, 0x1

    .line 11766
    :cond_64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11767
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 11768
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11770
    :cond_74
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_ae

    move v2, v3

    :goto_7b
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11771
    iput-object p1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 11773
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_93

    .line 11774
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11775
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11776
    const/4 v1, 0x1

    .line 11804
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_93
    :goto_93
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11806
    if-eqz v1, :cond_9b

    .line 11807
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11810
    :cond_9b
    iput-boolean v3, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 11811
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_7

    .line 11751
    .restart local v0    # "padding":Landroid/graphics/Rect;
    :pswitch_a2
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_47

    :cond_ae
    move v2, v4

    .line 11770
    goto :goto_7b

    .line 11780
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_b0
    iput-object v5, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 11782
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_c4

    .line 11788
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11789
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11801
    :cond_c4
    const/4 v1, 0x1

    goto :goto_93

    .line 11749
    :pswitch_data_c6
    .packed-switch 0x40000000
        :pswitch_a2
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 11701
    if-eqz p1, :cond_7

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_7

    .line 11712
    :goto_6
    return-void

    .line 11705
    :cond_7
    const/4 v0, 0x0

    .line 11706
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_10

    .line 11707
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11709
    :cond_10
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11711
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_6
.end method

.method public final setBottom(I)V
    .registers 10
    .param p1, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7667
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v6, :cond_5f

    .line 7668
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7669
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_15

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_60

    :cond_15
    move v0, v5

    .line 7671
    .local v0, "matrixIsIdentity":Z
    :goto_16
    if-eqz v0, :cond_64

    .line 7672
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_2e

    .line 7674
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v6, :cond_62

    .line 7675
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 7679
    .local v1, "maxBottom":I
    :goto_22
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 7686
    .end local v1    # "maxBottom":I
    :cond_2e
    :goto_2e
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 7687
    .local v3, "width":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v4, v6

    .line 7689
    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 7691
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v3, v4, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7693
    if-nez v0, :cond_5a

    .line 7694
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-nez v4, :cond_51

    .line 7696
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7698
    :cond_51
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7699
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7701
    :cond_5a
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7702
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7704
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_5f
    return-void

    :cond_60
    move v0, v4

    .line 7669
    goto :goto_16

    .line 7677
    .restart local v0    # "matrixIsIdentity":Z
    :cond_62
    move v1, p1

    .restart local v1    # "maxBottom":I
    goto :goto_22

    .line 7683
    .end local v1    # "maxBottom":I
    :cond_64
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2e
.end method

.method public setCameraDistance(F)V
    .registers 8
    .param p1, "distance"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 7206
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7207
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7209
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7210
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 7211
    .local v0, "dpi":F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7212
    .local v1, "info":Landroid/view/View$TransformationInfo;
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 7213
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 7214
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 7217
    :cond_2c
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v4, v4, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 7218
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7220
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7221
    return-void
.end method

.method public setClickable(Z)V
    .registers 4
    .param p1, "clickable"    # Z

    .prologue
    const/16 v1, 0x4000

    .line 4899
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4900
    return-void

    .line 4899
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4276
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 4277
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 10526
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_e

    .line 10527
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 10528
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10530
    :cond_e
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 10306
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    .line 10307
    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 10308
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .registers 3
    .param p1, "quality"    # I

    .prologue
    .line 4383
    const/high16 v0, 0x180000

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 4384
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 10014
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 10015
    return-void

    .line 10014
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 4640
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_9

    .line 4653
    :goto_8
    return-void

    .line 4642
    :cond_9
    if-eqz p1, :cond_17

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4648
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_8

    :cond_17
    move v0, v1

    .line 4642
    goto :goto_c
.end method

.method public setFadingEdgeLength(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 3182
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3183
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3184
    return-void
.end method

.method public setFastAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 8003
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8004
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 8005
    return-void
.end method

.method public setFastRotationY(F)V
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 8011
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8012
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8013
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 8014
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8015
    return-void
.end method

.method public setFastScaleX(F)V
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 7983
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7984
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7985
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 7986
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7987
    return-void
.end method

.method public setFastScaleY(F)V
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 7993
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7994
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7995
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 7996
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7997
    return-void
.end method

.method public setFastTranslationX(F)V
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 7943
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7944
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7945
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 7946
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7947
    return-void
.end method

.method public setFastTranslationY(F)V
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 7953
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7954
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7955
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 7956
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7957
    return-void
.end method

.method public setFastX(F)V
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 7963
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7964
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7965
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 7966
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7967
    return-void
.end method

.method public setFastY(F)V
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 7973
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7974
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7975
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 7976
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7977
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x400

    .line 5031
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5033
    return-void

    :cond_9
    move v0, v1

    .line 5031
    goto :goto_5
.end method

.method public setFitsSystemWindows(Z)V
    .registers 4
    .param p1, "fitSystemWindows"    # Z

    .prologue
    const/4 v1, 0x2

    .line 4577
    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4578
    return-void

    .line 4577
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method setFlags(II)V
    .registers 11
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/4 v7, 0x0

    const v6, -0x8001

    const/4 v5, 0x1

    .line 6669
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 6670
    .local v1, "old":I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 6672
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 6673
    .local v0, "changed":I
    if-nez v0, :cond_18

    .line 6807
    :cond_17
    :goto_17
    return-void

    .line 6676
    :cond_18
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6679
    .local v2, "privateFlags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2d

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2d

    .line 6681
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_141

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_141

    .line 6684
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6695
    :cond_2d
    :goto_2d
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_56

    .line 6696
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_56

    .line 6702
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6703
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6705
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 6711
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_56

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_56

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_56

    .line 6712
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 6718
    :cond_56
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_8f

    .line 6719
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 6720
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6722
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_87

    .line 6723
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6724
    :cond_71
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6725
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_81

    .line 6727
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6731
    :cond_81
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6733
    :cond_87
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_8f

    .line 6734
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 6739
    :cond_8f
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_ba

    .line 6740
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 6745
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6747
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b2

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 6749
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_b2

    .line 6750
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6753
    :cond_b2
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_ba

    .line 6754
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 6758
    :cond_ba
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_d9

    .line 6759
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_154

    .line 6760
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    and-int/lit8 v4, p1, 0xc

    invoke-virtual {v3, p0, v4}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;I)V

    .line 6761
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6765
    :cond_d4
    :goto_d4
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 6768
    :cond_d9
    const/high16 v3, 0x20000

    and-int/2addr v3, v0

    if-eqz v3, :cond_e1

    .line 6769
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6772
    :cond_e1
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_f2

    .line 6773
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6774
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6775
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6778
    :cond_f2
    const/high16 v3, 0x180000

    and-int/2addr v3, v0

    if-eqz v3, :cond_ff

    .line 6779
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6780
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6783
    :cond_ff
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_11f

    .line 6784
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_167

    .line 6785
    iget-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_160

    .line 6786
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6787
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6794
    :goto_119
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6795
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6798
    :cond_11f
    const/high16 v3, 0x4000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_137

    .line 6799
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_137

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_137

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v3, :cond_137

    .line 6800
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 6804
    :cond_137
    const/high16 v3, -0x40000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_17

    .line 6805
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_17

    .line 6685
    :cond_141
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2d

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2d

    .line 6691
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_2d

    .line 6762
    :cond_154
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_d4

    .line 6763
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_d4

    .line 6789
    :cond_160
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_119

    .line 6792
    :cond_167
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_119
.end method

.method public setFocusable(Z)V
    .registers 5
    .param p1, "focusable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4667
    if-nez p1, :cond_9

    .line 4668
    const/high16 v2, 0x40000

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 4670
    :cond_9
    if-eqz p1, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4671
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5
    .param p1, "focusableInTouchMode"    # Z

    .prologue
    const/high16 v1, 0x40000

    const/4 v2, 0x1

    .line 4689
    if-eqz p1, :cond_f

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4690
    if-eqz p1, :cond_e

    .line 4691
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setFlags(II)V

    .line 4693
    :cond_e
    return-void

    .line 4689
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setFrame(IIII)Z
    .registers 15
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v7, 0x1

    .line 11336
    const/4 v0, 0x0

    .line 11343
    .local v0, "changed":Z
    iget v8, p0, Landroid/view/View;->mLeft:I

    if-ne v8, p1, :cond_12

    iget v8, p0, Landroid/view/View;->mRight:I

    if-ne v8, p3, :cond_12

    iget v8, p0, Landroid/view/View;->mTop:I

    if-ne v8, p2, :cond_12

    iget v8, p0, Landroid/view/View;->mBottom:I

    if-eq v8, p4, :cond_6a

    .line 11344
    :cond_12
    const/4 v0, 0x1

    .line 11347
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v8, 0x20

    .line 11349
    .local v1, "drawn":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v8, v9

    .line 11350
    .local v5, "oldWidth":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v4, v8, v9

    .line 11351
    .local v4, "oldHeight":I
    sub-int v3, p3, p1

    .line 11352
    .local v3, "newWidth":I
    sub-int v2, p4, p2

    .line 11353
    .local v2, "newHeight":I
    if-ne v3, v5, :cond_2b

    if-eq v2, v4, :cond_6b

    :cond_2b
    move v6, v7

    .line 11356
    .local v6, "sizeChanged":Z
    :goto_2c
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 11358
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 11359
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 11360
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 11361
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 11363
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11366
    if-eqz v6, :cond_51

    .line 11367
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x20000000

    and-int/2addr v8, v9

    if-nez v8, :cond_4e

    .line 11369
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_4e

    .line 11370
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v7, v8, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 11373
    :cond_4e
    invoke-virtual {p0, v3, v2, v5, v4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 11376
    :cond_51
    iget v8, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_63

    .line 11382
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11383
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 11386
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 11390
    :cond_63
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v8, v1

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11392
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 11394
    .end local v1    # "drawn":I
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v4    # "oldHeight":I
    .end local v5    # "oldWidth":I
    .end local v6    # "sizeChanged":Z
    :cond_6a
    return v0

    .line 11353
    .restart local v1    # "drawn":I
    .restart local v2    # "newHeight":I
    .restart local v3    # "newWidth":I
    .restart local v4    # "oldHeight":I
    .restart local v5    # "oldWidth":I
    :cond_6b
    const/4 v6, 0x0

    goto :goto_2c
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 4
    .param p1, "hapticFeedbackEnabled"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 4737
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4738
    return-void

    .line 4737
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .registers 3
    .param p1, "horizontalFadingEdgeEnabled"    # Z

    .prologue
    .line 8942
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 8943
    if-eqz p1, :cond_b

    .line 8944
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 8947
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8949
    :cond_11
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .registers 3
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 9067
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 9068
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9069
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 9070
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9072
    :cond_12
    return-void
.end method

.method public setHovered(Z)V
    .registers 4
    .param p1, "hovered"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 6401
    if-eqz p1, :cond_16

    .line 6402
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 6403
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6404
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    .line 6414
    :cond_15
    :goto_15
    return-void

    .line 6408
    :cond_16
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 6409
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6410
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_15
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 12369
    iput p1, p0, Landroid/view/View;->mID:I

    .line 12370
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .registers 3
    .param p1, "isRoot"    # Z

    .prologue
    .line 12379
    if-eqz p1, :cond_9

    .line 12380
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12384
    :goto_8
    return-void

    .line 12382
    :cond_9
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/high16 v1, 0x4000000

    .line 4411
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4412
    return-void

    .line 4411
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 7
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10070
    if-ltz p1, :cond_7

    const/4 v3, 0x2

    if-le p1, v3, :cond_f

    .line 10071
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10075
    :cond_f
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-ne p1, v3, :cond_29

    .line 10076
    if-eqz p1, :cond_28

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_28

    .line 10077
    if-nez p2, :cond_20

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_20
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 10078
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10079
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 10103
    :cond_28
    :goto_28
    return-void

    .line 10085
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_29
    iget v3, p0, Landroid/view/View;->mLayerType:I

    packed-switch v3, :pswitch_data_5c

    .line 10096
    :goto_2e
    iput p1, p0, Landroid/view/View;->mLayerType:I

    .line 10097
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-nez v3, :cond_4c

    move v0, v2

    .line 10098
    .local v0, "layerDisabled":Z
    :goto_35
    if-eqz v0, :cond_4e

    move-object p2, v1

    .end local p2    # "paint":Landroid/graphics/Paint;
    :cond_38
    :goto_38
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 10099
    if-eqz v0, :cond_56

    :goto_3c
    iput-object v1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 10101
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10102
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_28

    .line 10087
    .end local v0    # "layerDisabled":Z
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :pswitch_45
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 10090
    :pswitch_48
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_2e

    .line 10097
    :cond_4c
    const/4 v0, 0x0

    goto :goto_35

    .line 10098
    .restart local v0    # "layerDisabled":Z
    :cond_4e
    if-nez p2, :cond_38

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_38

    .line 10099
    :cond_56
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3c

    .line 10085
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .registers 3
    .param p1, "layoutDirection"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4789
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 4790
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 4792
    const/high16 v0, -0x40000000

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 4794
    :cond_e
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8226
    if-nez p1, :cond_a

    .line 8227
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8229
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 8230
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8231
    return-void
.end method

.method public final setLeft(I)V
    .registers 12
    .param p1, "left"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 7724
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v7, :cond_61

    .line 7725
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7726
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_15

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_62

    :cond_15
    move v1, v6

    .line 7728
    .local v1, "matrixIsIdentity":Z
    :goto_16
    if-eqz v1, :cond_68

    .line 7729
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_30

    .line 7732
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v7, :cond_64

    .line 7733
    move v2, p1

    .line 7734
    .local v2, "minLeft":I
    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, p1, v7

    .line 7739
    .local v4, "xLoc":I
    :goto_25
    iget v7, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v7, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v4, v5, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 7746
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_30
    :goto_30
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 7747
    .local v3, "oldWidth":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v7

    .line 7749
    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 7751
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v5, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7753
    if-nez v1, :cond_5c

    .line 7754
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    if-nez v5, :cond_53

    .line 7756
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7758
    :cond_53
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7759
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 7761
    :cond_5c
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7762
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7764
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_61
    return-void

    :cond_62
    move v1, v5

    .line 7726
    goto :goto_16

    .line 7736
    .restart local v1    # "matrixIsIdentity":Z
    :cond_64
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 7737
    .restart local v2    # "minLeft":I
    const/4 v4, 0x0

    .restart local v4    # "xLoc":I
    goto :goto_25

    .line 7743
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_68
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_30
.end method

.method public setLongClickable(Z)V
    .registers 4
    .param p1, "longClickable"    # Z

    .prologue
    const/high16 v1, 0x200000

    .line 4925
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4926
    return-void

    .line 4925
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final setMeasuredDimension(II)V
    .registers 4
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 12816
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 12817
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 12819
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12820
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2
    .param p1, "minHeight"    # I

    .prologue
    .line 12959
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 12960
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2
    .param p1, "minWidth"    # I

    .prologue
    .line 12970
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 12971
    return-void
.end method

.method public setNextFocusDownId(I)V
    .registers 2
    .param p1, "nextFocusDownId"    # I

    .prologue
    .line 4495
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 4496
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .registers 2
    .param p1, "nextFocusForwardId"    # I

    .prologue
    .line 4516
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 4517
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .registers 2
    .param p1, "nextFocusLeftId"    # I

    .prologue
    .line 4432
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 4433
    return-void
.end method

.method public setNextFocusRightId(I)V
    .registers 2
    .param p1, "nextFocusRightId"    # I

    .prologue
    .line 4453
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 4454
    return-void
.end method

.method public setNextFocusUpId(I)V
    .registers 2
    .param p1, "nextFocusUpId"    # I

    .prologue
    .line 4474
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 4475
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 3453
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3456
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3457
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 3491
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3492
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3494
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 3495
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 3650
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    .line 3651
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 3368
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3369
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnGenericMotionListener;

    .prologue
    .line 3631
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    .line 3632
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 3639
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 3640
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 3615
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    .line 3616
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 3477
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3478
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3480
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3481
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .prologue
    .line 13187
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$702(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 13188
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_1a

    .line 13189
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 13191
    :cond_1a
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 3623
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 3624
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "overScrollMode"    # I

    .prologue
    .line 13685
    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 13688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13690
    :cond_21
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 13691
    return-void
.end method

.method public setPadding(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v6, 0x1000000

    const/4 v3, 0x0

    .line 11840
    const/4 v0, 0x0

    .line 11842
    .local v0, "changed":Z
    iput-boolean v3, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 11844
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 11845
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 11846
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 11848
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 11851
    .local v2, "viewFlags":I
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_29

    .line 11852
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_20

    .line 11853
    and-int v4, v2, v6

    if-nez v4, :cond_4b

    move v1, v3

    .line 11855
    .local v1, "offset":I
    :goto_1b
    iget v4, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_66

    .line 11871
    .end local v1    # "offset":I
    :cond_20
    :goto_20
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_29

    .line 11872
    and-int v4, v2, v6

    if-nez v4, :cond_60

    :goto_28
    add-int/2addr p4, v3

    .line 11877
    :cond_29
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_30

    .line 11878
    const/4 v0, 0x1

    .line 11879
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 11881
    :cond_30
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_37

    .line 11882
    const/4 v0, 0x1

    .line 11883
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 11885
    :cond_37
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_3e

    .line 11886
    const/4 v0, 0x1

    .line 11887
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 11889
    :cond_3e
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_45

    .line 11890
    const/4 v0, 0x1

    .line 11891
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 11894
    :cond_45
    if-eqz v0, :cond_4a

    .line 11895
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11897
    :cond_4a
    return-void

    .line 11853
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_1b

    .line 11857
    .restart local v1    # "offset":I
    :pswitch_50
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v4

    const/high16 v5, 0x40000000

    if-ne v4, v5, :cond_5a

    .line 11858
    add-int/2addr p1, v1

    goto :goto_20

    .line 11860
    :cond_5a
    add-int/2addr p3, v1

    .line 11862
    goto :goto_20

    .line 11864
    :pswitch_5c
    add-int/2addr p3, v1

    .line 11865
    goto :goto_20

    .line 11867
    :pswitch_5e
    add-int/2addr p1, v1

    goto :goto_20

    .line 11872
    .end local v1    # "offset":I
    :cond_60
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_28

    .line 11855
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_50
        :pswitch_5e
        :pswitch_5c
    .end packed-switch
.end method

.method public setPaddingRelative(IIII)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 11919
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 11921
    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 11922
    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 11924
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 11930
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 11932
    :goto_11
    return-void

    .line 11926
    :pswitch_12
    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_11

    .line 11924
    :pswitch_data_16
    .packed-switch 0x40000000
        :pswitch_12
    .end packed-switch
.end method

.method public setPivotX(F)V
    .registers 6
    .param p1, "pivotX"    # F

    .prologue
    const/4 v3, 0x0

    .line 7462
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7463
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7464
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7465
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_27

    .line 7466
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7468
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7469
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 7470
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7471
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7472
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7474
    :cond_27
    return-void
.end method

.method public setPivotY(F)V
    .registers 6
    .param p1, "pivotY"    # F

    .prologue
    const/4 v3, 0x0

    .line 7505
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7506
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7507
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7508
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_27

    .line 7509
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7511
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7512
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 7513
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7514
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7515
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 7517
    :cond_27
    return-void
.end method

.method public setPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .prologue
    .line 4938
    if-eqz p1, :cond_f

    .line 4939
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4943
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4944
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 4945
    return-void

    .line 4941
    :cond_f
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public final setRight(I)V
    .registers 11
    .param p1, "right"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7784
    iget v6, p0, Landroid/view/View;->mRight:I

    if-eq p1, v6, :cond_5f

    .line 7785
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7786
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_15

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_60

    :cond_15
    move v1, v5

    .line 7788
    .local v1, "matrixIsIdentity":Z
    :goto_16
    if-eqz v1, :cond_64

    .line 7789
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_2e

    .line 7791
    iget v6, p0, Landroid/view/View;->mRight:I

    if-ge p1, v6, :cond_62

    .line 7792
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 7796
    .local v2, "maxRight":I
    :goto_22
    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 7803
    .end local v2    # "maxRight":I
    :cond_2e
    :goto_2e
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 7804
    .local v3, "oldWidth":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v6

    .line 7806
    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 7808
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7810
    if-nez v1, :cond_5a

    .line 7811
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-nez v4, :cond_51

    .line 7813
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7815
    :cond_51
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7816
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 7818
    :cond_5a
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7819
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7821
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_5f
    return-void

    :cond_60
    move v1, v4

    .line 7786
    goto :goto_16

    .line 7794
    .restart local v1    # "matrixIsIdentity":Z
    :cond_62
    move v2, p1

    .restart local v2    # "maxRight":I
    goto :goto_22

    .line 7800
    .end local v2    # "maxRight":I
    :cond_64
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2e
.end method

.method public setRotation(F)V
    .registers 5
    .param p1, "rotation"    # F

    .prologue
    const/4 v2, 0x0

    .line 7251
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7252
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7253
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    .line 7254
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7256
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7257
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 7258
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7259
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7260
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7262
    :cond_20
    return-void
.end method

.method public setRotationX(F)V
    .registers 5
    .param p1, "rotationX"    # F

    .prologue
    const/4 v2, 0x0

    .line 7343
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7344
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7345
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    .line 7346
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7348
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7349
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 7350
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7351
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7352
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7354
    :cond_20
    return-void
.end method

.method public setRotationY(F)V
    .registers 5
    .param p1, "rotationY"    # F

    .prologue
    const/4 v2, 0x0

    .line 7297
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7298
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7299
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    .line 7300
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7302
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7303
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 7304
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7305
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7306
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7308
    :cond_20
    return-void
.end method

.method public setSaveEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x10000

    .line 5002
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5003
    return-void

    :cond_9
    move v0, v1

    .line 5002
    goto :goto_5
.end method

.method public setSaveFromParentEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x20000000

    .line 5063
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5064
    return-void

    :cond_9
    move v0, v1

    .line 5063
    goto :goto_5
.end method

.method public setScaleX(F)V
    .registers 5
    .param p1, "scaleX"    # F

    .prologue
    const/4 v2, 0x0

    .line 7381
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7382
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7383
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    .line 7384
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7386
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7387
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 7388
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7389
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7390
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7392
    :cond_20
    return-void
.end method

.method public setScaleY(F)V
    .registers 5
    .param p1, "scaleY"    # F

    .prologue
    const/4 v2, 0x0

    .line 7419
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7420
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7421
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    .line 7422
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7424
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7425
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 7426
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7427
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7428
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7430
    :cond_20
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 5
    .param p1, "style"    # I

    .prologue
    const/high16 v2, 0x3000000

    .line 9156
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_18

    .line 9157
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9158
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 9159
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9161
    :cond_18
    return-void
.end method

.method public setScrollContainer(Z)V
    .registers 4
    .param p1, "isScrollContainer"    # Z

    .prologue
    const/high16 v1, 0x100000

    .line 4339
    if-eqz p1, :cond_21

    .line 4340
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 4341
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4342
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4344
    :cond_19
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4351
    :goto_20
    return-void

    .line 4346
    :cond_21
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 4347
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4349
    :cond_2d
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_20
.end method

.method public setScrollX(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 6904
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 6905
    return-void
.end method

.method public setScrollY(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 6914
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 6915
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .registers 4
    .param p1, "fadeScrollbars"    # Z

    .prologue
    .line 9118
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 9119
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 9120
    .local v0, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 9121
    if-eqz p1, :cond_d

    .line 9122
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9126
    :goto_c
    return-void

    .line 9124
    :cond_d
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_c
.end method

.method public setSelected(Z)V
    .registers 5
    .param p1, "selected"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 12027
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_24

    move v1, v2

    :goto_9
    if-eq v1, p1, :cond_23

    .line 12028
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, -0x5

    if-eqz p1, :cond_12

    const/4 v0, 0x4

    :cond_12
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12029
    if-nez p1, :cond_1a

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 12030
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 12031
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12032
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 12034
    :cond_23
    return-void

    :cond_24
    move v1, v0

    .line 12027
    goto :goto_9
.end method

.method public setSoundEffectsEnabled(Z)V
    .registers 4
    .param p1, "soundEffectsEnabled"    # Z

    .prologue
    const/high16 v1, 0x8000000

    .line 4708
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4709
    return-void

    .line 4708
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setSystemUiVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 13165
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_19

    .line 13166
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 13167
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_19

    .line 13168
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 13171
    :cond_19
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 12477
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    .line 12478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12482
    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 12483
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 12435
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 12436
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 12492
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 12493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12497
    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 12498
    return-void
.end method

.method public setTextDirection(I)V
    .registers 3
    .param p1, "textDirection"    # I

    .prologue
    .line 13756
    iget v0, p0, Landroid/view/View;->mTextDirection:I

    if-eq p1, v0, :cond_c

    .line 13757
    iput p1, p0, Landroid/view/View;->mTextDirection:I

    .line 13758
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 13759
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13761
    :cond_c
    return-void
.end method

.method public final setTop(I)V
    .registers 11
    .param p1, "top"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 7598
    iget v7, p0, Landroid/view/View;->mTop:I

    if-eq p1, v7, :cond_61

    .line 7599
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 7600
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_15

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_62

    :cond_15
    move v0, v6

    .line 7602
    .local v0, "matrixIsIdentity":Z
    :goto_16
    if-eqz v0, :cond_68

    .line 7603
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_30

    .line 7606
    iget v7, p0, Landroid/view/View;->mTop:I

    if-ge p1, v7, :cond_64

    .line 7607
    move v1, p1

    .line 7608
    .local v1, "minTop":I
    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, p1, v7

    .line 7613
    .local v4, "yLoc":I
    :goto_25
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0, v5, v4, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 7620
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_30
    :goto_30
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 7621
    .local v3, "width":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v7

    .line 7623
    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 7625
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v3, v5, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7627
    if-nez v0, :cond_5c

    .line 7628
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    if-nez v5, :cond_53

    .line 7630
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7632
    :cond_53
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7633
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 7635
    :cond_5c
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7636
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 7638
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_61
    return-void

    :cond_62
    move v0, v5

    .line 7600
    goto :goto_16

    .line 7610
    .restart local v0    # "matrixIsIdentity":Z
    :cond_64
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 7611
    .restart local v1    # "minTop":I
    const/4 v4, 0x0

    .restart local v4    # "yLoc":I
    goto :goto_25

    .line 7617
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_68
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_30
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroid/view/TouchDelegate;

    .prologue
    .line 6652
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 6653
    return-void
.end method

.method public setTranslationX(F)V
    .registers 5
    .param p1, "translationX"    # F

    .prologue
    const/4 v2, 0x0

    .line 7890
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7891
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7892
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    .line 7893
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7895
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7896
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 7897
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7898
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7899
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7901
    :cond_20
    return-void
.end method

.method public setTranslationY(F)V
    .registers 5
    .param p1, "translationY"    # F

    .prologue
    const/4 v2, 0x0

    .line 7926
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 7927
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 7928
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    .line 7929
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7931
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7932
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 7933
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7934
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7935
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 7937
    :cond_20
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .registers 3
    .param p1, "verticalFadingEdgeEnabled"    # Z

    .prologue
    .line 8977
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 8978
    if-eqz p1, :cond_b

    .line 8979
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 8982
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8984
    :cond_11
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .registers 3
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 9097
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 9098
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 9099
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 9100
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 9102
    :cond_12
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 3339
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_c

    .line 3340
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 3341
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 3342
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3344
    :cond_c
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4617
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 4618
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4619
    :cond_12
    return-void

    :cond_13
    move v0, v1

    .line 4618
    goto :goto_f
.end method

.method public setWillNotCacheDrawing(Z)V
    .registers 4
    .param p1, "willNotCacheDrawing"    # Z

    .prologue
    const/high16 v1, 0x20000

    .line 4861
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4862
    return-void

    .line 4861
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setWillNotDraw(Z)V
    .registers 4
    .param p1, "willNotDraw"    # Z

    .prologue
    const/16 v1, 0x80

    .line 4838
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4839
    return-void

    .line 4838
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setX(F)V
    .registers 3
    .param p1, "x"    # F

    .prologue
    .line 7842
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 7843
    return-void
.end method

.method public setY(F)V
    .registers 3
    .param p1, "y"    # F

    .prologue
    .line 7864
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 7865
    return-void
.end method

.method public showContextMenu()Z
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3595
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3607
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 12989
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 12990
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 12991
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12992
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 12993
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 28
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 13371
    const/16 v19, 0x0

    .line 13373
    .local v19, "okay":Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 13374
    .local v21, "shadowSize":Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 13375
    .local v22, "shadowTouchPoint":Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 13377
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_35

    .line 13379
    :cond_2d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 13386
    :cond_35
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 13388
    .local v8, "surface":Landroid/view/Surface;
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 13392
    .local v11, "token":Landroid/os/IBinder;
    if-eqz v11, :cond_a6

    .line 13393
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5a} :catch_ae

    move-result-object v17

    .line 13395
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_5c
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13396
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_a7

    .line 13398
    :try_start_6a
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 13401
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 13404
    .local v20, "root":Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 13407
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 13409
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 13416
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 13423
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "root":Landroid/view/ViewRootImpl;
    :cond_a6
    :goto_a6
    return v19

    .line 13398
    .restart local v11    # "token":Landroid/os/IBinder;
    .restart local v17    # "canvas":Landroid/graphics/Canvas;
    :catchall_a7
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_ae} :catch_ae

    .line 13418
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    :catch_ae
    move-exception v18

    .line 13419
    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13420
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_a6
.end method

.method unFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3782
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 3783
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3785
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3786
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3788
    :cond_14
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 11476
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_b

    .line 11477
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11479
    :cond_b
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 11457
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 11458
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_14

    .line 11459
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 11464
    :cond_13
    :goto_13
    return-void

    .line 11461
    :cond_14
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_13
.end method

.method updateLocalSystemUiVisibility(II)V
    .registers 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    .line 13206
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .line 13207
    .local v0, "val":I
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq v0, v1, :cond_10

    .line 13208
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13210
    :cond_10
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 11512
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public willNotCacheDrawing()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x20000

    .line 4871
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willNotDraw()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4848
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
