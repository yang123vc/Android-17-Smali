.class public final Llibcore/io/StructPasswd;
.super Ljava/lang/Object;
.source "StructPasswd.java"


# instance fields
.field public pw_dir:Ljava/lang/String;

.field public pw_gid:I

.field public pw_name:Ljava/lang/String;

.field public pw_shell:Ljava/lang/String;

.field public pw_uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw_name"    # Ljava/lang/String;
    .param p2, "pw_uid"    # I
    .param p3, "pw_gid"    # I
    .param p4, "pw_dir"    # Ljava/lang/String;
    .param p5, "pw_shell"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Llibcore/io/StructPasswd;->pw_name:Ljava/lang/String;

    .line 33
    iput p2, p0, Llibcore/io/StructPasswd;->pw_uid:I

    .line 34
    iput p3, p0, Llibcore/io/StructPasswd;->pw_gid:I

    .line 35
    iput-object p4, p0, Llibcore/io/StructPasswd;->pw_dir:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Llibcore/io/StructPasswd;->pw_shell:Ljava/lang/String;

    .line 37
    return-void
.end method
