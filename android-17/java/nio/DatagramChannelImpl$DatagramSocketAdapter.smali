.class Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
.super Ljava/net/DatagramSocket;
.source "DatagramChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DatagramChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketAdapter"
.end annotation


# instance fields
.field private channelImpl:Ljava/nio/DatagramChannelImpl;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V
    .registers 3
    .param p1, "socketimpl"    # Ljava/net/DatagramSocketImpl;
    .param p2, "channelImpl"    # Ljava/nio/DatagramChannelImpl;

    .prologue
    .line 477
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 478
    iput-object p2, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    .line 479
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 541
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 543
    :cond_e
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 544
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 545
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 574
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    monitor-enter v1

    .line 575
    :try_start_3
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-eqz v0, :cond_10

    .line 577
    :try_start_b
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_18
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 582
    :cond_10
    :goto_10
    :try_start_10
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 583
    monitor-exit v1

    .line 584
    return-void

    .line 583
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v0

    .line 578
    :catch_18
    move-exception v0

    goto :goto_10
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 592
    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    .line 596
    :goto_5
    invoke-super {p0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 597
    return-void

    .line 593
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_8

    .line 511
    const/4 v0, 0x0

    .line 513
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_7
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_8

    .line 530
    const/4 v0, -0x1

    .line 532
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_7
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-boolean v0, v0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .registers 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 553
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 555
    :cond_e
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 556
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 564
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 566
    :cond_e
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 567
    return-void
.end method
