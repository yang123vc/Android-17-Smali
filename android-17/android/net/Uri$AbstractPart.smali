.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$AbstractPart$Representation;
    }
.end annotation


# instance fields
.field volatile decoded:Ljava/lang/String;

.field volatile encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 2012
    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    .line 2013
    return-void
.end method


# virtual methods
.method final getDecoded()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2019
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    .line 2020
    .local v0, "hasDecoded":Z
    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    :goto_d
    return-object v1

    .line 2019
    .end local v0    # "hasDecoded":Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    .line 2020
    .restart local v0    # "hasDecoded":Z
    :cond_10
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_d
.end method

.method abstract getEncoded()Ljava/lang/String;
.end method

.method final writeTo(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2025
    iget-object v4, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_26

    move v1, v2

    .line 2028
    .local v1, "hasEncoded":Z
    :goto_b
    iget-object v4, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_28

    move v0, v2

    .line 2030
    .local v0, "hasDecoded":Z
    :goto_14
    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 2031
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2033
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2043
    :goto_25
    return-void

    .end local v0    # "hasDecoded":Z
    .end local v1    # "hasEncoded":Z
    :cond_26
    move v1, v3

    .line 2025
    goto :goto_b

    .restart local v1    # "hasEncoded":Z
    :cond_28
    move v0, v3

    .line 2028
    goto :goto_14

    .line 2034
    .restart local v0    # "hasDecoded":Z
    :cond_2a
    if-eqz v1, :cond_35

    .line 2035
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2036
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_25

    .line 2037
    :cond_35
    if-eqz v0, :cond_41

    .line 2038
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_25

    .line 2041
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither encoded nor decoded"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
