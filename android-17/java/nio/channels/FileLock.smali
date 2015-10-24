.class public abstract Ljava/nio/channels/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final position:J

.field private final shared:Z

.field private final size:J


# direct methods
.method protected constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    cmp-long v0, p2, v2

    if-ltz v0, :cond_13

    cmp-long v0, p4, v2

    if-ltz v0, :cond_13

    add-long v0, p2, p4

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 101
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 103
    :cond_19
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/FileChannel;

    .line 104
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 105
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    .line 106
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    .line 107
    return-void
.end method


# virtual methods
.method public final channel()Ljava/nio/channels/FileChannel;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public final isShared()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final overlaps(JJ)Z
    .registers 15
    .param p1, "start"    # J
    .param p3, "length"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 158
    iget-wide v4, p0, Ljava/nio/channels/FileLock;->position:J

    iget-wide v6, p0, Ljava/nio/channels/FileLock;->size:J

    add-long/2addr v4, v6

    sub-long v0, v4, v8

    .line 159
    .local v0, "end":J
    add-long v4, p1, p3

    sub-long v2, v4, v8

    .line 160
    .local v2, "newEnd":J
    cmp-long v4, v0, p1

    if-ltz v4, :cond_17

    iget-wide v4, p0, Ljava/nio/channels/FileLock;->position:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_19

    .line 161
    :cond_17
    const/4 v4, 0x0

    .line 163
    :goto_18
    return v4

    :cond_19
    const/4 v4, 0x1

    goto :goto_18
.end method

.method public final position()J
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    return-wide v0
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final size()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->size:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileLock[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/nio/channels/FileLock;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/nio/channels/FileLock;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/nio/channels/FileLock;->shared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
