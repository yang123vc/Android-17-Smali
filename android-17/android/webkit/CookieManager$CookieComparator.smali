.class final Landroid/webkit/CookieManager$CookieComparator;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/webkit/CookieManager$Cookie;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/CookieManager$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/webkit/CookieManager$1;

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/webkit/CookieManager$CookieComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/webkit/CookieManager$Cookie;Landroid/webkit/CookieManager$Cookie;)I
    .registers 6
    .param p1, "cookie1"    # Landroid/webkit/CookieManager$Cookie;
    .param p2, "cookie2"    # Landroid/webkit/CookieManager$Cookie;

    .prologue
    .line 216
    iget-object v1, p2, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 217
    .local v0, "diff":I
    if-eqz v0, :cond_12

    move v1, v0

    .line 237
    :goto_11
    return v1

    .line 219
    :cond_12
    iget-object v1, p2, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 220
    if-eqz v0, :cond_24

    move v1, v0

    goto :goto_11

    .line 224
    :cond_24
    iget-object v1, p2, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 227
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 228
    const/4 v1, -0x1

    goto :goto_11

    .line 230
    :cond_2e
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v1, :cond_34

    .line 233
    const/4 v1, 0x1

    goto :goto_11

    .line 237
    :cond_34
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_11
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p1, Landroid/webkit/CookieManager$Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/webkit/CookieManager$Cookie;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/webkit/CookieManager$CookieComparator;->compare(Landroid/webkit/CookieManager$Cookie;Landroid/webkit/CookieManager$Cookie;)I

    move-result v0

    return v0
.end method
