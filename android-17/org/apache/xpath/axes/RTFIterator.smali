.class public Lorg/apache/xpath/axes/RTFIterator;
.super Lorg/apache/xpath/NodeSetDTM;
.source "RTFIterator.java"


# static fields
.field static final serialVersionUID:J = 0x6a47192b9016f2e4L


# direct methods
.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .registers 3
    .param p1, "root"    # I
    .param p2, "manager"    # Lorg/apache/xml/dtm/DTMManager;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 41
    return-void
.end method
