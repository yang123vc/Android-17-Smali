.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final FLAGS_RESERVED:I = -0x2

.field static final FLAGS_TO_CLEAR_ON_COPY_FROM:I = -0x1

.field static final FLAG_IN_USE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static sPool:Landroid/os/Message;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field flags:I

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field public replyTo:Landroid/os/Messenger;

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 425
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Landroid/os/Message;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .registers 3

    .prologue
    .line 110
    sget-object v2, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_3
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_18

    .line 112
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 113
    .local v0, "m":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 114
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 115
    sget v1, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/Message;->sPoolSize:I

    .line 116
    monitor-exit v2

    .line 119
    .end local v0    # "m":Landroid/os/Message;
    :goto_17
    return-object v0

    .line 118
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 119
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    goto :goto_17

    .line 118
    .restart local v0    # "m":Landroid/os/Message;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .registers 2
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 153
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .registers 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 181
    iput p1, v0, Landroid/os/Message;->what:I

    .line 183
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .registers 5
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 216
    iput p1, v0, Landroid/os/Message;->what:I

    .line 217
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 218
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 220
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 238
    iput p1, v0, Landroid/os/Message;->what:I

    .line 239
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 240
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 241
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 197
    iput p1, v0, Landroid/os/Message;->what:I

    .line 198
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 166
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 168
    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p0, "orig"    # Landroid/os/Message;

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "m":Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 132
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 133
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 135
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_25

    .line 136
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 138
    :cond_25
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 139
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 141
    return-object v0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 476
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 477
    return-void
.end method


# virtual methods
.method clearForRecycle()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 367
    iput v0, p0, Landroid/os/Message;->flags:I

    .line 368
    iput v0, p0, Landroid/os/Message;->what:I

    .line 369
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 370
    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 371
    iput-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    iput-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 374
    iput-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 375
    iput-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 376
    iput-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 377
    return-void
.end method

.method public copyFrom(Landroid/os/Message;)V
    .registers 3
    .param p1, "o"    # Landroid/os/Message;

    .prologue
    .line 269
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 270
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 271
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 272
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 276
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_29

    .line 277
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 281
    :goto_28
    return-void

    .line 279
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_28
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 331
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 334
    :cond_b
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public getWhen()J
    .registers 3

    .prologue
    .line 287
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method isInUse()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 380
    iget v1, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method markInUse()V
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 385
    return-void
.end method

.method public peekData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/os/Message;->clearForRecycle()V

    .line 254
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_6
    sget v0, Landroid/os/Message;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_18

    .line 256
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 257
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 258
    sget v0, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 260
    :cond_18
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public sendToTarget()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 355
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 356
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .registers 2
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 291
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, " when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 405
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_29

    .line 406
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    :cond_29
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_37

    .line 411
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    :cond_37
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_45

    .line 416
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    :cond_45
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 443
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_c

    .line 444
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal callbacks across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_c
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_43

    .line 452
    :try_start_1f
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 453
    .local v1, "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_2a} :catch_3a

    .line 462
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_2a
    iget-wide v2, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 463
    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 464
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 465
    return-void

    .line 455
    :catch_3a
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_43
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a
.end method
