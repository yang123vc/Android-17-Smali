.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JI)V
    .registers 14
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "uid"    # I

    .prologue
    .line 54
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JII)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JII)V
    .registers 10
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "uid"    # I

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    .line 64
    iput-wide p3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    .line 66
    iput-object p5, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    .line 67
    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 68
    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    .line 69
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JII)V
    .registers 14
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "uid"    # I

    .prologue
    .line 58
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JII)V

    .line 59
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService$Vibration;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 73
    :try_start_7
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_22

    .line 75
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 78
    :cond_22
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .registers 8
    .param p1, "millis"    # J

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 93
    :cond_9
    :goto_9
    return v0

    .line 87
    :cond_a
    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iget-wide v3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_9

    .line 93
    const/4 v0, 0x1

    goto :goto_9
.end method
