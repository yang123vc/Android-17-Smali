.class final Ljavax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet$SecureIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TSST;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SET_Principal:I = 0x0

.field private static final SET_PrivCred:I = 0x1

.field private static final SET_PubCred:I = 0x2

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TSST;>;"
        }
    .end annotation
.end field

.field private transient permission:Ljavax/security/auth/AuthPermission;

.field private setType:I

.field final synthetic this$0:Ljavax/security/auth/Subject;


# direct methods
.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V
    .registers 4
    .param p2, "perm"    # Ljavax/security/auth/AuthPermission;

    .prologue
    .line 531
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 532
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    .line 533
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 534
    return-void
.end method

.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V
    .registers 8
    .param p2, "perm"    # Ljavax/security/auth/AuthPermission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/AuthPermission;",
            "Ljava/util/Collection",
            "<+TSST;>;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p3, "s":Ljava/util/Collection;, "Ljava/util/Collection<+TSST;>;"
    invoke-direct {p0, p1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    .line 543
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_2f

    const/4 v2, 0x1

    .line 545
    .local v2, "trust":Z
    :goto_e
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 546
    .local v1, "o":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, v1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 547
    if-nez v2, :cond_29

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 548
    :cond_29
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 543
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;, "TSST;"
    .end local v2    # "trust":Z
    :cond_2f
    const/4 v2, 0x0

    goto :goto_e

    .line 551
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "trust":Z
    :cond_31
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 679
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    packed-switch v2, :pswitch_data_38

    .line 690
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 681
    :pswitch_e
    # getter for: Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;
    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    .line 693
    :goto_14
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 694
    .local v0, "element":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, v0}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    goto :goto_1a

    .line 684
    .end local v0    # "element":Ljava/lang/Object;, "TSST;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_28
    # getter for: Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;
    invoke-static {}, Ljavax/security/auth/Subject;->access$200()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    goto :goto_14

    .line 687
    :pswitch_2f
    # getter for: Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;
    invoke-static {}, Ljavax/security/auth/Subject;->access$300()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    goto :goto_14

    .line 696
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_36
    return-void

    .line 679
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_e
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method private verifyElement(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 556
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    if-nez p1, :cond_8

    .line 557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 559
    :cond_8
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    # getter for: Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;
    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_24

    const-class v0, Ljava/security/Principal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Element is not instance of java.security.Principal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_24
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    # getter for: Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;
    invoke-static {}, Ljavax/security/auth/Subject;->access$200()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 702
    const/4 v0, 0x1

    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    .line 709
    :goto_b
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 710
    return-void

    .line 703
    :cond_f
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    # getter for: Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;
    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_b

    .line 706
    :cond_1b
    const/4 v0, 0x2

    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_b
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSST;)Z"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "o":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, p1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    # invokes: Ljavax/security/auth/Subject;->checkState()V
    invoke-static {v0}, Ljavax/security/auth/Subject;->access$100(Ljavax/security/auth/Subject;)V

    .line 575
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 576
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 577
    const/4 v0, 0x1

    .line 579
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected final get(Ljava/lang/Class;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-nez p1, :cond_8

    .line 627
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 630
    :cond_8
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$2;

    invoke-direct {v2, p0, p1}, Ljavax/security/auth/Subject$SecureSet$2;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V

    .line 667
    .local v2, "s":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 668
    .local v1, "o":Ljava/lang/Object;, "TSST;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 669
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 672
    .end local v1    # "o":Ljava/lang/Object;, "TSST;"
    :cond_2d
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    # getter for: Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;
    invoke-static {}, Ljavax/security/auth/Subject;->access$200()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 591
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$1;

    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$1;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 603
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;

    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    goto :goto_13
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_8

    .line 610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 612
    :cond_8
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 617
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
