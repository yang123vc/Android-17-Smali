.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_SELECT:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static final PROPERTY_CHECKABLE:I = 0x1

.field private static final PROPERTY_CHECKED:I = 0x2

.field private static final PROPERTY_CLICKABLE:I = 0x20

.field private static final PROPERTY_ENABLED:I = 0x80

.field private static final PROPERTY_FOCUSABLE:I = 0x4

.field private static final PROPERTY_FOCUSED:I = 0x8

.field private static final PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final PROPERTY_PASSWORD:I = 0x100

.field private static final PROPERTY_SCROLLABLE:I = 0x200

.field private static final PROPERTY_SELECTED:I = 0x10

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field private mAccessibilityViewId:I

.field private mAccessibilityWindowId:I

.field private mActions:I

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildAccessibilityIds:Landroid/util/SparseIntArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mConnectionId:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIsInPool:Z

.field private mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParentAccessibilityViewId:I

.field private mSealed:Z

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolLock:Ljava/lang/Object;

    .line 1136
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 112
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 113
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 126
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 133
    return-void
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private canPerformRequestOverConnection(I)Z
    .registers 4
    .param p1, "accessibilityViewId"    # I

    .prologue
    const/4 v1, -0x1

    .line 1045
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    if-eq v0, v1, :cond_d

    if-eq p1, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1007
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 1008
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 1009
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 1010
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 1011
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 1012
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1013
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1014
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1015
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 1016
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 1017
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 1018
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 1019
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 1020
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 1021
    return-void
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .registers 4
    .param p0, "action"    # I

    .prologue
    .line 1030
    packed-switch p0, :pswitch_data_28

    .line 1040
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :pswitch_1c
    const-string v0, "ACTION_FOCUS"

    .line 1038
    :goto_1e
    return-object v0

    .line 1034
    :pswitch_1f
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_1e

    .line 1036
    :pswitch_22
    const-string v0, "ACTION_SELECT"

    goto :goto_1e

    .line 1038
    :pswitch_25
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_1e

    .line 1030
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_25
    .end packed-switch
.end method

.method private getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .prologue
    .line 738
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 948
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 949
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 950
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 951
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 952
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 953
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 954
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 955
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 956
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 957
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 958
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 959
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 960
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 961
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 962
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_34

    :goto_7
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 976
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 977
    .local v1, "childIds":Landroid/util/SparseIntArray;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 978
    .local v2, "childrenSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v2, :cond_36

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 980
    .local v0, "childId":I
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 970
    .end local v0    # "childId":I
    .end local v1    # "childIds":Landroid/util/SparseIntArray;
    .end local v2    # "childrenSize":I
    .end local v3    # "i":I
    :cond_34
    const/4 v4, 0x0

    goto :goto_7

    .line 983
    .restart local v1    # "childIds":Landroid/util/SparseIntArray;
    .restart local v2    # "childrenSize":I
    .restart local v3    # "i":I
    :cond_36
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 984
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 985
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 986
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 988
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 989
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 990
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 991
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 997
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 998
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 999
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 1000
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 1001
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 848
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 849
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_1d

    .line 850
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 851
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, v1, Landroid/view/accessibility/AccessibilityNodeInfo;->mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

    sput-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 852
    sget v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    .line 853
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 854
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mIsInPool:Z

    .line 855
    monitor-exit v2

    .line 857
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    monitor-exit v2

    goto :goto_1c

    .line 858
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "source"    # Landroid/view/View;

    .prologue
    .line 837
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 838
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 839
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 870
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 871
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 872
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 750
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 751
    if-eqz p2, :cond_b

    .line 752
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 756
    :goto_a
    return-void

    .line 754
    :cond_b
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_a
.end method


# virtual methods
.method public addAction(I)V
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 236
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .line 237
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 204
    .local v0, "childAccessibilityViewId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 205
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method protected enforceNotSealed()V
    .registers 3

    .prologue
    .line 822
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 823
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on an sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_e
    return-void
.end method

.method protected enforceSealed()V
    .registers 3

    .prologue
    .line 808
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 809
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :cond_e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1051
    if-ne p0, p1, :cond_5

    .line 1067
    :cond_4
    :goto_4
    return v1

    .line 1054
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 1055
    goto :goto_4

    .line 1057
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 1058
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 1060
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1061
    .local v0, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    iget v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 1062
    goto :goto_4

    .line 1064
    :cond_20
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1065
    goto :goto_4
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 277
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 281
    :goto_f
    return-object v1

    .line 280
    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 281
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewText(ILjava/lang/String;II)Ljava/util/List;

    move-result-object v1

    goto :goto_f
