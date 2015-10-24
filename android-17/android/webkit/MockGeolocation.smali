.class public final Landroid/webkit/MockGeolocation;
.super Ljava/lang/Object;
.source "MockGeolocation.java"


# static fields
.field private static sMockGeolocation:Landroid/webkit/MockGeolocation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/MockGeolocation;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Landroid/webkit/MockGeolocation;->sMockGeolocation:Landroid/webkit/MockGeolocation;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Landroid/webkit/MockGeolocation;

    invoke-direct {v0}, Landroid/webkit/MockGeolocation;-><init>()V

    sput-object v0, Landroid/webkit/MockGeolocation;->sMockGeolocation:Landroid/webkit/MockGeolocation;

    .line 53
    :cond_b
    sget-object v0, Landroid/webkit/MockGeolocation;->sMockGeolocation:Landroid/webkit/MockGeolocation;

    return-object v0
.end method

.method private static native nativeSetError(ILjava/lang/String;)V
.end method

.method private static native nativeSetPosition(DDD)V
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1, p2}, Landroid/webkit/MockGeolocation;->nativeSetError(ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public setPosition(DDD)V
    .registers 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "accuracy"    # D

    .prologue
    .line 34
    invoke-static/range {p1 .. p6}, Landroid/webkit/MockGeolocation;->nativeSetPosition(DDD)V

    .line 35
    return-void
.end method
