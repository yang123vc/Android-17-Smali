.class Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointerTracker"
.end annotation


# static fields
.field private static final COEFFICIENT_ACTIVE_POINTER:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "PointerTracker"


# instance fields
.field private mActivePointers:I

.field private mHasMovingActivePointer:Z

.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEventAction:I

.field private mLastReceivedUpPointerActive:Z

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerId:I

.field private mPrimaryActivePointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field private final mThresholdActivePointer:D

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x20

    .line 924
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    .line 889
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    .line 890
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    .line 917
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedHoverEventAction:I

    .line 925
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mThresholdActivePointer:D

    .line 927
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    .param p1, "x1"    # I

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z

    move-result v0

    return v0
.end method

.method private computePointerDeltaMove(ILandroid/view/MotionEvent;)F
    .registers 10
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1314
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1315
    .local v2, "pointerId":I
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    aget v4, v4, v2

    sub-float v0, v3, v4

    .line 1316
    .local v0, "deltaX":F
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    aget v4, v4, v2

    sub-float v1, v3, v4

    .line 1317
    .local v1, "deltaY":F
    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method private detectActivePointers(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 1268
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .local v0, "count":I
    :goto_6
    if-ge v1, v0, :cond_2e

    .line 1269
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1270
    .local v4, "pointerId":I
    iget-boolean v5, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    if-eqz v5, :cond_19

    .line 1272
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1268
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1277
    :cond_19
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->computePointerDeltaMove(ILandroid/view/MotionEvent;)F

    move-result v2

    .line 1278
    .local v2, "pointerDeltaMove":F
    float-to-double v5, v2

    iget-wide v7, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mThresholdActivePointer:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_16

    .line 1279
    shl-int v3, v9, v4

    .line 1280
    .local v3, "pointerFlag":I
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    .line 1281
    iput-boolean v9, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    goto :goto_16

    .line 1284
    .end local v2    # "pointerDeltaMove":F
    .end local v3    # "pointerFlag":I
    .end local v4    # "pointerId":I
    :cond_2e
    return-void
.end method

.method private findPrimaryActivePointer()I
    .registers 9

    .prologue
    .line 1290
    const/4 v6, -0x1

    .line 1291
    .local v6, "primaryActivePointerId":I
    const-wide v4, 0x7fffffffffffffffL

    .line 1293
    .local v4, "minDownTime":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    array-length v0, v7

    .local v0, "count":I
    :goto_a
    if-ge v3, v0, :cond_1f

    .line 1294
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1295
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v1, v7, v3

    .line 1296
    .local v1, "downPointerTime":J
    cmp-long v7, v1, v4

    if-gez v7, :cond_1c

    .line 1297
    move-wide v4, v1

    .line 1298
    move v6, v3

    .line 1293
    .end local v1    # "downPointerTime":J
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1302
    :cond_1f
    return v6
.end method

.method private handleInjectedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1242
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1243
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1244
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    .line 1245
    return-void
.end method

.method private handleInjectedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 7
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1254
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1255
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1256
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    .line 1257
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    if-nez v2, :cond_16

    .line 1258
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedDownEventTime:J

    .line 1260
    :cond_16
    return-void
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 8
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1174
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1175
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1177
    .local v0, "pointerFlag":I
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    .line 1178
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1179
    iput-boolean v4, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    .line 1181
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    .line 1182
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 1183
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 1184
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 1186
    iget-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    if-nez v2, :cond_36

    .line 1189
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    .line 1190
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    .line 1196
    :goto_35
    return-void

    .line 1194
    :cond_36
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    goto :goto_35
.end method

.method private handleReceivedPointerMove(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1204
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->detectActivePointers(Landroid/view/MotionEvent;)V

    .line 1205
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 8
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1214
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1215
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1217
    .local v0, "pointerFlag":I
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    .line 1218
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1219
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    .line 1221
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    .line 1222
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    .line 1223
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    aput v4, v2, v1

    .line 1224
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    aput v4, v2, v1

    .line 1225
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 1227
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    if-nez v2, :cond_39

    .line 1228
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    .line 1230
    :cond_39
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    if-ne v2, v1, :cond_40

    .line 1231
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    .line 1233
    :cond_40
    return-void
.end method

.method private isActiveOrWasLastActiveUpPointer(I)Z
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1162
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    if-ne v0, p1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public clear()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 933
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 934
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 935
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 936
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    .line 937
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    .line 938
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    .line 939
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mHasMovingActivePointer:Z

    .line 940
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    .line 941
    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 942
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    .line 943
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    .line 944
    return-void
.end method

.method public getActivePointerCount()I
    .registers 2

    .prologue
    .line 1020
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointerDownCount()I
    .registers 2

    .prologue
    .line 1049
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .prologue
    .line 1122
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverAction()I
    .registers 2

    .prologue
    .line 1129
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedHoverEventAction:I

    return v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .registers 3

    .prologue
    .line 1101
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerId()I
    .registers 2

    .prologue
    .line 1108
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerId:I

    return v0
.end method

.method public getNotInjectedActivePointerCount()I
    .registers 4

    .prologue
    .line 1153
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    xor-int/lit8 v2, v2, -0x1

    and-int v0, v1, v2

    .line 1154
    .local v0, "pointerState":I
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    return v1
.end method

.method public getPrimaryActivePointerId()I
    .registers 3

    .prologue
    .line 1091
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1092
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->findPrimaryActivePointer()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    .line 1094
    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mPrimaryActivePointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .registers 2

    .prologue
    .line 1013
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isActivePointer(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1059
    shl-int v0, v1, p1

    .line 1060
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isInjectedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1041
    shl-int v0, v1, p1

    .line 1042
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isReceivedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1030
    shl-int v0, v1, p1

    .line 1031
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public onInjectedMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 984
    .local v0, "action":I
    packed-switch v0, :pswitch_data_36

    .line 1007
    :goto_7
    :pswitch_7
    return-void

    .line 986
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerDown(ILandroid/view/MotionEvent;)V

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedDownEventTime:J

    goto :goto_7

    .line 990
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_7

    .line 993
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_7

    .line 996
    :pswitch_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleInjectedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_7

    .line 1001
    :pswitch_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastInjectedHoverEventAction:I

    goto :goto_7

    .line 984
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1e
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_16
        :pswitch_26
        :pswitch_2e
        :pswitch_7
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public onReceivedMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 952
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 953
    .local v0, "action":I
    packed-switch v0, :pswitch_data_30

    .line 975
    :goto_7
    :pswitch_7
    return-void

    .line 956
    :pswitch_8
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mInjectedPointersDown:I

    .line 957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_7

    .line 960
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_7

    .line 963
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 966
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_7

    .line 969
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_7

    .line 953
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1f
        :pswitch_1b
        :pswitch_7
        :pswitch_7
        :pswitch_13
        :pswitch_27
    .end packed-switch
.end method

.method public populateActivePointerIds([I)V
    .registers 6
    .param p1, "outPointerIds"    # [I

    .prologue
    .line 1140
    const/4 v2, 0x0

    .line 1141
    .local v2, "index":I
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mActivePointers:I

    .local v1, "idBits":I
    :goto_3
    if-eqz v1, :cond_13

    .line 1142
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 1143
    .local v0, "id":I
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 1144
    aput v0, p1, v2

    .line 1145
    add-int/lit8 v2, v2, 0x1

    .line 1146
    goto :goto_3

    .line 1147
    .end local v0    # "id":I
    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1323
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    const-string v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1326
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v3, :cond_31

    .line 1328
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1330
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1333
    :cond_31
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    const-string v2, "\nActive pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1336
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const/4 v1, 0x0

    :goto_48
    if-ge v1, v3, :cond_5b

    .line 1338
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1340
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 1343
    :cond_5b
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string v2, "\nPrimary active pointer id [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1346
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    const-string v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasLastReceivedUpPointerActive()Z
    .registers 2

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->mLastReceivedUpPointerActive:Z

    return v0
.end method
