.class public Landroid/webkit/WebView$HitTestResult;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HitTestResult"
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_ANCHOR_TYPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 1003
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 1005
    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/webkit/WebView$HitTestResult;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 956
    invoke-direct {p0, p1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/WebView$HitTestResult;)I
    .registers 2
    .param p0, "x0"    # Landroid/webkit/WebView$HitTestResult;

    .prologue
    .line 956
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebView$HitTestResult;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkit/WebView$HitTestResult;
    .param p1, "x1"    # I

    .prologue
    .line 956
    invoke-direct {p0, p1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    return-void
.end method

.method private setExtra(Ljava/lang/String;)V
    .registers 2
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 1012
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    .line 1013
    return-void
.end method

.method private setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 1008
    iput p1, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 1009
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 1016
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method
