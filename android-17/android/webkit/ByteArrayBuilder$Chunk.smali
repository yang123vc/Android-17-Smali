.class public Landroid/webkit/ByteArrayBuilder$Chunk;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ByteArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunk"
.end annotation


# instance fields
.field public mArray:[B

.field public mLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 138
    return-void
.end method


# virtual methods
.method public release()V
    .registers 5

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 145
    # getter for: Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_8
    # getter for: Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    # getter for: Landroid/webkit/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$100()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 149
    # getter for: Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v0
.end method
