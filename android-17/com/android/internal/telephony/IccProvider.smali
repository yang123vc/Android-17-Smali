.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 325
    const/4 v7, 0x0

    .line 333
    .local v7, "success":Z
    :try_start_1
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 335
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1a

    .line 336
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v7

    .line 345
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1a
    :goto_1a
    return v7

    .line 341
    :catch_1b
    move-exception v1

    goto :goto_1a

    .line 339
    :catch_1d
    move-exception v1

    goto :goto_1a
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v7, 0x0

    .line 381
    .local v7, "success":Z
    :try_start_1
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 383
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1a

    .line 384
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v7

    .line 393
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1a
    :goto_1a
    return v7

    .line 389
    :catch_1b
    move-exception v1

    goto :goto_1a

    .line 387
    :catch_1d
    move-exception v1

    goto :goto_1a
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .registers 9
    .param p1, "efType"    # I

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_1
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 295
    .local v4, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_12

    .line 296
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_11} :catch_3d

    move-result-object v1

    .line 304
    .end local v4    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_12
    :goto_12
    if-eqz v1, :cond_2e

    .line 306
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 307
    .local v0, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 309
    .local v2, "cursor":Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v0, :cond_3c

    .line 310
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 315
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    :cond_2e
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_3c
    return-object v2

    .line 300
    :catch_3d
    move-exception v5

    goto :goto_12

    .line 298
    :catch_3f
    move-exception v5

    goto :goto_12
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .registers 15
    .param p1, "record"    # Lcom/android/internal/telephony/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_45

    .line 404
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/Object;

    .line 405
    .local v2, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, "number":Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 410
    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 412
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "emails":[Ljava/lang/String;
    if-eqz v5, :cond_3b

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v4, "emailString":Ljava/lang/StringBuilder;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_25
    if-ge v6, v7, :cond_34

    aget-object v3, v1, v6

    .line 417
    .local v3, "email":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 420
    .end local v3    # "email":Ljava/lang/String;
    :cond_34
    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 422
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "emailString":Ljava/lang/StringBuilder;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3b
    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v9

    .line 423
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 425
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v2    # "contact":[Ljava/lang/Object;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    :cond_45
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 428
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 167
    .local v0, "len":I
    move-object v1, p1

    .line 169
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1d

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1d

    .line 170
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_1d
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v7, 0x0

    .line 357
    .local v7, "success":Z
    :try_start_1
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 359
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_18

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 360
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_17} :catch_19

    move-result v7

    .line 369
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_18
    :goto_18
    return v7

    .line 365
    :catch_19
    move-exception v1

    goto :goto_18

    .line 363
    :catch_1b
    move-exception v1

    goto :goto_18
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 21
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 182
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 183
    .local v8, "match":I
    packed-switch v8, :pswitch_data_ca

    .line 193
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot insert into URL: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :pswitch_26
    const/16 v2, 0x6f3a

    .line 198
    .local v2, "efType":I
    :goto_28
    const/4 v3, 0x0

    .line 199
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 200
    .local v4, "number":Ljava/lang/String;
    const/4 v5, 0x0

    .line 201
    .local v5, "emails":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 203
    .local v6, "pin2":Ljava/lang/String;
    const-string v1, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 204
    .local v13, "tokens":[Ljava/lang/String;
    array-length v9, v13

    .line 206
    .local v9, "n":I
    :cond_35
    :goto_35
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_aa

    .line 207
    aget-object v11, v13, v9

    .line 210
    .local v11, "param":Ljava/lang/String;
    const-string v1, "="

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "pair":[Ljava/lang/String;
    array-length v1, v10

    const/4 v15, 0x2

    if-eq v1, v15, :cond_62

    .line 213
    const-string v1, "IccProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 189
    .end local v2    # "efType":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v6    # "pin2":Ljava/lang/String;
    .end local v9    # "n":I
    .end local v10    # "pair":[Ljava/lang/String;
    .end local v11    # "param":Ljava/lang/String;
    .end local v13    # "tokens":[Ljava/lang/String;
    :pswitch_5f
    const/16 v2, 0x6f3b

    .line 190
    .restart local v2    # "efType":I
    goto :goto_28

    .line 217
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "emails":[Ljava/lang/String;
    .restart local v6    # "pin2":Ljava/lang/String;
    .restart local v9    # "n":I
    .restart local v10    # "pair":[Ljava/lang/String;
    .restart local v11    # "param":Ljava/lang/String;
    .restart local v13    # "tokens":[Ljava/lang/String;
    :cond_62
    const/4 v1, 0x0

    aget-object v1, v10, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "key":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v10, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 220
    .local v14, "val":Ljava/lang/String;
    const-string/jumbo v1, "tag"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 221
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    .line 222
    :cond_80
    const-string/jumbo v1, "number"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 223
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    .line 224
    :cond_90
    const-string v1, "emails"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 226
    const/4 v5, 0x0

    goto :goto_35

    .line 227
    :cond_9a
    const-string/jumbo v1, "pin2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_35

    .line 232
    .end local v7    # "key":Ljava/lang/String;
    .end local v10    # "pair":[Ljava/lang/String;
    .end local v11    # "param":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/String;
    :cond_aa
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 233
    const/4 v1, 0x0

    .line 245
    :goto_b1
    return v1

    .line 236
    :cond_b2
    const/16 v1, 0x6f3b

    if-ne v2, v1, :cond_be

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 237
    const/4 v1, 0x0

    goto :goto_b1

    :cond_be
    move-object/from16 v1, p0

    .line 240
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 241
    .local v12, "success":Z
    if-nez v12, :cond_c8

    .line 242
    const/4 v1, 0x0

    goto :goto_b1

    .line 245
    :cond_c8
    const/4 v1, 0x1

    goto :goto_b1

    .line 183
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_26
        :pswitch_5f
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_22
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 96
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 111
    const/4 v5, 0x0

    .line 115
    .local v5, "pin2":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 116
    .local v7, "match":I
    packed-switch v7, :pswitch_data_6a

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_24
    const/16 v1, 0x6f3a

    .line 131
    .local v1, "efType":I
    :goto_26
    const-string/jumbo v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "number":Ljava/lang/String;
    move-object v0, p0

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 136
    .local v9, "success":Z
    if-nez v9, :cond_46

    .line 162
    :goto_3b
    return-object v4

    .line 122
    .end local v1    # "efType":I
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v9    # "success":Z
    :pswitch_3c
    const/16 v1, 0x6f3b

    .line 123
    .restart local v1    # "efType":I
    const-string/jumbo v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    goto :goto_26

    .line 140
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v9    # "success":Z
    :cond_46
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "content://icc/"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v6, "buf":Ljava/lang/StringBuilder;
    packed-switch v7, :pswitch_data_72

    .line 152
    :goto_50
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "resultUri":Landroid/net/Uri;
    move-object v4, v8

    .line 162
    goto :goto_3b

    .line 143
    .end local v8    # "resultUri":Landroid/net/Uri;
    :pswitch_5e
    const-string v0, "adn/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 147
    :pswitch_64
    const-string v0, "fdn/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 116
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_3c
    .end packed-switch

    .line 141
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_64
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_22
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 87
    :goto_28
    return-object v0

    .line 84
    :pswitch_29
    const/16 v0, 0x6f3b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_28

    .line 87
    :pswitch_30
    const/16 v0, 0x6f49

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_28

    .line 79
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_22
        :pswitch_29
        :pswitch_30
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 18
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 251
    const/4 v6, 0x0

    .line 255
    .local v6, "pin2":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 256
    .local v8, "match":I
    packed-switch v8, :pswitch_data_58

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot insert into URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_23
    const/16 v1, 0x6f3a

    .line 271
    .local v1, "efType":I
    :goto_25
    const-string/jumbo v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "number":Ljava/lang/String;
    const/4 v7, 0x0

    .line 274
    .local v7, "emails":[Ljava/lang/String;
    const-string/jumbo v0, "newTag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "newTag":Ljava/lang/String;
    const-string/jumbo v0, "newNumber"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "newNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "newEmails":[Ljava/lang/String;
    move-object v0, p0

    .line 278
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 281
    .local v10, "success":Z
    if-nez v10, :cond_56

    .line 282
    const/4 v0, 0x0

    .line 285
    :goto_4b
    return v0

    .line 262
    .end local v1    # "efType":I
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "newTag":Ljava/lang/String;
    .end local v5    # "newNumber":Ljava/lang/String;
    .end local v7    # "emails":[Ljava/lang/String;
    .end local v9    # "newEmails":[Ljava/lang/String;
    .end local v10    # "success":Z
    :pswitch_4c
    const/16 v1, 0x6f3b

    .line 263
    .restart local v1    # "efType":I
    const-string/jumbo v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    goto :goto_25

    .line 285
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "newTag":Ljava/lang/String;
    .restart local v5    # "newNumber":Ljava/lang/String;
    .restart local v7    # "emails":[Ljava/lang/String;
    .restart local v9    # "newEmails":[Ljava/lang/String;
    .restart local v10    # "success":Z
    :cond_56
    const/4 v0, 0x1

    goto :goto_4b

    .line 256
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_23
        :pswitch_4c
    .end packed-switch
.end method
