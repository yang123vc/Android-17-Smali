.class public final Landroid/nfc/NdefMessage;
.super Ljava/lang/Object;
.source "NdefMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t


# instance fields
.field private final mRecords:[Landroid/nfc/NdefRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Landroid/nfc/NdefMessage$1;

    invoke-direct {v0}, Landroid/nfc/NdefMessage$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    .line 45
    invoke-direct {p0, p1}, Landroid/nfc/NdefMessage;->parseNdefMessage([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 46
    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "Error while parsing NDEF message"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_15
    return-void
.end method

.method public constructor <init>([Landroid/nfc/NdefRecord;)V
    .registers 5
    .param p1, "records"    # [Landroid/nfc/NdefRecord;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    array-length v0, p1

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    iput-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    .line 55
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-void
.end method

.method private native parseNdefMessage([B)I
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getRecords()[Landroid/nfc/NdefRecord;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-virtual {v0}, [Landroid/nfc/NdefRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method public toByteArray()[B
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v4, v4

    if-nez v4, :cond_d

    .line 74
    :cond_a
    new-array v1, v6, [B

    .line 102
    :cond_c
    return-object v1

    .line 76
    :cond_d
    new-array v1, v6, [B

    .line 78
    .local v1, "msg":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v4, v4

    if-ge v0, v4, :cond_c

    .line 79
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toByteArray()[B

    move-result-object v2

    .line 80
    .local v2, "record":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 83
    .local v3, "tmp":[B
    if-nez v0, :cond_46

    .line 84
    aget-byte v4, v2, v6

    or-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 90
    :goto_2b
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_4e

    .line 91
    aget-byte v4, v2, v6

    or-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 96
    :goto_39
    array-length v4, v1

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length v4, v1

    array-length v5, v2

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    move-object v1, v3

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 86
    :cond_46
    aget-byte v4, v2, v6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    goto :goto_2b

    .line 93
    :cond_4e
    aget-byte v4, v2, v6

    and-int/lit8 v4, v4, -0x41

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    goto :goto_39
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 112
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 114
    return-void
.end method
