.class public abstract Ljava/net/CookieHandler;
.super Ljava/lang/Object;
.source "CookieHandler.java"


# static fields
.field private static systemWideCookieHandler:Ljava/net/CookieHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljava/net/CookieHandler;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Ljava/net/CookieHandler;->systemWideCookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public static setDefault(Ljava/net/CookieHandler;)V
    .registers 1
    .param p0, "cHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 41
    sput-object p0, Ljava/net/CookieHandler;->systemWideCookieHandler:Ljava/net/CookieHandler;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/net/URI;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
