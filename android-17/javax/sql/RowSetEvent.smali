.class public Ljavax/sql/RowSetEvent;
.super Ljava/util/EventObject;
.source "RowSetEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1a06f0a2ba3d3565L


# direct methods
.method public constructor <init>(Ljavax/sql/RowSet;)V
    .registers 2
    .param p1, "theSource"    # Ljavax/sql/RowSet;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
