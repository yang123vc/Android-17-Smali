.class Lcom/android/server/am/ActivityManagerService$1;
.super Lcom/android/server/IntentResolver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/am/BroadcastFilter;",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .param p1, "x0"    # Landroid/content/IntentFilter;
    .param p2, "x1"    # Ljava/util/List;

    .prologue
    .line 492
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$1;->allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .registers 6
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 496
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    iget-object v2, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 497
    .local v1, "target":Landroid/os/IBinder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_25

    .line 498
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    iget-object v2, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, v1, :cond_22

    .line 499
    const/4 v2, 0x0

    .line 502
    :goto_21
    return v2

    .line 497
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 502
    :cond_25
    const/4 v2, 0x1

    goto :goto_21
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .registers 3
    .param p1, "x0"    # Landroid/content/IntentFilter;

    .prologue
    .line 492
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$1;->packageForFilter(Lcom/android/server/am/BroadcastFilter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Lcom/android/server/am/BroadcastFilter;)Ljava/lang/String;
    .registers 3
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .prologue
    .line 507
    iget-object v0, p1, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    return-object v0
.end method
