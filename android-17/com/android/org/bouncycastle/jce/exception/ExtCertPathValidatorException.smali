.class public Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
.super Ljava/security/cert/CertPathValidatorException;
.source "ExtCertPathValidatorException.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 23
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    .line 24
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
