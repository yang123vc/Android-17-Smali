.class public final Llibcore/io/StructAddrinfo;
.super Ljava/lang/Object;
.source "StructAddrinfo.java"


# instance fields
.field public ai_addr:Ljava/net/InetAddress;

.field public ai_family:I

.field public ai_flags:I

.field public ai_next:Llibcore/io/StructAddrinfo;

.field public ai_protocol:I

.field public ai_socktype:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
