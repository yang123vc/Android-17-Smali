.class Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;
.super Landroid/os/FileObserver;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordFileObserver"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 139
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 10
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    const-string v2, "gesture.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 144
    const-string v2, "LockPatternUtils"

    const-string v3, "lock pattern file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    # getter for: Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2c

    :goto_28
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    move v0, v1

    .line 145
    goto :goto_28

    .line 146
    :cond_2e
    const-string/jumbo v2, "password.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 147
    const-string v2, "LockPatternUtils"

    const-string v3, "lock password file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    # getter for: Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_57

    :goto_53
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2b

    :cond_57
    move v0, v1

    goto :goto_53
.end method
