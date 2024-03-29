.class Landroid/speech/tts/TextToSpeechService$CallbackMap;
.super Landroid/os/RemoteCallbackList;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/speech/tts/ITextToSpeechCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppToCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/speech/tts/ITextToSpeechCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .registers 3

    .prologue
    .line 864
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 866
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "x1"    # Landroid/speech/tts/TextToSpeechService$1;

    .prologue
    .line 864
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    return-void
.end method

.method private getCallbackFor(Ljava/lang/String;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 934
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 935
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .line 936
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    monitor-exit v2

    .line 938
    return-object v0

    .line 936
    .end local v0    # "cb":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method


# virtual methods
.method public dispatchOnDone(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 885
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/String;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 886
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    .line 892
    :goto_6
    return-void

    .line 888
    :cond_7
    :try_start_7
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onDone(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 889
    :catch_b
    move-exception v1

    .line 890
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onDone failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public dispatchOnError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 906
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/String;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 907
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    .line 913
    :goto_6
    return-void

    .line 909
    :cond_7
    :try_start_7
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 910
    :catch_b
    move-exception v1

    .line 911
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onError failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public dispatchOnStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 895
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/String;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 896
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    .line 903
    :goto_6
    return-void

    .line 898
    :cond_7
    :try_start_7
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 899
    :catch_b
    move-exception v1

    .line 900
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onStart failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public kill()V
    .registers 3

    .prologue
    .line 926
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    monitor-enter v1

    .line 927
    :try_start_3
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 928
    invoke-super {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 929
    monitor-exit v1

    .line 930
    return-void

    .line 929
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/IInterface;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 864
    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V
    .registers 6
    .param p1, "callback"    # Landroid/speech/tts/ITextToSpeechCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 917
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 918
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 919
    :try_start_6
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_16

    .line 921
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/String;)I

    .line 922
    return-void

    .line 920
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setCallback(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .prologue
    .line 870
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 872
    if-eqz p2, :cond_19

    .line 873
    :try_start_5
    invoke-virtual {p0, p2, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 874
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .line 878
    .local v0, "old":Landroid/speech/tts/ITextToSpeechCallback;
    :goto_10
    if-eqz v0, :cond_17

    if-eq v0, p2, :cond_17

    .line 879
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->unregister(Landroid/os/IInterface;)Z

    .line 881
    :cond_17
    monitor-exit v2

    .line 882
    return-void

    .line 876
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :cond_19
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mAppToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .restart local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    goto :goto_10

    .line 881
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method
