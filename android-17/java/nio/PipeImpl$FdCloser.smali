.class Ljava/nio/PipeImpl$FdCloser;
.super Ljava/lang/Object;
.source "PipeImpl.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FdCloser"
.end annotation


# instance fields
.field private final fd:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljava/nio/PipeImpl$FdCloser;->fd:Ljava/io/FileDescriptor;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/io/FileDescriptor;
    .param p2, "x1"    # Ljava/nio/PipeImpl$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/nio/PipeImpl$FdCloser;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Ljava/nio/PipeImpl$FdCloser;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 67
    return-void
.end method
