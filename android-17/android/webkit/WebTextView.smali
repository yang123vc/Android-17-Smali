.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$AutoCompleteAdapter;,
        Landroid/webkit/WebTextView$WebTextViewLayout;,
        Landroid/webkit/WebTextView$BackgroundDrawable;,
        Landroid/webkit/WebTextView$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64

.field private static final EMAIL:I = 0x4

.field static final FORM_NOT_AUTOFILLABLE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NORMAL_TEXT_FIELD:I = 0x0

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final NUMBER:I = 0x5

.field private static final PASSWORD:I = 0x2

.field private static final SEARCH:I = 0x3

.field private static final TELEPHONE:I = 0x6

.field private static final TEXT_AREA:I = 0x1

.field private static final URL:I = 0x7


# instance fields
.field private mAutoFillProfileIsSet:Z

.field private mAutoFillable:Z

.field private mCharacter:[C

.field private mDelSelEnd:I

.field private mDelSelStart:I

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotDelete:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mInsideRemove:Z

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mQueryId:I

.field private mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

.field private mRingInset:I

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "autoFillQueryId"    # I

    .prologue
    const/4 v5, -0x1

    .line 181
    const/4 v3, 0x0

    const v4, 0x10102b9

    invoke-direct {p0, p1, v3, v4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    const/4 v3, 0x1

    new-array v3, v3, [C

    iput-object v3, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 182
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 183
    iput v5, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 184
    invoke-virtual {p0, p3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 187
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 188
    .local v1, "paint":Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    or-int/lit16 v3, v3, 0x80

    or-int/lit8 v0, v3, 0x4

    .line 190
    .local v0, "flags":I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 195
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setTextColor(I)V

    .line 196
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setIncludeFontPadding(Z)V

    .line 201
    new-instance v3, Landroid/webkit/WebTextView$1;

    invoke-direct {v3, p0}, Landroid/webkit/WebTextView$1;-><init>(Landroid/webkit/WebTextView;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v3, Landroid/webkit/WebTextView$MyResultReceiver;

    iget-object v4, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebTextView$MyResultReceiver;-><init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    .line 212
    const/high16 v3, 0x40000000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v3, v4

    .line 213
    .local v2, "ringWidth":F
    float-to-int v3, v2

    iput v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    .line 214
    new-instance v3, Landroid/webkit/WebTextView$BackgroundDrawable;

    iget v4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    invoke-direct {v3, v4}, Landroid/webkit/WebTextView$BackgroundDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Landroid/webkit/WebTextView;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebTextView;)I
    .registers 2
    .param p0, "x0"    # Landroid/webkit/WebTextView;

    .prologue
    .line 74
    iget v0, p0, Landroid/webkit/WebTextView;->mQueryId:I

    return v0
.end method

.method private lineUpScroll()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 457
    .local v0, "layout":Landroid/text/Layout;
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_28

    if-eqz v0, :cond_28

    .line 458
    iget-boolean v3, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v3, :cond_29

    .line 460
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 465
    .local v1, "maxScrollX":F
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v4, v1, v2

    if-lez v4, :cond_25

    iget v2, p0, Landroid/webkit/WebTextView;->mScrollX:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    :cond_25
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->scrollFocusedTextInputX(F)V

    .line 472
    .end local v1    # "maxScrollX":F
    :cond_28
    :goto_28
    return-void

    .line 469
    :cond_29
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v3, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->scrollFocusedTextInputY(I)V

    goto :goto_28
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 855
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 856
    return-void
.end method

.method private setMaxLength(I)V
    .registers 5
    .param p1, "maxLength"    # I

    .prologue
    .line 947
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 948
    const/4 v0, -0x1

    if-ne v0, p1, :cond_b

    .line 949
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 954
    :goto_a
    return-void

    .line 951
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a
.end method

.method static urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 1175
    const/4 v1, 0x0

    .line 1177
    .local v1, "url":Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_31

    .end local v1    # "url":Ljava/net/URL;
    .local v2, "url":Ljava/net/URL;
    move-object v1, v2

    .line 1182
    .end local v2    # "url":Ljava/net/URL;
    .restart local v1    # "url":Ljava/net/URL;
    :goto_7
    if-eqz v1, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_30
    return-object v3

    .line 1178
    :catch_31
    move-exception v0

    .line 1179
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v3, "webtextview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1182
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_4c
    const/4 v3, 0x0

    goto :goto_30
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 18
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 273
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 424
    :goto_a
    return v1

    .line 276
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v7, 0x1

    .line 277
    .local v7, "down":Z
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 279
    .local v9, "keyCode":I
    const/4 v8, 0x0

    .line 280
    .local v8, "isArrowKey":Z
    packed-switch v9, :pswitch_data_162

    .line 289
    :goto_1b
    const/16 v1, 0x3d

    if-ne v1, v9, :cond_2d

    .line 290
    if-eqz v7, :cond_27

    .line 291
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 293
    :cond_27
    const/4 v1, 0x1

    goto :goto_a

    .line 276
    .end local v7    # "down":Z
    .end local v8    # "isArrowKey":Z
    .end local v9    # "keyCode":I
    :cond_29
    const/4 v7, 0x0

    goto :goto_13

    .line 285
    .restart local v7    # "down":Z
    .restart local v8    # "isArrowKey":Z
    .restart local v9    # "keyCode":I
    :pswitch_2b
    const/4 v8, 0x1

    goto :goto_1b

    .line 295
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 296
    .local v15, "text":Landroid/text/Spannable;
    invoke-static {v15}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    .line 297
    .local v12, "oldStart":I
    invoke-static {v15}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    .line 302
    .local v11, "oldEnd":I
    const/16 v1, 0x43

    if-ne v1, v9, :cond_55

    .line 303
    if-nez v12, :cond_46

    if-nez v11, :cond_46

    .line 304
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 305
    const/4 v1, 0x1

    goto :goto_a

    .line 307
    :cond_46
    if-eqz v7, :cond_55

    .line 308
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 309
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    .line 310
    move-object/from16 v0, p0

    iput v11, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    .line 314
    :cond_55
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_94

    const/16 v1, 0x42

    if-eq v1, v9, :cond_63

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_94

    .line 316
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 317
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_a

    .line 319
    :cond_6e
    if-nez v7, :cond_8e

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 325
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 326
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 328
    :cond_8e
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 329
    :cond_94
    const/16 v1, 0x17

    if-ne v1, v9, :cond_b3

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 332
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 335
    :cond_a4
    if-nez v7, :cond_ad

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 339
    :cond_ad
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 343
    :cond_b3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_c6

    .line 344
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 347
    :cond_c6
    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 348
    .local v3, "oldLength":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_100

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-ne v3, v1, :cond_100

    const/4 v10, 0x1

    .line 353
    .local v10, "maxedOut":Z
    :goto_d8
    if-eqz v10, :cond_102

    if-eq v11, v12, :cond_102

    .line 354
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, "oldText":Ljava/lang/String;
    :goto_e0
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 369
    const/16 v1, 0x42

    if-eq v1, v9, :cond_ee

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_f3

    .line 374
    :cond_ee
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 376
    :cond_f3
    if-eqz v10, :cond_12e

    if-nez v8, :cond_12e

    const/16 v1, 0x43

    if-eq v9, v1, :cond_12e

    .line 377
    if-ne v11, v12, :cond_105

    .line 379
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 348
    .end local v10    # "maxedOut":Z
    .end local v13    # "oldText":Ljava/lang/String;
    :cond_100
    const/4 v10, 0x0

    goto :goto_d8

    .line 356
    .restart local v10    # "maxedOut":Z
    :cond_102
    const-string v13, ""

    .restart local v13    # "oldText":Ljava/lang/String;
    goto :goto_e0

    .line 380
    :cond_105
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 388
    .local v14, "span":Landroid/text/Spannable;
    invoke-static {v14}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 389
    .local v5, "newStart":I
    invoke-static {v14}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 390
    .local v6, "newEnd":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 392
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 407
    .end local v5    # "newStart":I
    .end local v6    # "newEnd":I
    .end local v14    # "span":Landroid/text/Spannable;
    :cond_12e
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 411
    :cond_131
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    if-eqz v1, :cond_13c

    if-nez v7, :cond_13c

    .line 412
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 415
    :cond_13c
    if-eqz v8, :cond_15f

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 421
    if-eqz v7, :cond_153

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    :cond_153
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 424
    :cond_15f
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 280
    :pswitch_data_162
    .packed-switch 0x13
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method ensureLayout()V
    .registers 7

    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_26

    .line 430
    iget v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    iget v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 431
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 432
    .local v0, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_26

    .line 433
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebTextView;->layout(IIII)V

    .line 437
    .end local v0    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_26
    return-void
.end method

.method getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    return-object v0
.end method

.method isSameTextField(I)Z
    .registers 3
    .param p1, "ptr"    # I

    .prologue
    .line 449
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    .line 479
    invoke-super/range {p0 .. p6}, Landroid/widget/AutoCompleteTextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 481
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 482
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 522
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2d

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 528
    :cond_2d
    return-object v0
.end method

.method public onEditorAction(I)V
    .registers 6
    .param p1, "actionCode"    # I

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 533
    packed-switch p1, :pswitch_data_40

    .line 559
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 535
    :pswitch_7
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 538
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 539
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 540
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_6

    .line 544
    :pswitch_1d
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_6

    .line 549
    :pswitch_21
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 551
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 553
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_6

    .line 533
    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_21
        :pswitch_21
        :pswitch_6
        :pswitch_7
        :pswitch_1d
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 564
    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 565
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 566
    if-eqz p1, :cond_11

    .line 567
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setActive(Z)V

    .line 571
    :cond_e
    :goto_e
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 572
    return-void

    .line 568
    :cond_11
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    if-nez v0, :cond_e

    .line 569
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    goto :goto_e
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1e

    if-nez p3, :cond_1e

    .line 580
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 582
    .local v0, "settings":Landroid/webkit/WebSettings;
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    if-eqz v1, :cond_1f

    .line 584
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/WebTextView;->mQueryId:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->autoFillForm(I)V

    .line 593
    .end local v0    # "settings":Landroid/webkit/WebSettings;
    :cond_1e
    :goto_1e
    return-void

    .line 589
    .restart local v0    # "settings":Landroid/webkit/WebSettings;
    :cond_1f
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_1e
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 597
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 598
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 599
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_1c

    .line 609
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 610
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 612
    :cond_1c
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 22
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 616
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 617
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 622
    .local v13, "postChange":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-le v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 712
    :cond_3f
    :goto_3f
    return-void

    .line 627
    :cond_40
    if-nez p4, :cond_99

    .line 628
    if-lez p3, :cond_93

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 631
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    if-eqz v2, :cond_88

    .line 632
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 633
    add-int v12, p2, p3

    .line 634
    .local v12, "oldEnd":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    if-ne v2, v12, :cond_88

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_6d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    if-ne v2, v12, :cond_88

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_88

    .line 639
    :cond_6d
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 641
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_3f

    .line 648
    .end local v12    # "oldEnd":I
    :cond_88
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 650
    :cond_93
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    goto :goto_3f

    .line 660
    :cond_99
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 663
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_d3

    add-int/lit8 v2, p4, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_d3

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 666
    .local v14, "replaceButOne":Ljava/lang/String;
    add-int v2, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 668
    .local v15, "replacedString":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 670
    add-int p2, p2, p3

    .line 671
    const/16 p3, 0x0

    .line 672
    const/16 p4, 0x1

    .line 675
    .end local v14    # "replaceButOne":Ljava/lang/String;
    .end local v15    # "replacedString":Ljava/lang/String;
    :cond_d3
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 679
    const/4 v8, 0x0

    .line 680
    .local v8, "events":[Landroid/view/KeyEvent;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_fa

    .line 681
    add-int v2, p2, p4

    add-int/lit8 v2, v2, -0x1

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 682
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v10

    .line 683
    .local v10, "kmap":Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    invoke-virtual {v10, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v8

    .line 685
    .end local v10    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_fa
    if-eqz v8, :cond_12b

    const/16 v16, 0x1

    .line 686
    .local v16, "useKeyEvents":Z
    :goto_fe
    if-eqz v16, :cond_12e

    .line 693
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v2, :cond_111

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->setSelection(II)V

    .line 696
    :cond_111
    array-length v11, v8

    .line 697
    .local v11, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_113
    if-ge v9, v11, :cond_14b

    .line 700
    aget-object v2, v8, v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_128

    .line 701
    aget-object v2, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 697
    :cond_128
    add-int/lit8 v9, v9, 0x1

    goto :goto_113

    .line 685
    .end local v9    # "i":I
    .end local v11    # "length":I
    .end local v16    # "useKeyEvents":Z
    :cond_12b
    const/16 v16, 0x0

    goto :goto_fe

    .line 705
    .restart local v16    # "useKeyEvents":Z
    :cond_12e
    add-int v2, p2, p4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, "replace":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v4, p2, p3

    add-int v6, p2, p4

    add-int v7, p2, p4

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 711
    .end local v5    # "replace":Ljava/lang/String;
    :cond_14b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_3f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_ee

    .line 797
    :goto_7
    const/4 v8, 0x1

    :goto_8
    return v8

    .line 718
    :pswitch_9
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 724
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 725
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 726
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 727
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_7

    .line 730
    :pswitch_2b
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_34

    .line 731
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 732
    const/4 v8, 0x0

    goto :goto_8

    .line 734
    :cond_34
    iget-object v8, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 735
    .local v6, "slop":I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 736
    .local v0, "buffer":Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 737
    .local v3, "initialScrollX":I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 738
    .local v4, "initialScrollY":I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 739
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 740
    .local v1, "dx":I
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 744
    .local v2, "dy":I
    div-int/lit8 v7, v6, 0x2

    .line 745
    .local v7, "smallerSlop":I
    if-gt v1, v7, :cond_61

    if-le v2, v7, :cond_69

    .line 747
    :cond_61
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 748
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 749
    const/4 v8, 0x1

    goto :goto_8

    .line 751
    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    .line 756
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 758
    :cond_90
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_b7

    .line 760
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_a6

    .line 761
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 763
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 765
    :cond_a6
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 766
    .local v5, "scrolled":Z
    if-eqz v5, :cond_b7

    .line 767
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 768
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 769
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 772
    .end local v5    # "scrolled":Z
    :cond_b7
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 775
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "initialScrollX":I
    .end local v4    # "initialScrollY":I
    .end local v6    # "slop":I
    .end local v7    # "smallerSlop":I
    :pswitch_ba
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 776
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_c7

    .line 777
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 778
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 780
    :cond_c7
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_db

    .line 783
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 784
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_db

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_db

    .line 785
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 789
    :cond_db
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_e8

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_e8

    .line 790
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 792
    :cond_e8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_7

    .line 716
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_9
        :pswitch_ba
        :pswitch_2b
        :pswitch_ba
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 802
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 803
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 815
    :cond_b
    :goto_b
    return v2

    .line 805
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 808
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 809
    .local v1, "text":Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 810
    .local v0, "move":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 813
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public performLongClick()Z
    .registers 2

    .prologue
    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 821
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 830
    iget-object v2, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 831
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 832
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 834
    :cond_14
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 835
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v1

    .line 836
    .local v1, "isFocused":Z
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 837
    if-eqz v1, :cond_27

    .line 838
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 840
    :cond_27
    iput-boolean v3, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 841
    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 842
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 4
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .prologue
    .line 863
    if-eqz p1, :cond_22

    .line 864
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 866
    # invokes: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$200(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 867
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-eqz v0, :cond_1d

    .line 868
    invoke-virtual {p0, p0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 872
    :goto_16
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->showDropDown()V

    .line 876
    :goto_19
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 877
    return-void

    .line 870
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_16

    .line 874
    :cond_22
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->dismissDropDown()V

    goto :goto_19
.end method

.method setAutoFillProfileIsSet(Z)V
    .registers 2
    .param p1, "autoFillProfileIsSet"    # Z

    .prologue
    .line 1170
    iput-boolean p1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    .line 1171
    return-void
.end method

.method public setAutoFillable(I)V
    .registers 3
    .param p1, "queryId"    # I

    .prologue
    .line 259
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    .line 261
    iput p1, p0, Landroid/webkit/WebTextView;->mQueryId:I

    .line 262
    return-void

    .line 259
    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method setDefaultSelection()V
    .registers 4

    .prologue
    .line 918
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 919
    .local v1, "text":Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 920
    .local v0, "selection":I
    :goto_c
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2d

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2d

    .line 930
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_21

    .line 931
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 936
    :cond_21
    :goto_21
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->incrementTextGeneration()V

    .line 937
    :cond_2a
    return-void

    .line 919
    .end local v0    # "selection":I
    :cond_2b
    const/4 v0, 0x0

    goto :goto_c

    .line 934
    .restart local v0    # "selection":I
    :cond_2d
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_21
.end method

.method public setGravityForRtl(Z)V
    .registers 4
    .param p1, "rtl"    # Z

    .prologue
    .line 1186
    if-eqz p1, :cond_e

    const/4 v0, 0x5

    .line 1187
    .local v0, "gravity":I
    :goto_3
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    :goto_9
    or-int/2addr v0, v1

    .line 1188
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 1189
    return-void

    .line 1186
    .end local v0    # "gravity":I
    :cond_e
    const/4 v0, 0x3

    goto :goto_3

    .line 1187
    .restart local v0    # "gravity":I
    :cond_10
    const/16 v1, 0x30

    goto :goto_9
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 942
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 943
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 944
    return-void
.end method

.method setNodePointer(I)V
    .registers 3
    .param p1, "ptr"    # I

    .prologue
    .line 963
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-eq p1, v0, :cond_a

    .line 964
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 965
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 967
    :cond_a
    return-void
.end method

.method public setPadding(IIII)V
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 266
    iget v0, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v1, p2

    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v2, p3

    iget v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 268
    return-void
.end method

.method setRect(IIII)V
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v4, 0x40000000

    .line 980
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 981
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p1, v2

    .line 982
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p2, v2

    .line 983
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 984
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    .line 985
    const/4 v1, 0x0

    .line 986
    .local v1, "needsUpdate":Z
    if-nez v0, :cond_39

    .line 987
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 998
    .restart local v0    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_53

    .line 1000
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    :cond_2c
    :goto_2c
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 1006
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 1007
    return-void

    .line 989
    :cond_39
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v2, p1, :cond_49

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v2, p2, :cond_49

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v2, p3, :cond_49

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-eq v2, p4, :cond_20

    .line 991
    :cond_49
    const/4 v1, 0x1

    .line 992
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 993
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 994
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 995
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_20

    .line 1001
    :cond_53
    if-eqz v1, :cond_2c

    .line 1002
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c
.end method

.method setSelectionFromWebKit(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1013
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    .line 1020
    :cond_4
    :goto_4
    return-void

    .line 1014
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1015
    .local v1, "text":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 1016
    .local v0, "length":I
    if-gt p1, v0, :cond_4

    if-gt p2, v0, :cond_4

    .line 1017
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1018
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1019
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_4
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1042
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1043
    .local v0, "edit":Landroid/text/Editable;
    iput-object p1, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 1044
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1063
    :goto_11
    return-void

    .line 1047
    :cond_12
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1048
    .local v4, "selStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1049
    .local v3, "selEnd":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1050
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v0, v6, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1051
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1052
    .local v2, "newLength":I
    if-le v4, v2, :cond_2b

    move v4, v2

    .line 1053
    :cond_2b
    if-le v3, v2, :cond_2e

    move v3, v2

    .line 1054
    :cond_2e
    invoke-static {v0, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1055
    iput-boolean v6, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1056
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1057
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_42

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1060
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1062
    :cond_42
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_11
.end method

.method setType(I)V
    .registers 12
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 1074
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v6, :cond_7

    .line 1160
    :cond_6
    :goto_6
    return-void

    .line 1075
    :cond_7
    const/4 v5, 0x1

    .line 1076
    .local v5, "single":Z
    const/4 v3, -0x1

    .line 1077
    .local v3, "maxLength":I
    const/16 v2, 0xa1

    .line 1079
    .local v2, "inputType":I
    const/high16 v1, 0x12000000

    .line 1081
    .local v1, "imeOptions":I
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsSpellcheck()Z

    move-result v6

    if-nez v6, :cond_18

    .line 1082
    const/high16 v6, 0x80000

    or-int/2addr v2, v6

    .line 1084
    :cond_18
    if-eq v7, p1, :cond_25

    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1086
    const/high16 v6, 0x8000000

    or-int/2addr v1, v6

    .line 1088
    :cond_25
    packed-switch p1, :pswitch_data_ac

    .line 1131
    or-int/lit8 v1, v1, 0x2

    .line 1134
    :goto_2a
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1135
    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setThreshold(I)V

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "autoComplete":Z
    if-eqz v5, :cond_6c

    .line 1138
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v7

    iget v8, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1140
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v3

    .line 1141
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsAutoComplete()Z

    move-result v0

    .line 1142
    const/4 v6, 0x2

    if-eq p1, v6, :cond_6c

    iget-boolean v6, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-nez v6, :cond_55

    if-eqz v0, :cond_6c

    .line 1143
    :cond_55
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_6c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6c

    .line 1145
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;IZZ)V

    .line 1150
    .end local v4    # "name":Ljava/lang/String;
    :cond_6c
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1151
    invoke-direct {p0, v3}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1152
    invoke-virtual {p0, v5}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1153
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1154
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->clearComposingText()V

    .line 1155
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1156
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 1157
    if-nez v0, :cond_6

    .line 1158
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_6

    .line 1090
    .end local v0    # "autoComplete":Z
    :pswitch_87
    or-int/lit8 v1, v1, 0x2

    .line 1091
    goto :goto_2a

    .line 1093
    :pswitch_8a
    const/4 v5, 0x0

    .line 1094
    const v6, 0x2c000

    or-int/2addr v2, v6

    .line 1097
    or-int/lit8 v1, v1, 0x1

    .line 1098
    goto :goto_2a

    .line 1100
    :pswitch_92
    or-int/lit16 v2, v2, 0xe0

    .line 1101
    or-int/lit8 v1, v1, 0x2

    .line 1102
    goto :goto_2a

    .line 1104
    :pswitch_97
    or-int/lit8 v1, v1, 0x3

    .line 1105
    goto :goto_2a

    .line 1108
    :pswitch_9a
    const/16 v2, 0xd1

    .line 1110
    or-int/lit8 v1, v1, 0x2

    .line 1111
    goto :goto_2a

    .line 1114
    :pswitch_9f
    const/16 v2, 0x3002

    .line 1118
    or-int/lit8 v1, v1, 0x5

    .line 1119
    goto :goto_2a

    .line 1122
    :pswitch_a4
    const/4 v2, 0x3

    .line 1123
    or-int/lit8 v1, v1, 0x5

    .line 1124
    goto :goto_2a

    .line 1128
    :pswitch_a8
    or-int/lit8 v1, v1, 0x2

    .line 1129
    goto :goto_2a

    .line 1088
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_87
        :pswitch_8a
        :pswitch_92
        :pswitch_97
        :pswitch_9a
        :pswitch_9f
        :pswitch_a4
        :pswitch_a8
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .registers 3

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method updateTextSize()V
    .registers 4

    .prologue
    .line 1027
    const-string/jumbo v1, "updateTextSize should only be called from mWebView, so mWebView should never be null!"

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1031
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 1033
    .local v0, "size":F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 1034
    return-void
.end method
