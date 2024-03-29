.class public Landroid/hardware/usb/UsbAccessory;
.super Ljava/lang/Object;
.source "UsbAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UsbAccessory"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mManufacturer:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 182
    new-instance v0, Landroid/hardware/usb/UsbAccessory$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbAccessory$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "serial"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 79
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 80
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 81
    const/4 v0, 0x4

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 145
    :goto_5
    return v0

    .line 144
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 145
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 150
    instance-of v2, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_51

    move-object v0, p1

    .line 151
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 152
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v1, 0x1

    .line 159
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_51
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_24

    move v0, v1

    :goto_6
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    if-nez v2, :cond_2b

    move v2, v1

    :goto_b
    xor-int/2addr v2, v0

    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_32

    move v0, v1

    :goto_11
    xor-int/2addr v2, v0

    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    if-nez v0, :cond_39

    move v0, v1

    :goto_17
    xor-int/2addr v2, v0

    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    if-nez v0, :cond_40

    move v0, v1

    :goto_1d
    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    if-nez v2, :cond_47

    :goto_22
    xor-int/2addr v0, v1

    return v0

    :cond_24
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_2b
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_32
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_11

    :cond_39
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_17

    :cond_40
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1d

    :cond_47
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAccessory[mManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 204
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return-void
.end method
