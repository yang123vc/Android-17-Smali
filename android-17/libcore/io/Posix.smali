.class public final Llibcore/io/Posix;
.super Ljava/lang/Object;
.source "Posix.java"

# interfaces
.implements Llibcore/io/Os;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method private native pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method private native readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method private native recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method private native sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method private native writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method


# virtual methods
.method public native accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native access(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native chmod(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native environ()[Ljava/lang/String;
.end method

.method public native fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native fcntlLong(Ljava/io/FileDescriptor;IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native fcntlVoid(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native fdatasync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native fstatfs(Ljava/io/FileDescriptor;)Llibcore/io/StructStatFs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native fsync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native ftruncate(Ljava/io/FileDescriptor;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native gai_strerror(I)Ljava/lang/String;
.end method

.method public native getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/GaiException;
        }
    .end annotation
.end method

.method public native getegid()I
.end method

.method public native getenv(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native geteuid()I
.end method

.method public native getgid()I
.end method

.method public native getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/GaiException;
        }
    .end annotation
.end method

.method public native getpid()I
.end method

.method public native getppid()I
.end method

.method public native getpwnam(Ljava/lang/String;)Llibcore/io/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getpwuid(I)Llibcore/io/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptByte(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptTimeval(Ljava/io/FileDescriptor;II)Llibcore/io/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native getuid()I
.end method

.method public native if_indextoname(I)Ljava/lang/String;
.end method

.method public native inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
.end method

.method public native ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native ioctlInt(Ljava/io/FileDescriptor;ILlibcore/util/MutableInt;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native isatty(Ljava/io/FileDescriptor;)Z
.end method

.method public native kill(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native lseek(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native lstat(Ljava/lang/String;)Llibcore/io/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native mincore(JJ[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native mkdir(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native mlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native mmap(JJIILjava/io/FileDescriptor;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native msync(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native munlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native munmap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native pipe()[Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native poll([Llibcore/io/StructPollfd;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 87
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Llibcore/io/Posix;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    .line 89
    :goto_16
    return v0

    :cond_17
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v3, v0, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Llibcore/io/Posix;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    goto :goto_16
.end method

.method public pread(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct/range {p0 .. p6}, Llibcore/io/Posix;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 99
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Llibcore/io/Posix;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    .line 101
    :goto_16
    return v0

    :cond_17
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v3, v0, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Llibcore/io/Posix;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    goto :goto_16
.end method

.method public pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct/range {p0 .. p6}, Llibcore/io/Posix;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 111
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/io/Posix;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    .line 113
    :goto_12
    return v0

    :cond_13
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Llibcore/io/Posix;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_12
.end method

.method public read(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/io/Posix;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public native readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 124
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Llibcore/io/Posix;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    move-result v0

    .line 126
    :goto_17
    return v0

    :cond_18
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v3, v0, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Llibcore/io/Posix;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    move-result v0

    goto :goto_17
.end method

.method public recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct/range {p0 .. p6}, Llibcore/io/Posix;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public native remove(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native rename(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Llibcore/util/MutableLong;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 139
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Llibcore/io/Posix;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    move-result v0

    .line 141
    :goto_18
    return v0

    :cond_19
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v3, v0, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Llibcore/io/Posix;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    move-result v0

    goto :goto_18
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "inetAddress"    # Ljava/net/InetAddress;
    .param p7, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct/range {p0 .. p7}, Llibcore/io/Posix;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public native setegid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native seteuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setgid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptByte(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptGroupReq(Ljava/io/FileDescriptor;IILlibcore/io/StructGroupReq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptInt(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptLinger(Ljava/io/FileDescriptor;IILlibcore/io/StructLinger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native setuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native socket(III)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native stat(Ljava/lang/String;)Llibcore/io/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native strerror(I)Ljava/lang/String;
.end method

.method public native symlink(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public native sysconf(I)J
.end method

.method public native uname()Llibcore/io/StructUtsname;
.end method

.method public native waitpid(ILlibcore/util/MutableInt;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 171
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/io/Posix;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    .line 173
    :goto_12
    return v0

    :cond_13
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Llibcore/io/Posix;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_12
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/io/Posix;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public native writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method
