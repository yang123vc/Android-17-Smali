.class public Landroid/webkit/WebSettings$AutoFillProfile;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoFillProfile"
.end annotation


# instance fields
.field private mAddressLine1:Ljava/lang/String;

.field private mAddressLine2:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mUniqueId:I

.field private mZipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "uniqueId"    # I
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "companyName"    # Ljava/lang/String;
    .param p5, "addressLine1"    # Ljava/lang/String;
    .param p6, "addressLine2"    # Ljava/lang/String;
    .param p7, "city"    # Ljava/lang/String;
    .param p8, "state"    # Ljava/lang/String;
    .param p9, "zipCode"    # Ljava/lang/String;
    .param p10, "country"    # Ljava/lang/String;
    .param p11, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mUniqueId:I

    .line 256
    iput-object p2, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mFullName:Ljava/lang/String;

    .line 257
    iput-object p3, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    .line 258
    iput-object p4, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    .line 259
    iput-object p5, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    .line 260
    iput-object p6, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    .line 261
    iput-object p7, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCity:Ljava/lang/String;

    .line 262
    iput-object p8, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mState:Ljava/lang/String;

    .line 263
    iput-object p9, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mZipCode:Ljava/lang/String;

    .line 264
    iput-object p10, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCountry:Ljava/lang/String;

    .line 265
    iput-object p11, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    .line 266
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mUniqueId:I

    return v0
.end method

.method public getZipCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mZipCode:Ljava/lang/String;

    return-object v0
.end method
