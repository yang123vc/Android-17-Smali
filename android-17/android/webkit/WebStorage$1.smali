.class Landroid/webkit/WebStorage$1;
.super Landroid/os/Handler;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebStorage;->createUIHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebStorage;


# direct methods
.method constructor <init>(Landroid/webkit/WebStorage;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Landroid/webkit/WebStorage$1;->this$0:Landroid/webkit/WebStorage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 139
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_52

    .line 159
    :goto_5
    return-void

    .line 141
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    .line 142
    .local v3, "values":Ljava/util/Map;
    const-string/jumbo v4, "origins"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 143
    .local v2, "origins":Ljava/util/Map;
    const-string v4, "callback"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ValueCallback;

    .line 144
    .local v1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Map;>;"
    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 148
    .end local v1    # "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Map;>;"
    .end local v2    # "origins":Ljava/util/Map;
    .end local v3    # "values":Ljava/util/Map;
    :pswitch_1f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    .line 149
    .restart local v3    # "values":Ljava/util/Map;
    const-string v4, "callback"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 150
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    const-string/jumbo v4, "usage"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v0, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 154
    .end local v0    # "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    .end local v3    # "values":Ljava/util/Map;
    :pswitch_38
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    .line 155
    .restart local v3    # "values":Ljava/util/Map;
    const-string v4, "callback"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 156
    .restart local v0    # "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    const-string/jumbo v4, "quota"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v0, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 139
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1f
        :pswitch_38
    .end packed-switch
.end method
