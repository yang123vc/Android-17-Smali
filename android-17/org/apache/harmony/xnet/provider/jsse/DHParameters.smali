.class public Lorg/apache/harmony/xnet/provider/jsse/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"


# static fields
.field private static prime:[B

.field private static prime512:[B

.field private static primeGroup1:[B

.field private static primeGroup2:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime512:[B

    .line 43
    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->primeGroup1:[B

    .line 66
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_78

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->primeGroup2:[B

    .line 98
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime512:[B

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime:[B

    .line 99
    return-void

    .line 26
    :array_20
    .array-data 1
        -0xbt
        0x2at
        -0x1t
        0x3ct
        -0x1ft
        -0x4ft
        0x29t
        0x40t
        0x18t
        0x11t
        -0x73t
        0x7ct
        -0x7ct
        -0x59t
        0xat
        0x72t
        -0x2at
        -0x7at
        -0x3ct
        0x3t
        0x19t
        -0x38t
        0x7t
        0x29t
        0x7at
        -0x36t
        -0x6bt
        0xct
        -0x27t
        -0x6at
        -0x61t
        -0x55t
        -0x30t
        0xat
        0x50t
        -0x65t
        0x2t
        0x46t
        -0x2dt
        0x8t
        0x3dt
        0x66t
        -0x5ct
        0x5dt
        0x41t
        -0x61t
        -0x64t
        0x7ct
        -0x43t
        -0x77t
        0x4bt
        0x22t
        0x19t
        0x26t
        -0x46t
        -0x55t
        -0x5et
        0x5et
        -0x3dt
        0x55t
        -0x17t
        0x2at
        0x5t
        0x5ft
    .end array-data

    .line 43
    :array_44
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x3at
        0x36t
        0x20t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 66
    :array_78
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1at
        0x53t
        -0x7ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrime()[B
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime:[B

    return-object v0
.end method
