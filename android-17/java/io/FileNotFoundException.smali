.class public Ljava/io/FileNotFoundException;
.super Ljava/io/IOException;
.source "FileNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = -0xc75d4291fde951cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
