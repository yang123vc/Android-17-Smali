.class Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;
.super Ljava/util/TreeMap$BoundedMap$BoundedIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<TK;TV;>.BoundedMap.BoundedIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$BoundedMap$BoundedKeySet;Ljava/util/TreeMap$Node;)V
    .registers 4

    .prologue
    .line 1544
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;, "Ljava/util/TreeMap$BoundedMap$BoundedKeySet.1;"
    .local p2, "x0":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;->this$2:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    iget-object v0, p1, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-direct {p0, v0, p2}, Ljava/util/TreeMap$BoundedMap$BoundedIterator;-><init>(Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1546
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;, "Ljava/util/TreeMap$BoundedMap$BoundedKeySet.1;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;->this$2:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    iget-object v0, v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    # getter for: Ljava/util/TreeMap$BoundedMap;->ascending:Z
    invoke-static {v0}, Ljava/util/TreeMap$BoundedMap;->access$800(Ljava/util/TreeMap$BoundedMap;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;->stepForward()Ljava/util/TreeMap$Node;

    move-result-object v0

    :goto_e
    iget-object v0, v0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    return-object v0

    :cond_11
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;->stepBackward()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_e
.end method
