.class Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field private final checked:Z

.field final drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Z)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "checked"    # Z

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->account:Landroid/accounts/Account;

    .line 427
    iput-object p2, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 428
    iput-boolean p3, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->checked:Z

    .line 429
    return-void
.end method

.method static synthetic access$200(Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;)Z
    .registers 2
    .param p0, "x0"    # Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;

    .prologue
    .line 420
    iget-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->checked:Z

    return v0
.end method
