.class final Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/WiredAccessoryObserver;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/WiredAccessoryObserver;
    .param p2, "x1"    # Lcom/android/server/WiredAccessoryObserver$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;->this$0:Lcom/android/server/WiredAccessoryObserver;

    # invokes: Lcom/android/server/WiredAccessoryObserver;->init()V
    invoke-static {v1}, Lcom/android/server/WiredAccessoryObserver;->access$100(Lcom/android/server/WiredAccessoryObserver;)V

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1a

    .line 89
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;->this$0:Lcom/android/server/WiredAccessoryObserver;

    # getter for: Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$200()[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 91
    :cond_1a
    return-void
.end method
