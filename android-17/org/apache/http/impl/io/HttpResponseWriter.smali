.class public Lorg/apache/http/impl/io/HttpResponseWriter;
.super Lorg/apache/http/impl/io/AbstractMessageWriter;
.source "HttpResponseWriter.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/io/AbstractMessageWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .registers 6
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    iget-object v2, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1    # "message":Lorg/apache/http/HttpMessage;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 56
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 57
    return-void
.end method