.end method

.method public getActions()I
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 355
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 357
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 180
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 181
    .local v0, "childAccessibilityViewId":I
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 182
    const/4 v2, 0x0

    .line 185
    :goto_10
    return-object v2

    .line 184
    :cond_11
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 185
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(III)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    goto :goto_10
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 297
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 298
    const/4 v1, 0x0

    .line 301
    :goto_c
    return-object v1

    .line 300
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 301
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(III)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_c
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWindowId()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1072
    const/16 v0, 0x1f

    .line 1073
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1074
    .local v1, "result":I
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    add-int/lit8 v1, v2, 0x1f

    .line 1075
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    add-int v1, v2, v3

    .line 1076
    return v1
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 407
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .prologue
    .line 507
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 557
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .prologue
    .line 432
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 457
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    .prologue
    .line 532
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    .prologue
    .line 582
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .prologue
    .line 607
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .registers 2

    .prologue
    .line 797
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 482
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .registers 6
    .param p1, "action"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 253
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 254
    const/4 v1, 0x0

    .line 257
    :goto_c
    return v1

    .line 256
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 257
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIII)Z

    move-result v1

    goto :goto_c
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mIsInPool:Z

    if-eqz v0, :cond_c

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Info already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_c
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->clear()V

    .line 887
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_12
    sget v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    const/16 v2, 0x32

    if-gt v0, v2, :cond_27

    .line 889
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mNext:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 890
    sput-object p0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mIsInPool:Z

    .line 892
    sget v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPoolSize:I

    .line 894
    :cond_27
    monitor-exit v1

    .line 895
    return-void

    .line 894
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 346
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 373
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 374
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3
    .param p1, "checkable"    # Z

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 399
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 423
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 424
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 675
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 676
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 677
    return-void
.end method

.method public setClickable(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .prologue
    .line 523
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 524
    return-void
.end method

.method public setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .prologue
    .line 767
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 768
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 769
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 728
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 729
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 573
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 574
    return-void
.end method

.method public setFocusable(Z)V
    .registers 3
    .param p1, "focusable"    # Z

    .prologue
    .line 448
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 449
    return-void
.end method

.method public setFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .prologue
    .line 473
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 474
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3
    .param p1, "longClickable"    # Z

    .prologue
    .line 548
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 549
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 650
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 651
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    .line 320
    return-void
.end method

.method public setPassword(Z)V
    .registers 3
    .param p1, "password"    # Z

    .prologue
    .line 598
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 599
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 624
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 625
    return-void
.end method

.method public setSealed(Z)V
    .registers 2
    .param p1, "sealed"    # Z

    .prologue
    .line 786
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 787
    return-void
.end method

.method public setSelected(Z)V
    .registers 3
    .param p1, "selected"    # Z

    .prologue
    .line 498
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 499
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    .line 144
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 701
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 702
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 703
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; boundsInParent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; boundsInScreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v3, "; packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v3, "; className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v3, "; text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v3, "; contentDescription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v3, "; checkable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1107
    const-string v3, "; checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1108
    const-string v3, "; focusable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1109
    const-string v3, "; focused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1110
    const-string v3, "; selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1111
    const-string v3, "; clickable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1112
    const-string v3, "; longClickable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1113
    const-string v3, "; enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1114
    const-string v3, "; password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; scrollable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    const-string v3, "; ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    .local v1, "actionBits":I
    :cond_fe
    :goto_fe
    if-eqz v1, :cond_119

    .line 1120
    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int v0, v3, v4

    .line 1121
    .local v0, "action":I
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v1, v3

    .line 1122
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    if-eqz v1, :cond_fe

    .line 1124
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe

    .line 1128
    .end local v0    # "action":I
    :cond_119
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 905
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityViewId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mAccessibilityWindowId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentAccessibilityViewId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildAccessibilityIds:Landroid/util/SparseIntArray;

    .line 912
    .local v0, "childIds":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 913
    .local v1, "childIdsSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_36

    .line 915
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 905
    .end local v0    # "childIds":Landroid/util/SparseIntArray;
    .end local v1    # "childIdsSize":I
    .end local v2    # "i":I
    :cond_34
    const/4 v3, 0x0

    goto :goto_7

    .line 918
    .restart local v0    # "childIds":Landroid/util/SparseIntArray;
    .restart local v1    # "childIdsSize":I
    .restart local v2    # "i":I
    :cond_36
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 933
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 934
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 935
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 939
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 940
    return-void
.end method
