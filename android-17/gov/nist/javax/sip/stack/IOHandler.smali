.class Lgov/nist/javax/sip/stack/IOHandler;
.super Ljava/lang/Object;
.source "IOHandler.java"


# static fields
.field private static TCP:Ljava/lang/String;

.field private static TLS:Ljava/lang/String;


# instance fields
.field private ioSemaphore:Ljava/util/concurrent/Semaphore;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field private socketTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-string v0, "tcp"

    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    .line 69
    const-string v0, "tls"

    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 4
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    .line 81
    check-cast p1, Lgov/nist/javax/sip/SipStackImpl;

    .end local p1    # "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    iput-object p1, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    return-void
.end method

.method protected static makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 4
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeChunks(Ljava/io/OutputStream;[BI)V
    .registers 8
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p1

    .line 110
    const/16 v1, 0x2000

    .line 111
    .local v1, "chunksize":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_4
    if-ge v2, p3, :cond_13

    .line 112
    add-int v3, v2, v1

    if-ge v3, p3, :cond_10

    move v0, v1

    .line 113
    .local v0, "chunk":I
    :goto_b
    :try_start_b
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    add-int/2addr v2, v1

    goto :goto_4

    .line 112
    .end local v0    # "chunk":I
    :cond_10
    sub-int v0, p3, v2

    goto :goto_b

    .line 115
    :cond_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_18

    .line 116
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 117
    return-void

    .line 115
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v3
.end method


# virtual methods
.method public closeAll()V
    .registers 4

    .prologue
    .line 330
    iget-object v2, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "values":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/Socket;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 331
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 333
    .local v0, "s":Ljava/net/Socket;
    :try_start_12
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 334
    :catch_16
    move-exception v2

    goto :goto_6

    .line 338
    .end local v0    # "s":Ljava/net/Socket;
    :cond_18
    return-void
.end method

.method protected getSocket(Ljava/lang/String;)Ljava/net/Socket;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    return-object v0
.end method

.method public obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .registers 8
    .param p1, "dst"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p1, p2}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 139
    .local v0, "clientSock":Ljava/net/Socket;
    if-nez v0, :cond_17

    .line 140
    iget-object v2, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v1, v0}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    .line 145
    :cond_17
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    return-object v2
.end method

