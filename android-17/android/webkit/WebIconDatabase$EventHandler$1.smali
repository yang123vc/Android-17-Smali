.class Landroid/webkit/WebIconDatabase$EventHandler$1;
.super Landroid/os/Handler;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebIconDatabase$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebIconDatabase$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebIconDatabase$EventHandler;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_42

    .line 126
    :goto_5
    return-void

    .line 97
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkit/WebIconDatabase;->nativeOpen(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkit/WebIconDatabase;->access$100(Ljava/lang/String;)V

    goto :goto_5

    .line 101
    :pswitch_e
    # invokes: Landroid/webkit/WebIconDatabase;->nativeClose()V
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$200()V

    goto :goto_5

    .line 105
    :pswitch_12
    # invokes: Landroid/webkit/WebIconDatabase;->nativeRemoveAllIcons()V
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$300()V

    goto :goto_5

    .line 109
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebIconDatabase$IconListener;

    .line 110
    .local v0, "l":Landroid/webkit/WebIconDatabase$IconListener;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    # invokes: Landroid/webkit/WebIconDatabase$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    invoke-static {v2, v1, v0}, Landroid/webkit/WebIconDatabase$EventHandler;->access$400(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    goto :goto_5

    .line 115
    .end local v0    # "l":Landroid/webkit/WebIconDatabase$IconListener;
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_2b
    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    # invokes: Landroid/webkit/WebIconDatabase$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$500(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    goto :goto_5

    .line 119
    :pswitch_31
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkit/WebIconDatabase;->nativeRetainIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkit/WebIconDatabase;->access$600(Ljava/lang/String;)V

    goto :goto_5

    .line 123
    :pswitch_39
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkit/WebIconDatabase;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkit/WebIconDatabase;->access$700(Ljava/lang/String;)V

    goto :goto_5

    .line 95
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_31
        :pswitch_39
        :pswitch_2b
    .end packed-switch
.end method
