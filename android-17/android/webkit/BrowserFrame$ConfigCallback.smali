.class Landroid/webkit/BrowserFrame$ConfigCallback;
.super Ljava/lang/Object;
.source "BrowserFrame.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/BrowserFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigCallback"
.end annotation


# instance fields
.field private final mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;)V
    .registers 3
    .param p1, "wm"    # Landroid/view/WindowManager;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    .line 135
    iput-object p1, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mWindowManager:Landroid/view/WindowManager;

    .line 136
    return-void
.end method


# virtual methods
.method public declared-synchronized addHandler(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 147
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 187
    :goto_8
    return-void

    .line 150
    :cond_9
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v3

    .line 152
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_72

    .line 168
    :goto_16
    monitor-enter p0

    .line 171
    :try_start_17
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v1, "handlersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 174
    .local v5, "wh":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 175
    .local v0, "h":Landroid/os/Handler;
    if-eqz v0, :cond_55

    .line 176
    const/16 v6, 0x3ea

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_28

    .line 186
    .end local v0    # "h":Landroid/os/Handler;
    .end local v1    # "handlersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "wh":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :catchall_47
    move-exception v6

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_17 .. :try_end_49} :catchall_47

    throw v6

    .line 154
    :pswitch_4a
    const/16 v3, 0x5a

    .line 155
    goto :goto_16

    .line 157
    :pswitch_4d
    const/16 v3, 0xb4

    .line 158
    goto :goto_16

    .line 160
    :pswitch_50
    const/16 v3, -0x5a

    .line 161
    goto :goto_16

    .line 163
    :pswitch_53
    const/4 v3, 0x0

    .line 164
    goto :goto_16

    .line 179
    .restart local v0    # "h":Landroid/os/Handler;
    .restart local v1    # "handlersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "wh":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :cond_55
    :try_start_55
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 183
    .end local v0    # "h":Landroid/os/Handler;
    .end local v5    # "wh":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :cond_59
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 184
    .local v4, "weak":Ljava/lang/ref/WeakReference;
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 186
    .end local v4    # "weak":Ljava/lang/ref/WeakReference;
    :cond_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_47

    goto :goto_8

    .line 152
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
    .end packed-switch
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 189
    return-void
.end method
