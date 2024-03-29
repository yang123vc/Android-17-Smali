.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$ConstantState;,
        Landroid/graphics/drawable/Drawable$Callback2;,
        Landroid/graphics/drawable/Drawable$Callback;
    }
.end annotation


# static fields
.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingConfigurations:I

.field private mLevel:I

.field private mStateSet:[I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 120
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 121
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 122
    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 926
    return-void
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 876
    if-nez p0, :cond_4

    .line 885
    :cond_3
    :goto_3
    return-object v1

    .line 880
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 881
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 882
    invoke-static {v1, v0, v1, v1, p0}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    .line 742
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x0

    .line 752
    if-nez p2, :cond_4

    .line 782
    :cond_3
    :goto_3
    return-object v3

    .line 762
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 771
    .local v2, "pad":Landroid/graphics/Rect;
    if-nez p4, :cond_10

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 772
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_10
    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 773
    invoke-static {p0, p1, p2, v2, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 774
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 775
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 776
    .local v1, "np":[B
    if-eqz v1, :cond_26

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-nez v3, :cond_28

    .line 777
    :cond_26
    const/4 v1, 0x0

    .line 778
    const/4 v2, 0x0

    .line 780
    :cond_28
    invoke-static {p0, v0, v1, v2, p3}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 733
    invoke-static {v0, v0, p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 792
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 796
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v4, :cond_e

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 800
    :cond_e
    if-eq v2, v4, :cond_18

    .line 801
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 804
    :cond_18
    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 806
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3b

    .line 807
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :cond_3b
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 825
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 867
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_12
    :goto_12
    invoke-virtual {v0, p0, p1, p2}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 868
    return-object v0

    .line 826
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_16
    const-string v2, "level-list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 827
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 832
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_24
    const-string v2, "layer-list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 833
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 834
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_32
    const-string/jumbo v2, "transition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 835
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 836
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_41
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 837
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 838
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4f
    const-string/jumbo v2, "shape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 839
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 840
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5e
    const-string/jumbo v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 841
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 842
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6d
    const-string v2, "clip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 843
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 844
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7b
    const-string/jumbo v2, "rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 845
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 846
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8a
    const-string v2, "animated-rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 847
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_12

    .line 848
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_99
    const-string v2, "animation-list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 849
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_12

    .line 850
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a8
    const-string v2, "inset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 851
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_12

    .line 852
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b7
    const-string v2, "bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 853
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 854
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_12

    move-object v2, v0

    .line 855
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_12

    .line 857
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_d2
    const-string/jumbo v2, "nine-patch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 858
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    .line 859
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_12

    move-object v2, v0

    .line 860
    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_12

    .line 863
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_ee
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid drawable tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "srcName"    # Ljava/lang/String;

    .prologue
    .line 965
    if-eqz p2, :cond_d

    .line 966
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 969
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_c
.end method

.method public static resolveOpacity(II)I
    .registers 4
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v1, -0x3

    .line 599
    if-ne p0, p1, :cond_5

    .line 611
    .end local p0    # "op1":I
    :goto_4
    return p0

    .line 602
    .restart local p0    # "op1":I
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    .line 603
    :cond_9
    const/4 p0, 0x0

    goto :goto_4

    .line 605
    :cond_b
    if-eq p0, v1, :cond_f

    if-ne p1, v1, :cond_11

    :cond_f
    move p0, v1

    .line 606
    goto :goto_4

    .line 608
    :cond_11
    if-eq p0, v0, :cond_15

    if-ne p1, v0, :cond_17

    :cond_15
    move p0, v0

    .line 609
    goto :goto_4

    .line 611
    :cond_17
    const/4 p0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public clearColorFilter()V
    .registers 2

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 423
    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 181
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final copyBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_d

    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 204
    :cond_d
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 333
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 335
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .prologue
    .line 959
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 494
    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 668
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 660
    const/4 v0, -0x1

    return v0
.end method

.method public final getLevel()I
    .registers 2

    .prologue
    .line 527
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 696
    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_7

    .end local v0    # "intrinsicHeight":I
    :goto_6
    return v0

    .restart local v0    # "intrinsicHeight":I
    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 682
    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_7

    .end local v0    # "intrinsicWidth":I
    :goto_6
    return v0

    .restart local v0    # "intrinsicWidth":I
    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public abstract getOpacity()I
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 707
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 708
    return v0
.end method

.method public getResolvedLayoutDirectionSelf()I
    .registers 3

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 395
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/graphics/drawable/Drawable$Callback2;

    if-nez v1, :cond_c

    .line 396
    :cond_a
    const/4 v1, 0x0

    .line 398
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :goto_b
    return v1

    .restart local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_c
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback2;

    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback2;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    goto :goto_b
.end method

.method public getState()[I
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .prologue
    .line 628
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 895
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 896
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 897
    return-void
.end method

.method inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .registers 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 910
    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 349
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 350
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_9
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .prologue
    .line 554
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 1

    .prologue
    .line 485
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 726
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 653
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 366
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 367
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 369
    :cond_9
    return-void
.end method

.method public abstract setAlpha(I)V
.end method

.method public setBounds(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 139
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 141
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_d

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 145
    .restart local v0    # "oldBounds":Landroid/graphics/Rect;
    :cond_d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_27

    .line 147
    :cond_1d
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 150
    :cond_27
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 3
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 321
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 2
    .param p1, "configs"    # I

    .prologue
    .line 217
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 218
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 418
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 419
    return-void
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public setDither(Z)V
    .registers 2
    .param p1, "dither"    # Z

    .prologue
    .line 242
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 2
    .param p1, "filter"    # Z

    .prologue
    .line 250
    return-void
.end method

.method public final setLevel(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 514
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_b

    .line 515
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 516
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 518
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setState([I)Z
    .registers 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 462
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 463
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 464
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 466
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 545
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v1, p1, :cond_d

    const/4 v0, 0x1

    .line 546
    .local v0, "changed":Z
    :goto_5
    if-eqz v0, :cond_c

    .line 547
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 548
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 550
    :cond_c
    return v0

    .line 545
    .end local v0    # "changed":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 382
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 383
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 385
    :cond_9
    return-void
.end method
