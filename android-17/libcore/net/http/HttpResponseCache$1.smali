.class Llibcore/net/http/HttpResponseCache$1;
.super Ljava/io/FilterInputStream;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/HttpResponseCache;->newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/HttpResponseCache;

.field final synthetic val$snapshot:Llibcore/io/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Llibcore/net/http/HttpResponseCache;Ljava/io/InputStream;Llibcore/io/DiskLruCache$Snapshot;)V
    .registers 4
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 123
    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$1;->this$0:Llibcore/net/http/HttpResponseCache;

    iput-object p3, p0, Llibcore/net/http/HttpResponseCache$1;->val$snapshot:Llibcore/io/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$1;->val$snapshot:Llibcore/io/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Snapshot;->close()V

    .line 126
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 127
    return-void
.end method
