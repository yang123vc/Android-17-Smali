.class public Lcom/android/org/bouncycastle/openssl/EncryptionException;
.super Ljava/io/IOException;
.source "EncryptionException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/EncryptionException;->cause:Ljava/lang/Throwable;

    .line 19
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/EncryptionException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