.method protected putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sock"    # Ljava/net/Socket;

    .prologue
    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method protected removeSocket(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;
    .registers 27
    .param p1, "senderAddress"    # Ljava/net/InetAddress;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "contactPort"    # I
    .param p4, "transport"    # Ljava/lang/String;
    .param p5, "bytes"    # [B
    .param p6, "retry"    # Z
    .param p7, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/16 v16, 0x0

    .line 163
    .local v16, "retry_count":I
    if-eqz p6, :cond_a4

    const/4 v14, 0x2

    .line 165
    .local v14, "max_retry":I
    :goto_5
    move-object/from16 v0, p5

    array-length v6, v0

    .line 166
    .local v6, "length":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendBytes "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " inAddr "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " port = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 171
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_77

    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLogStackTraceOnMessageSend()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 174
    :cond_77
    sget-object v4, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1e6

    .line 175
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, "key":Ljava/lang/String;
    :try_start_85
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v7, 0x2710

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v17

    .line 181
    .local v17, "retval":Z
    if-nez v17, :cond_a7

    .line 182
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not acquire IO Semaphore after 10 seconds -- giving up "

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9b
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_9b} :catch_9b

    .line 185
    .end local v17    # "retval":Z
    :catch_9b
    move-exception v11

    .line 186
    .local v11, "ex":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "exception in acquiring sem"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    .end local v6    # "length":I
    .end local v11    # "ex":Ljava/lang/InterruptedException;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "max_retry":I
    :cond_a4
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 188
    .restart local v6    # "length":I
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v14    # "max_retry":I
    .restart local v17    # "retval":Z
    :cond_a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v9

    .line 192
    .local v9, "clientSock":Ljava/net/Socket;
    :goto_ad
    move/from16 v0, v16

    if-ge v0, v14, :cond_11f

    .line 193
    if-nez v9, :cond_198

    .line 194
    :try_start_b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inaddr = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "port = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 204
    :cond_fd
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-interface {v4, v0, v1, v2}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljava/net/Socket;

    move-result-object v9

    .line 206
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 207
    .local v15, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_11f
    .catchall {:try_start_b3 .. :try_end_11f} :catchall_1dd

    .line 232
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    :cond_11f
    :goto_11f
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 235
    if-nez v9, :cond_344

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_171

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not connect to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 243
    :cond_171
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not connect to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_198
    :try_start_198
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 213
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1a3} :catch_1a5
    .catchall {:try_start_198 .. :try_end_1a3} :catchall_1dd

    goto/16 :goto_11f

    .line 215
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    :catch_1a5
    move-exception v11

    .line 216
    .local v11, "ex":Ljava/io/IOException;
    :try_start_1a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1d0

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException occured retryCount "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 221
    :cond_1d0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_1d5
    .catchall {:try_start_1a6 .. :try_end_1d5} :catchall_1dd

    .line 223
    :try_start_1d5
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1d8} :catch_345
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1dd

    .line 226
    :goto_1d8
    const/4 v9, 0x0

    .line 227
    add-int/lit8 v16, v16, 0x1

    .line 228
    goto/16 :goto_ad

    .line 232
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_1dd
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4

    .line 250
    .end local v9    # "clientSock":Ljava/net/Socket;
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "retval":Z
    :cond_1e6
    sget-object v4, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_31e

    .line 251
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v12

    .line 253
    .restart local v12    # "key":Ljava/lang/String;
    :try_start_1f4
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v7, 0x2710

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v17

    .line 254
    .restart local v17    # "retval":Z
    if-nez v17, :cond_213

    .line 255
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Timeout acquiring IO SEM"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_20a
    .catch Ljava/lang/InterruptedException; {:try_start_1f4 .. :try_end_20a} :catch_20a

    .line 256
    .end local v17    # "retval":Z
    :catch_20a
    move-exception v11

    .line 257
    .local v11, "ex":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "exception in acquiring sem"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    .end local v11    # "ex":Ljava/lang/InterruptedException;
    .restart local v17    # "retval":Z
    :cond_213
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v9

    .line 262
    .restart local v9    # "clientSock":Ljava/net/Socket;
    :goto_219
    move/from16 v0, v16

    if-ge v0, v14, :cond_2b6

    .line 263
    if-nez v9, :cond_2e6

    .line 264
    :try_start_21f
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_269

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inaddr = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "port = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 269
    :cond_269
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-interface {v4, v0, v1, v2}, Lgov/nist/core/net/NetworkLayer;->createSSLSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljavax/net/ssl/SSLSocket;

    move-result-object v9

    .line 271
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    .line 272
    .local v18, "sslsock":Ljavax/net/ssl/SSLSocket;
    new-instance v13, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-object/from16 v0, p7

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    move-object v4, v0

    invoke-direct {v13, v4}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 274
    .local v13, "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    check-cast p7, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .end local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 276
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 280
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 281
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    .line 282
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_2b6
    .catchall {:try_start_21f .. :try_end_2b6} :catchall_315

    .line 305
    .end local v13    # "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .end local v18    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_2b6
    :goto_2b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 307
    if-nez v9, :cond_344

    .line 308
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not connect to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    .restart local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_2e6
    :try_start_2e6
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 287
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_2f1
    .catch Ljava/io/IOException; {:try_start_2e6 .. :try_end_2f1} :catch_2f2
    .catchall {:try_start_2e6 .. :try_end_2f1} :catchall_315

    goto :goto_2b6

    .line 289
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    :catch_2f2
    move-exception v11

    .line 290
    .local v11, "ex":Ljava/io/IOException;
    :try_start_2f3
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_308

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    invoke-interface {v4, v11}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 294
    :cond_308
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_30d
    .catchall {:try_start_2f3 .. :try_end_30d} :catchall_315

    .line 296
    :try_start_30d
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_310
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_310} :catch_348
    .catchall {:try_start_30d .. :try_end_310} :catchall_315

    .line 299
    :goto_310
    const/4 v9, 0x0

    .line 300
    add-int/lit8 v16, v16, 0x1

    .line 301
    goto/16 :goto_219

    .line 305
    .end local v11    # "ex":Ljava/io/IOException;
    .end local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :catchall_315
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4

    .line 315
    .end local v9    # "clientSock":Ljava/net/Socket;
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "retval":Z
    .restart local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_31e
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v4

    invoke-interface {v4}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v10

    .line 316
    .local v10, "datagramSock":Ljava/net/DatagramSocket;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 317
    new-instance v3, Ljava/net/DatagramPacket;

    const/4 v5, 0x0

    move-object/from16 v4, p5

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 319
    .local v3, "dgPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v10, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 320
    invoke-virtual {v10}, Ljava/net/DatagramSocket;->close()V

    .line 321
    const/4 v9, 0x0

    .end local v3    # "dgPacket":Ljava/net/DatagramPacket;
    .end local v10    # "datagramSock":Ljava/net/DatagramSocket;
    .end local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_344
    return-object v9

    .line 224
    .restart local v9    # "clientSock":Ljava/net/Socket;
    .restart local v11    # "ex":Ljava/io/IOException;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v17    # "retval":Z
    .restart local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :catch_345
    move-exception v4

    goto/16 :goto_1d8

    .line 297
    :catch_348
    move-exception v4

    goto :goto_310
.end method
