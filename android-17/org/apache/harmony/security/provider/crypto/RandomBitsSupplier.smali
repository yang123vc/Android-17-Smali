.class public Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;
.super Ljava/lang/Object;
.source "RandomBitsSupplier.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# static fields
.field private static final DEVICE_NAMES:[Ljava/lang/String;

.field private static fis:Ljava/io/FileInputStream;

.field private static randomFile:Ljava/io/File;

.field private static serviceAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 55
    sput-object v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->fis:Ljava/io/FileInputStream;

    .line 60
    sput-object v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    .line 65
    sput-boolean v7, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    .line 70
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "/dev/urandom"

    aput-object v6, v5, v7

    sput-object v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->DEVICE_NAMES:[Ljava/lang/String;

    .line 73
    sget-object v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->DEVICE_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_15
    if-ge v3, v4, :cond_33

    aget-object v1, v0, v3

    .line 75
    .local v1, "deviceName":Ljava/lang/String;
    :try_start_19
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 77
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->fis:Ljava/io/FileInputStream;

    .line 78
    sput-object v2, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    .line 79
    const/4 v5, 0x1

    sput-boolean v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_30} :catch_34

    .line 73
    .end local v2    # "file":Ljava/io/File;
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 84
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_33
    return-void

    .line 81
    .restart local v1    # "deviceName":Ljava/lang/String;
    :catch_34
    move-exception v5

    goto :goto_30
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomBits(I)[B
    .registers 3
    .param p0, "numBytes"    # I

    .prologue
    .line 149
    if-gtz p0, :cond_c

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_c
    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    if-nez v0, :cond_18

    .line 156
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "ATTENTION: service is not available : no random devices"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_18
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getUnixDeviceRandom(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUnixDeviceRandom(I)[B
    .registers 10
    .param p0, "numBytes"    # I

    .prologue
    .line 103
    const-class v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;

    monitor-enter v6

    :try_start_3
    new-array v0, p0, [B
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_34

    .line 105
    .local v0, "bytes":[B
    const/4 v4, 0x0

    .line 107
    .local v4, "total":I
    const/4 v3, 0x0

    .line 111
    .local v3, "offset":I
    :cond_7
    :try_start_7
    sget-object v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->fis:Ljava/io/FileInputStream;

    sub-int v7, p0, v4

    invoke-virtual {v5, v0, v3, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 116
    .local v1, "bytesRead":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_37

    .line 117
    new-instance v5, Ljava/security/ProviderException;

    const-string v7, "bytesRead == -1"

    invoke-direct {v5, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_34

    .line 127
    .end local v1    # "bytesRead":I
    :catch_1a
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    new-instance v5, Ljava/security/ProviderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ATTENTION: IOException in RandomBitsSupplier.getLinuxRandomBits(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_34

    .line 103
    .end local v0    # "bytes":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "offset":I
    .end local v4    # "total":I
    :catchall_34
    move-exception v5

    monitor-exit v6

    throw v5

    .line 120
    .restart local v0    # "bytes":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "offset":I
    .restart local v4    # "total":I
    :cond_37
    add-int/2addr v4, v1

    .line 121
    add-int/2addr v3, v1

    .line 123
    if-lt v4, p0, :cond_7

    .line 134
    monitor-exit v6

    return-object v0
.end method

.method static isServiceAvailable()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    return v0
.end method
