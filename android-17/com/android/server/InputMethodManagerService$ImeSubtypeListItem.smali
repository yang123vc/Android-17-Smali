.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListItem"
.end annotation


# instance fields
.field public final mImeName:Ljava/lang/CharSequence;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field public final mSubtypeId:I

.field public final mSubtypeName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;I)V
    .registers 5
    .param p1, "imeName"    # Ljava/lang/CharSequence;
    .param p2, "subtypeName"    # Ljava/lang/CharSequence;
    .param p3, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "subtypeId"    # I

    .prologue
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2297
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 2298
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 2299
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 2300
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    .line 2301
    return-void
.end method
