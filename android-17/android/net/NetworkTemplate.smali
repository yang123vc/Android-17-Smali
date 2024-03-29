.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_USAGE_NETWORK_TYPES:[I

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2

.field public static final MATCH_MOBILE_4G:I = 0x3

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_WIFI:I = 0x4


# instance fields
.field private final mMatchRule:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    .line 267
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 113
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/NetworkTemplate$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .registers 2
    .param p0, "matchRule"    # I

    .prologue
    .line 251
    packed-switch p0, :pswitch_data_16

    .line 263
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 253
    :pswitch_6
    const-string v0, "MOBILE_3G_LOWER"

    goto :goto_5

    .line 255
    :pswitch_9
    const-string v0, "MOBILE_4G"

    goto :goto_5

    .line 257
    :pswitch_c
    const-string v0, "MOBILE_ALL"

    goto :goto_5

    .line 259
    :pswitch_f
    const-string v0, "WIFI"

    goto :goto_5

    .line 261
    :pswitch_12
    const-string v0, "ETHERNET"

    goto :goto_5

    .line 251
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
        :pswitch_9
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 244
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v0, 0x1

    .line 188
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 192
    :cond_6
    :goto_6
    return v0

    :cond_7
    sget-object v1, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v2, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_1b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v0, 0x0

    .line 201
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 211
    :cond_6
    :goto_6
    return v0

    .line 203
    :cond_7
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 204
    iget v1, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    goto :goto_6

    .line 208
    :pswitch_17
    const/4 v0, 0x1

    goto :goto_6

    .line 204
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private matchesMobile4g(Landroid/net/NetworkIdentity;)Z
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v0, 0x1

    .line 218
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 227
    :goto_6
    :pswitch_6
    return v0

    .line 221
    :cond_7
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 222
    iget v1, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 227
    :cond_16
    const/4 v0, 0x0

    goto :goto_6

    .line 222
    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v0, 0x1

    .line 234
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    if-ne v1, v0, :cond_6

    .line 237
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 146
    instance-of v2, p1, Landroid/net/NetworkTemplate;

    if-eqz v2, :cond_19

    move-object v0, p1

    .line 147
    check-cast v0, Landroid/net/NetworkTemplate;

    .line 148
    .local v0, "other":Landroid/net/NetworkTemplate;
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    .line 151
    .end local v0    # "other":Landroid/net/NetworkTemplate;
    :cond_19
    return v1
.end method

.method public getMatchRule()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 168
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    packed-switch v0, :pswitch_data_28

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown network template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :pswitch_e
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    .line 178
    :goto_12
    return v0

    .line 172
    :pswitch_13
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_12

    .line 174
    :pswitch_18
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile4g(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_12

    .line 176
    :pswitch_1d
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_12

    .line 178
    :pswitch_22
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_12

    .line 168
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_e
        :pswitch_13
        :pswitch_18
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 134
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "scrubSubscriberId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkTemplate: matchRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscriberId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
