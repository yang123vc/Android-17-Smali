.class public Landroid/test/TouchUtils;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 26
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v23, v0

    .line 329
    .local v23, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 332
    .local v22, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 334
    .local v21, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 335
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 337
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v19

    .line 339
    .local v19, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 340
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 342
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 344
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 345
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    .line 350
    .local v20, "touchSlop":I
    const/4 v13, 0x2

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x40000000

    div-float/2addr v6, v9

    add-float v14, v7, v6

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x40000000

    div-float/2addr v6, v9

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 352
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 353
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 356
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 357
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 358
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 361
    const-wide/16 v9, 0x3e8

    :try_start_91
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_94} :catch_95

    .line 365
    :goto_94
    return-void

    .line 362
    :catch_95
    move-exception v17

    .line 363
    .local v17, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_94
.end method

.method public static drag(Landroid/test/ActivityInstrumentationTestCase;FFFFI)V
    .registers 6
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 750
    invoke-static/range {p0 .. p5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 751
    return-void
.end method

.method public static drag(Landroid/test/InstrumentationTestCase;FFFFI)V
    .registers 20
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "stepCount"    # I

    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v11

    .line 767
    .local v11, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 768
    .local v1, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 770
    .local v3, "eventTime":J
    move/from16 v7, p3

    .line 771
    .local v7, "y":F
    move v6, p1

    .line 773
    .local v6, "x":F
    sub-float v5, p4, p3

    move/from16 v0, p5

    int-to-float v8, v0

    div-float v13, v5, v8

    .line 774
    .local v13, "yStep":F
    sub-float v5, p2, p1

    move/from16 v0, p5

    int-to-float v8, v0

    div-float v12, v5, v8

    .line 776
    .local v12, "xStep":F
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 778
    .local v9, "event":Landroid/view/MotionEvent;
    invoke-virtual {v11, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 779
    invoke-virtual {v11}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 781
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2a
    move/from16 v0, p5

    if-ge v10, v0, :cond_43

    .line 782
    add-float/2addr v7, v13

    .line 783
    add-float/2addr v6, v12

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 785
    const/4 v5, 0x2

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 786
    invoke-virtual {v11, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 787
    invoke-virtual {v11}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 781
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    .line 790
    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 791
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 792
    invoke-virtual {v11, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 793
    invoke-virtual {v11}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 794
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/ActivityInstrumentationTestCase;)V
    .registers 2
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .registers 10
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 57
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 58
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 60
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000

    div-float v1, v0, v2

    .line 61
    .local v1, "x":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000

    mul-float v3, v0, v2

    .line 62
    .local v3, "fromY":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000

    mul-float v4, v0, v2

    .line 64
    .local v4, "toY":F
    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 65
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/ActivityInstrumentationTestCase;)V
    .registers 2
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .registers 10
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 87
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 88
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 90
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000

    div-float v1, v0, v2

    .line 91
    .local v1, "x":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000

    mul-float v3, v0, v2

    .line 92
    .local v3, "fromY":F
    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3e800000

    mul-float v4, v0, v2

    .line 94
    .local v4, "toY":F
    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 95
    return-void
.end method

.method public static dragViewBy(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .registers 6
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .registers 14
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 574
    .local v8, "xy":[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 576
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 577
    .local v6, "fromX":I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 579
    .local v7, "fromY":I
    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 581
    .local v5, "distance":I
    int-to-float v1, v6

    add-int v0, v6, p3

    int-to-float v2, v0

    int-to-float v3, v7

    add-int v0, v7, p4

    int-to-float v4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 583
    return v5
.end method

.method public static dragViewTo(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .registers 6
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .registers 16
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .prologue
    .line 622
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 624
    .local v10, "xy":[I
    invoke-static {p1, p2, v10}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 626
    const/4 v0, 0x0

    aget v8, v10, v0

    .line 627
    .local v8, "fromX":I
    const/4 v0, 0x1

    aget v9, v10, v0

    .line 629
    .local v9, "fromY":I
    sub-int v6, v8, p3

    .line 630
    .local v6, "deltaX":I
    sub-int v7, v9, p4

    .line 632
    .local v7, "deltaY":I
    mul-int v0, v6, v6

    mul-int v1, v7, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 633
    .local v5, "distance":I
    int-to-float v1, v8

    int-to-float v2, p3

    int-to-float v3, v9

    int-to-float v4, p4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 635
    return v5
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .registers 4
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 191
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .registers 4
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 219
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 201
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 202
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V
    .registers 14
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "stepCount"    # I

    .prologue
    const/high16 v5, 0x40000000

    .line 231
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 233
    .local v6, "screenHeight":I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 234
    .local v9, "xy":[I
    invoke-virtual {p2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 236
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 237
    .local v8, "viewWidth":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 239
    .local v7, "viewHeight":I
    const/4 v0, 0x0

    aget v0, v9, v0

    int-to-float v0, v0

    int-to-float v2, v8

    div-float/2addr v2, v5

    add-float v1, v0, v2

    .line 240
    .local v1, "x":F
    const/4 v0, 0x1

    aget v0, v9, v0

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v3, v0, v2

    .line 241
    .local v3, "fromY":F
    add-int/lit8 v0, v6, -0x1

    int-to-float v4, v0

    .local v4, "toY":F
    move-object v0, p0

    move v2, v1

    move v5, p3

    .line 243
    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 244
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .registers 3
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 440
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .registers 3
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    invoke-static {p0, p1, p2}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 456
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 3
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 465
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 466
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V
    .registers 12
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I

    .prologue
    const/high16 v5, 0x40000000

    .line 476
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 477
    .local v8, "xy":[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 480
    .local v7, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 482
    .local v6, "viewHeight":I
    const/4 v0, 0x0

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v1, v0, v2

    .line 483
    .local v1, "x":F
    const/4 v0, 0x1

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v6

    div-float/2addr v2, v5

    add-float v3, v0, v2

    .line 484
    .local v3, "fromY":F
    const/4 v4, 0x0

    .local v4, "toY":F
    move-object v0, p0

    move v2, v1

    move v5, p2

    .line 486
    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 487
    return-void
.end method

.method public static dragViewToX(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .registers 5
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 656
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .registers 13
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I

    .prologue
    .line 671
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 673
    .local v8, "xy":[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 675
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 676
    .local v6, "fromX":I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 678
    .local v7, "fromY":I
    sub-int v5, v6, p3

    .line 680
    .local v5, "deltaX":I
    int-to-float v1, v6

    int-to-float v2, p3

    int-to-float v3, v7

    int-to-float v4, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 682
    return v5
.end method

.method public static dragViewToY(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .registers 5
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 703
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .registers 13
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toY"    # I

    .prologue
    .line 718
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 720
    .local v8, "xy":[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 722
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 723
    .local v6, "fromX":I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 725
    .local v7, "fromY":I
    sub-int v5, v7, p3

    .line 727
    .local v5, "deltaY":I
    int-to-float v1, v6

    int-to-float v2, v6

    int-to-float v3, v7

    int-to-float v4, p3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 729
    return v5
.end method

.method private static getStartLocation(Landroid/view/View;I[I)V
    .registers 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "gravity"    # I
    .param p2, "xy"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 499
    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 502
    .local v1, "viewWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 504
    .local v0, "viewHeight":I
    and-int/lit8 v2, p1, 0x70

    sparse-switch v2, :sswitch_data_38

    .line 517
    :goto_12
    :sswitch_12
    and-int/lit8 v2, p1, 0x7

    packed-switch v2, :pswitch_data_46

    .line 529
    :goto_17
    :pswitch_17
    return-void

    .line 508
    :sswitch_18
    aget v2, p2, v5

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_12

    .line 511
    :sswitch_20
    aget v2, p2, v5

    add-int/lit8 v3, v0, -0x1

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_12

    .line 521
    :pswitch_28
    aget v2, p2, v4

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_17

    .line 524
    :pswitch_30
    aget v2, p2, v4

    add-int/lit8 v3, v1, -0x1

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_17

    .line 504
    :sswitch_data_38
    .sparse-switch
        0x10 -> :sswitch_18
        0x30 -> :sswitch_12
        0x50 -> :sswitch_20
    .end sparse-switch

    .line 517
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_28
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_30
    .end packed-switch
.end method

.method public static longClickView(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .registers 2
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V

    .line 380
    return-void
.end method

.method public static longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 26
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v23, v0

    .line 390
    .local v23, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 393
    .local v22, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 395
    .local v21, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 396
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 398
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v19

    .line 400
    .local v19, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 401
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 403
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 405
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 406
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    .line 410
    .local v20, "touchSlop":I
    const/4 v13, 0x2

    div-int/lit8 v6, v20, 0x2

    int-to-float v6, v6

    add-float v14, v7, v6

    div-int/lit8 v6, v20, 0x2

    int-to-float v6, v6

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 412
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 413
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 416
    :try_start_75
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x3fc00000

    mul-float/2addr v6, v9

    float-to-long v9, v6

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_81} :catch_96

    .line 421
    :goto_81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 422
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 423
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 424
    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 425
    return-void

    .line 417
    :catch_96
    move-exception v17

    .line 418
    .local v17, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_81
.end method

.method public static scrollToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .registers 3
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 111
    return-void
.end method

.method public static scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    const/high16 v1, -0x80000000

    .line 125
    .local v1, "firstId":I
    const/high16 v2, -0x80000000

    .line 129
    .local v2, "firstTop":I
    :cond_4
    move v3, v1

    .line 130
    .local v3, "prevId":I
    move v4, v2

    .line 131
    .local v4, "prevTop":I
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 132
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 135
    if-ne v3, v1, :cond_4

    if-ne v4, v2, :cond_4

    .line 136
    return-void
.end method

.method public static scrollToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .registers 3
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 152
    return-void
.end method

.method public static scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    const/high16 v1, -0x80000000

    .line 165
    .local v1, "firstId":I
    const/high16 v2, -0x80000000

    .line 169
    .local v2, "firstTop":I
    :cond_4
    move v3, v1

    .line 170
    .local v3, "prevId":I
    move v4, v2

    .line 171
    .local v4, "prevTop":I
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 172
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 175
    if-ne v3, v1, :cond_4

    if-ne v4, v2, :cond_4

    .line 176
    return-void
.end method

.method public static tapView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 25
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v22, v0

    .line 254
    .local v22, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 257
    .local v21, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 259
    .local v20, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 260
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 262
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v18

    .line 264
    .local v18, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 265
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 267
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 269
    .local v17, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 270
    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v19

    .line 274
    .local v19, "touchSlop":I
    const/4 v13, 0x2

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x40000000

    div-float/2addr v6, v9

    add-float v14, v7, v6

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x40000000

    div-float/2addr v6, v9

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 276
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 277
    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 280
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 281
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 282
    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 283
    return-void
.end method

.method public static touchAndCancelView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 25
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v22, v0

    .line 294
    .local v22, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 297
    .local v21, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 299
    .local v20, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    .line 300
    .local v7, "x":F
    const/4 v6, 0x1

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v9, v0

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 302
    .local v8, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v18

    .line 304
    .local v18, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 307
    .local v4, "eventTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 309
    .local v17, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 310
    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v19

    .line 314
    .local v19, "touchSlop":I
    const/4 v13, 0x3

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x40000000

    div-float/2addr v6, v9

    add-float v14, v7, v6

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x40000000

    div-float/2addr v6, v9

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 316
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 317
    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 319
    return-void
.end method
