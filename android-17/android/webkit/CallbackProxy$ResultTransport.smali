.class Landroid/webkit/CallbackProxy$ResultTransport;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Landroid/webkit/CallbackProxy$ResultTransport;, "Landroid/webkit/CallbackProxy$ResultTransport<TE;>;"
    .local p1, "defaultResult":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/webkit/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;

    .line 137
    return-void
.end method


# virtual methods
.method public declared-synchronized getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Landroid/webkit/CallbackProxy$ResultTransport;, "Landroid/webkit/CallbackProxy$ResultTransport<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Landroid/webkit/CallbackProxy$ResultTransport;, "Landroid/webkit/CallbackProxy$ResultTransport<TE;>;"
    .local p1, "result":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
