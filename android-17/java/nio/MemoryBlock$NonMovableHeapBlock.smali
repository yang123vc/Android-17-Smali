.class Ljava/nio/MemoryBlock$NonMovableHeapBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonMovableHeapBlock"
.end annotation


# instance fields
.field private array:[B


# direct methods
.method private constructor <init>([BIJ)V
    .registers 6
    .param p1, "array"    # [B
    .param p2, "address"    # I
    .param p3, "byteCount"    # J

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/nio/MemoryBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    .line 68
    iput-object p1, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    .line 69
    return-void
.end method

.method synthetic constructor <init>([BIJLjava/nio/MemoryBlock$1;)V
    .registers 6
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BIJ)V

    return-void
.end method


# virtual methods
.method public array()[B
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    return-object v0
.end method

.method public free()V
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->address:I

    .line 78
    return-void
.end method
