.class Lorg/apache/xml/utils/SecuritySupport12$1;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/utils/SecuritySupport12;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/utils/SecuritySupport12;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/SecuritySupport12;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lorg/apache/xml/utils/SecuritySupport12$1;->this$0:Lorg/apache/xml/utils/SecuritySupport12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 53
    :goto_9
    return-object v0

    .line 52
    :catch_a
    move-exception v1

    goto :goto_9
.end method
