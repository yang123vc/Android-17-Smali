.class Landroid/os/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 607
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/AsyncTask$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/AsyncTask$1;

    .prologue
    .line 607
    invoke-direct {p0}, Landroid/os/AsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 611
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncTask$AsyncTaskResult;

    .line 612
    .local v0, "result":Landroid/os/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 621
    :goto_9
    return-void

    .line 615
    :pswitch_a
    iget-object v1, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    iget-object v2, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # invokes: Landroid/os/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Landroid/os/AsyncTask;->access$600(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    .line 618
    :pswitch_15
    iget-object v1, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    iget-object v2, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_9

    .line 612
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
