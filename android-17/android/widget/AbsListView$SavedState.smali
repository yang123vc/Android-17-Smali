.class Landroid/widget/AbsListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/AbsListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkIdState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field checkState:Landroid/util/SparseBooleanArray;

.field checkedItemCount:I

.field filter:Ljava/lang/String;

.field firstId:J

.field height:I

.field inActionMode:Z

.field position:I

.field selectedId:J

.field viewTop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1490
    new-instance v0, Landroid/widget/AbsListView$SavedState$1;

    invoke-direct {v0}, Landroid/widget/AbsListView$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/AbsListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1437
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1438
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1443
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_60

    const/4 v5, 0x1

    :goto_2e
    iput-boolean v5, p0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1447
    .local v0, "N":I
    if-lez v0, :cond_62

    .line 1448
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v5, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    if-ge v1, v0, :cond_62

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1451
    .local v2, "key":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1452
    .local v4, "value":I
    iget-object v5, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1449
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 1443
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "key":J
    .end local v4    # "value":I
    :cond_60
    const/4 v5, 0x0

    goto :goto_2e

    .line 1455
    .restart local v0    # "N":I
    :cond_62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/AbsListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 1413
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1429
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1430
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsListView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/AbsListView$SavedState;->firstId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView$SavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView$SavedState;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 1459
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1460
    iget-wide v4, p0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1461
    iget-wide v4, p0, Landroid/widget/AbsListView$SavedState;->firstId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1462
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->position:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->height:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1466
    iget-boolean v2, p0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    :goto_27
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1467
    iget v2, p0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1469
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_62

    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1470
    .local v0, "N":I
    :goto_3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    if-ge v1, v0, :cond_64

    .line 1472
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1473
    iget-object v2, p0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_60
    move v2, v3

    .line 1466
    goto :goto_27

    :cond_62
    move v0, v3

    .line 1469
    goto :goto_3f

    .line 1475
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_64
    return-void
.end method
